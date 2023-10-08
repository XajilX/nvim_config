local lspconf = require'lspconfig'

require'mason-lspconfig'.setup {
    ensure_installed = {
        "rust_analyzer"
    },

    handlers = {
        function (server_name)
            lspconf[server_name].setup {}
        end,
        ["rust_analyzer"] = function()
            require'rust-tools'.setup {}
        end
    }
}

