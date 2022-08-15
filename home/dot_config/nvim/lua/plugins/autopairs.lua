local loaded, autopairs = pcall(require, "nvim-autopairs")
if not loaded then
  return
end

autopairs.setup {}
