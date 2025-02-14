-- VIM BINDINGS
local vim = vim
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('n', '<leader>w', ':w<CR><C-c>')

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', 'n', 'n<CR>zzzv', opts)
vim.keymap.set('n', 'N', 'N<CR>zzzv', opts)


vim.keymap.set({ 'n', 'v' }, '<S-j>', '5j')
vim.keymap.set({ 'n', 'v' }, '<S-k>', '5k')

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

--removes the highlight after search
vim.keymap.set("n", "<Esc>", "<Esc>:noh<CR>", opts)
vim.keymap.set("n", "<Leader>j", "J", { desc = "Join Lines" })

local M = {}
-- Window split and move commands
M.window = {
    vsplit = function()
        vim.fn.VSCodeNotify("workbench.action.splitEditorRight")
    end,
    split = function()
        vim.fn.VSCodeNotify("workbench.action.splitEditorDown")
    end,
    moveLeft = function()
        vim.fn.VSCodeNotify("workbench.action.focusLeftGroup")
    end,
    moveDown = function()
        vim.fn.VSCodeNotify("workbench.action.focusBelowGroup")
    end,
    moveUp = function()
        vim.fn.VSCodeNotify("workbench.action.focusAboveGroup")
    end,
    moveRight = function()
        vim.fn.VSCodeNotify("workbench.action.focusRightGroup")
    end,
    increaseSize = function()
        vim.fn.VSCodeNotify("workbench.action.increaseViewSize")
    end,
    decreaseSize = function()
        vim.fn.VSCodeNotify("workbench.action.decreaseViewSize")
    end,
    zenMode = function()
        vim.fn.VSCodeNotify("workbench.action.toggleZenMode")
    end,
}

