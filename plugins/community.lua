return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- themes
  { import = "astrocommunity.colorscheme.catppuccin" },
  
  -- language packs
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.docker" }, 
  { import = "astrocommunity.pack.terraform" }, 

  -- completion
  -- { import = "astrocommunity.completion.copilot-lua"},
}
