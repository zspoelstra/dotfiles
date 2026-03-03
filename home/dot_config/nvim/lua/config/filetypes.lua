vim.filetype.add({
  extension = {
    es6 = "javascript",
    mdc = "markdown",
  },
  filename = {
    [".env.development"] = "sh",
    [".env.local"] = "sh",
    [".env.production"] = "sh",
    [".env.test"] = "sh",
  },
})
