-- transparency
local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
    
-- colorscheme
return {
    {
	"mellow-theme/mellow.nvim",
	config = function()
	    vim.cmd.colorscheme "mellow"
	    enable_transparency()
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = 'mellow',
	}
    },
}
