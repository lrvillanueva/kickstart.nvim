return {
  init_options = { hostInfo = "neovim" },
  cmd = { "/Users/leandrovillanueva/.local/share/nvim/mason/bin/typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
  single_file_support = true,
}
