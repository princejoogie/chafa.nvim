local M = {}

M.check = function()
  vim.health.report_start("chafa.nvim health check")
  if vim.fn.executable("chafa") == 1 then
    vim.health.report_ok("no issues found")
  else
    vim.health.report_error("chafa executable not found")
    vim.health.report_info("Follow installations instructions at https://hpjansson.org/chafa/download/")
  end
end

return M
