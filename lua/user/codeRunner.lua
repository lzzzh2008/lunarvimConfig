vim.g.code_runner_save_before_execute = 1
vim.g.CodeRunnerCommandMap = "{'typescript': 'node $fileName'}"

vim.keymap.set("n", "<leader>r", "<Plug>CodeRunner")
