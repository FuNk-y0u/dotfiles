vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		"navarasu/onedark.nvim",
		as = 'onedark',
		config = function() 
			vim.cmd('colorscheme onedark')
		end
	}
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('nvim-treesitter/playground')
	use ('ThePrimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
    use {'nvim-tree/nvim-tree.lua', config = function() 
        require("nvim-tree").setup()
    end}
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    use {"folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup()
        end
    }
end)
