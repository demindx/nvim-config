local home = vim.env.HOME
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = home .. "/jdtls-workspace/" .. project_name
local system_os = "linux"
if vim.fn.has("mac") == 1 then
	system_os = "mac"
elseif vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
	system_os = "win"
end
local mason_path = home .. "/.local/share/nvim/mason/packages/jdtls"
local launcher_jar = vim.fn.glob(mason_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")

local java25 = "/usr/lib/jvm/java-25-openjdk/"
local java21 = "/usr/lib/jvm/java-21-openjdk/"
---@type vim.lsp.Config
return {
	cmd = {
		java25 .. "bin/java",
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

	root_markers = {
		".git",
		"mvnw",
		"gradlew",
		"pom.xml",
		"build.gradle",
		"build.gradle.kts",
	},
	settings = {
		java = {
			home = java25,
			eclipse = { downloadSources = true },
			configuration = {
				updateBuildConfiguration = "automatic",
				runtimes = {
					{
						name = "JavaSE-11",
						path = "/home/demindx/.jdks/ms-11.0.28",
					},
					{
						name = "JavaSE-25",
						path = java25,
						default = true,
					},
					{
						name = "JavaSE-21",
						path = java21,
					},
				},
			},

			import = {
				gradle = {
					enabled = true,
					wrapper = {
						enabled = true,
					},
					version = "",
					home = "",
					java = {
						home = "/home/demindx/.jdks/ms-11.0.28",
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
}
