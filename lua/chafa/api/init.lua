local async = require "plenary.async"

local M = {}

---@diagnostic disable-next-line: unused-local
M.get_ascii_data_sync = function(buf_path, ascii_width, ascii_height, opts, callback)
	local command = { "chafa", buf_path, "--size", ascii_width .. "x" .. ascii_height }

	vim.fn.jobstart(command, {
		stdout_buffered = true,
		on_stdout = function(_, data)
			if data then
				table.remove(data)
				callback(data)
			end
		end,
	})
end

M.get_ascii_data = function(...)
	return async.wrap(M.get_ascii_data_sync, 5)(...)
end

return M
