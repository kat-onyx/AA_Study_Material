const bfs = function(rootNode, targetNode) {
    if (rootNode === null) {
        return;
    }

    let queue = [];
    queue.push(rootNode);

    while (queue.length > 0) {
        currentNode = queue[0];

        if (currentNode === targetNode) {
            return currentNode
        };

        if (current.left != null) {
            queue.push(current.left);
        };

        if (current.right != null) {
            queue.push(current.right);
        }

        queue.shift();
    }

}
