local loaded, neo_tree = pcall(require, "neo-tree")
if not loaded then
  return
end

vim.g.neo_tree_remove_legacy_commands = 1

neo_tree.setup {}
