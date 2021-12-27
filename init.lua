print('Hello from lua_dgd_nvim')

local function foo()

  print("Hello from foo function")

  local file = vim.fn.expand("%:p")
  print ("file is " .. file)

  vim.cmd("vsplit | terminal")
  local command = ':call jobsend(b:terminal_job_id, "echo hello world xxx\\n")'
  vim.cmd(command)

end

return {
  foo = foo
}
