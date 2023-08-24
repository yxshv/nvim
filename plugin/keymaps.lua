local keypairs = {
	['('] = ')',
	['['] = ']',
	['{'] = '}',
	['"'] = '"',
	["'"] = "'"
}

for key, value in pairs(keypairs) do
	vim.keymap.set("i", key, key .. value .. "<esc>i")
end
