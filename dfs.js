const dfs = function(node, targetNode) {
    if (node === null) {
        return;
    }

    if (node === targetNode) {
        return node
    }
    result = []
    result.push(node)
    dfs(node.left)
    dfs(node.right)
}