-- fuzzy find highlighted text
function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end

return {
    {
        'nvim-telescope/telescope.nvim',

        config = function ()
            require("telescope").setup {
              defaults = {
                wrap_results = true,
              },

            }

			local keymap = vim.keymap.set
			local tb = require('telescope.builtin')
			local opts = { noremap = true, silent = true }

			keymap('v', '<space>fw', function()
				local text = vim.getVisualSelection()
				tb.live_grep({ default_text = text })
			end, opts)

			keymap('v', '<space>ff', function()
				local text = vim.getVisualSelection()
				tb.git_files({ default_text = text })
			end, opts)


			keymap('v', '<space>fF', function()
				local text = vim.getVisualSelection()
				tb.find_files({ default_text = text })
			end, opts)

			keymap('v', '<space>fb', function()
				local text = vim.getVisualSelection()
				tb.find_files({ default_text = text })
			end, opts)
        end,
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
