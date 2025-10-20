-- JDTLS (Java LSP) configuration
local home = vim.env.HOME
local jdtls = require("jdtls")
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = home .. "/jdtls-workspace/" .. project_name

-- Determine OS
local system_os = "linux"
if vim.fn.has("mac") == 1 then
	system_os = "mac"
elseif vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
	system_os = "win"
end

-- Fixed paths for Mason installation
local mason_path = home .. "/.local/share/nvim/mason/packages/jdtls"
local launcher_jar = vim.fn.glob(mason_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")

-- Needed for debugging
local bundles = {
	vim.fn.glob(home .. "/.local/share/nvim/mason/share/java-debug-adapter/com.microsoft.java.debug.plugin.jar"),
}
vim.list_extend(bundles, vim.split(vim.fn.glob(home .. "/.local/share/nvim/mason/share/java-test/*.jar", 1), "\n"))

local config = {
	cmd = {
		"/usr/lib/jvm/java-21-openjdk/bin/java", -- Явно указываем Java 21
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-javaagent:" .. mason_path .. "/lombok.jar",
		"-Xmx4g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"-jar",
		launcher_jar,
		"-configuration",
		mason_path .. "/config_" .. system_os,
		"-data",
		workspace_dir,
	},
	root_dir = require("jdtls.setup").find_root({
		".git",
		"mvnw",
		"gradlew",
		"pom.xml",
		"build.gradle",
		"build.gradle.kts",
	}),
	settings = {
		java = {
			home = "/usr/lib/jvm/java-21-openjdk", -- Ensure Java 21+ is here
			eclipse = { downloadSources = true },
			configuration = {
				updateBuildConfiguration = "automatic", -- Изменено на automatic для Gradle
				runtimes = {
					{
						name = "JavaSE-11",
						path = "/home/demindx/.jdks/ms-11.0.28",
					},
					{
						name = "JavaSE-21",
						path = "/usr/lib/jvm/java-21-openjdk",
						default = true,
					},
				},
			},
			-- Добавлена поддержка Gradle
			import = {
				gradle = {
					enabled = true,
					wrapper = {
						enabled = true,
					},
					version = "",
					home = "",
					java = {
						home = "/home/demindx/.jdks/ms-11.0.28", -- Java для вашего проекта
					},
					offline = {
						enabled = false,
					},
					arguments = "",
					jvmArguments = "",
					user = {
						home = "",
					},
				},
				maven = {
					enabled = true,
				},
				exclusions = {
					"**/node_modules/**",
					"**/.metadata/**",
					"**/archetype-resources/**",
					"**/META-INF/maven/**",
				},
			},
			-- Настройки для подключения библиотек из Gradle
			project = {
				referencedLibraries = {
					home .. "/.gradle/caches/modules-2/files-2.1/**/*.jar",
				},
			},
			maven = {
				downloadSources = true,
				updateSnapshots = true,
			},
			implementationsCodeLens = { enabled = true },
			referencesCodeLens = { enabled = true },
			references = { includeDecompiledSources = true },
			signatureHelp = { enabled = true },
			format = { enabled = true },
			completion = {
				favoriteStaticMembers = {
					"org.hamcrest.MatcherAssert.assertThat",
					"org.hamcrest.Matchers.*",
					"org.hamcrest.CoreMatchers.*",
					"org.junit.jupiter.api.Assertions.*",
					"java.util.Objects.requireNonNull",
					"java.util.Objects.requireNonNullElse",
					"org.mockito.Mockito.*",
				},
				importOrder = { "java", "javax", "com", "org", "sk" }, -- Добавлен sk для ваших пакетов
			},
			sources = {
				organizeImports = {
					starThreshold = 9999,
					staticStarThreshold = 9999,
				},
			},
			codeGeneration = {
				toString = {
					template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
				},
				useBlocks = true,
			},
		},
	},
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	flags = {
		allow_incremental_sync = true,
		debounce_text_changes = 150,
	},
	init_options = {
		bundles = bundles,
		extendedClientCapabilities = jdtls.extendedClientCapabilities,
	},
}

config["on_attach"] = function(client, bufnr)
	jdtls.setup_dap({ hotcodereplace = "auto" })
	require("jdtls.dap").setup_dap_main_class_configs()

	-- Полезные команды для работы с Gradle
	vim.api.nvim_buf_create_user_command(bufnr, "JdtUpdateConfig", function()
		jdtls.update_project_config()
	end, { desc = "Update JDTLS project configuration" })

	vim.api.nvim_buf_create_user_command(bufnr, "JdtJol", function()
		jdtls.jol()
	end, { desc = "Show Java Object Layout" })

	vim.api.nvim_buf_create_user_command(bufnr, "JdtBytecode", function()
		jdtls.javap()
	end, { desc = "Show bytecode" })
end

jdtls.start_or_attach(config)
