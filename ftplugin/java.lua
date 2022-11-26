
local HOME = os.getenv('HOME')
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = HOME .. '/projects/java/workspaces/' .. project_name 
local config = {
    -- The command that starts the language server
    -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line

    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),

    cmd = {

        'java', -- '/path/to/java17_or_newer/bin/java'

        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

        '-jar', HOME .. '/toolz/LSP/jdt-language-server-1.9.0/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',

        '-configuration', HOME .. '/toolz/LSP/jdt-language-server-1.9.0/config_linux',

        '-data', workspace_dir,
    },

    root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

    -- eclipse.jdt.ls settings
    settings = {
        java = {
        }
    },

    init_options = {
        bundles = {}
    },
}

require('jdtls').start_or_attach(config)