vim.keymap.set("n", "<leader>v", M.window.vsplit, { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>s", M.window.split, { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>z", M.window.zenMode, { desc = "Toggle Zen Mode" })
vim.keymap.set("n", "<C-h>", M.window.moveLeft, { desc = "Move Left (Window)" })
vim.keymap.set("n", "<C-j>", M.window.moveDown, { desc = "Move Down (Window)" })
vim.keymap.set("n", "<C-k>", M.window.moveUp, { desc = "Move Up (Window)" })
vim.keymap.set("n", "<C-l>", M.window.moveRight, { desc = "Move Right (Window)" })
vim.keymap.set("n", "<S-m>", M.window.increaseSize, { desc = "Increase Size (Window)" })
vim.keymap.set("n", "<S-n>", M.window.decreaseSize, { desc = "Decrease Size (Window)" })

-- Harpoon Keymaps
M.harpoon = {
    addEditor = function()
        vim.fn.VSCodeNotify("vscode-harpoon.addEditor")
    end,
    editorQuickPick = function()
        vim.fn.VSCodeNotify("vscode-harpoon.editorQuickPick")
    end,
    editEditors = function()
        vim.fn.VSCodeNotify("vscode-harpoon.editEditors")
    end,
    gotoEditor1 = function()
        vim.fn.VSCodeNotify("vscode-harpoon.gotoEditor1")
    end,
    gotoEditor2 = function()
        vim.fn.VSCodeNotify("vscode-harpoon.gotoEditor2")
    end,
    gotoEditor3 = function()
        vim.fn.VSCodeNotify("vscode-harpoon.gotoEditor3")
    end,
    gotoEditor4 = function()
        vim.fn.VSCodeNotify("vscode-harpoon.gotoEditor4")
    end,
    gotoEditor5 = function()
        vim.fn.VSCodeNotify("vscode-harpoon.gotoEditor5")
    end,
    gotoEditor6 = function()
        vim.fn.VSCodeNotify("vscode-harpoon.gotoEditor6")
    end,
    gotoEditor7 = function()
        vim.fn.VSCodeNotify("vscode-harpoon.gotoEditor7")
    end,
    gotoEditor8 = function()
        vim.fn.VSCodeNotify("vscode-harpoon.gotoEditor8")
    end,
    gotoEditor9 = function()
        vim.fn.VSCodeNotify("vscode-harpoon.gotoEditor9")
    end,
}

vim.keymap.set({ "n", "v" }, "<leader>ha", M.harpoon.addEditor)
vim.keymap.set({ "n", "v" }, "<leader>ho", M.harpoon.editorQuickPick)
vim.keymap.set({ "n", "v" }, "<leader>he", M.harpoon.editEditors)
vim.keymap.set({ "n", "v" }, "<leader>ha", M.harpoon.gotoEditor1)
vim.keymap.set({ "n", "v" }, "<leader>hs", M.harpoon.gotoEditor2)
vim.keymap.set({ "n", "v" }, "<leader>hd", M.harpoon.gotoEditor3)
vim.keymap.set({ "n", "v" }, "<leader>hf", M.harpoon.gotoEditor4)
vim.keymap.set({ "n", "v" }, "<leader>h5", M.harpoon.gotoEditor5)
vim.keymap.set({ "n", "v" }, "<leader>h6", M.harpoon.gotoEditor6)
vim.keymap.set({ "n", "v" }, "<leader>h7", M.harpoon.gotoEditor7)
vim.keymap.set({ "n", "v" }, "<leader>h8", M.harpoon.gotoEditor8)
vim.keymap.set({ "n", "v" }, "<leader>h9", M.harpoon.gotoEditor9)


M.tab = {
    close = function()
        vim.fn.VSCodeNotify("workbench.action.closeActiveEditor")
    end,
    moveRight = function()
        vim.fn.VSCodeNotify("workbench.action.nextEditorInGroup")
    end,
    moveLeft = function()
        vim.fn.VSCodeNotify("workbench.action.previousEditorInGroup")
    end,
    new = function()
        vim.fn.VSCodeNotify("workbench.action.newEditor")
    end,
    only = function()
        vim.fn.VSCodeNotify("workbench.action.closeOtherEditors")
    end,
}

vim.keymap.set("n", "<Leader>tt", M.tab.new, { desc = "New Tab" })
vim.keymap.set("n", "<Leader>to", M.tab.only, { desc = "Tab Only" })
vim.keymap.set("n", "<leader>q", M.tab.close, { desc = "Close Tab" })
vim.keymap.set("n", "<S-l>", M.tab.moveRight, { desc = "Move Tab Right" })
--
-- Other (VS Code)
M.other = {
    writeQuit = function()
        vim.fn.VSCodeNotify("workbench.action.files.save")
        vim.fn.VSCodeNotify("workbench.action.closeActiveEditor")
    end,
    showAllEditors = function()
        vim.fn.VSCodeNotify("workbench.action.showAllEditors")
    end,
    clearSearchHighlight = function()
        vim.cmd("noh") -- Neovim command
    end,
    nextDiagnostic = function()
        vim.fn.VSCodeNotify("editor.action.marker.next")
    end,
    prevDiagnostic = function()
        vim.fn.VSCodeNotify("editor.action.marker.prev")
    end,
}

-- Key Mappings (Normal Mode)
vim.keymap.set("n", "[d", M.other.prevDiagnostic, { desc = "Previous Diagnostic" })
vim.keymap.set("n", "]d", M.other.nextDiagnostic, { desc = "Next Diagnostic" })
vim.keymap.set("n", "<leader>p", M.other.showAllEditors, { desc = "Show All Editors" })
vim.keymap.set("n", "<leader>wq", M.other.writeQuit, { desc = "Write and Quit" })
vim.keymap.set("n", "<leader>/", M.other.clearSearchHighlight, { desc = "Clear Search Highlight" })


-- General Editor Actions (VS Code)
M.editor = {
    formatDocument = function()
        vim.fn.VSCodeNotify("editor.action.formatDocument")
    end,
    quickFix = function()
        vim.fn.VSCodeNotify("editor.action.quickFix")
    end,
    rename = function()
        vim.fn.VSCodeNotify("editor.action.rename")
    end
}

vim.keymap.set("n", "<leader>f", M.editor.formatDocument, { desc = "Format Document" })
vim.keymap.set("n", "<leader>ca", M.editor.quickFix, { desc = "Quick Fix" })
vim.keymap.set("n", "<leader>re", M.editor.rename, { desc = "Rename Symbol" })
