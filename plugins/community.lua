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
  {
    "mfussenegger/nvim-dap-python",
    enabled = true,
    dependencies = {
      -- { "theHamsta/nvim-dap-virtual-text", config = true },
    },
    config = function()
      local dap = require "dap"
      local PYTHON_DIR = ".venv/Scripts/python"

      dap.adapters.py = {
        -- name = 'py',
        type = "executable",
        command = PYTHON_DIR,
        args = { "-m", "debugpy.adapter" },
        detatched = false,
      }
      -- configurations --

      dap.configurations.python = {
        {
          name = "Launch file",
          type = "py", -- the type here established the link to the adapter definition: `dap.adapters.python`
          request = "launch",
          program = "${file}", -- This configuration will launch the current file if used.
        },
        {
          name= "Pytest: Current File",
          type= "py",
          request= "launch",
          module= "pytest",
          args= {
              "${file}",
              "-sv",
              "--log-cli-level=INFO",
              -- "--log-file=test_out.log"
          },
          console= "integratedTerminal",
        }
      }
    end
  },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.docker" }, 
  { import = "astrocommunity.pack.terraform" }, 

  -- completion
  { import = "astrocommunity.completion.copilot-lua-cmp"},
  
  -- Markdown
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim"} 
}
