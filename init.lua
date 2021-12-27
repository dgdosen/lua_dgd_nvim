local function foo()

  vim.cmd("vsplit | terminal")
  local command = ':call jobsend(b:terminal_job_id, "echo hello world\\n")'
  vim.cmd(command)

end

return {
  foo = foo
}
