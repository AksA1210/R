library(igraph)

# Create an adjacency matrix for the graph
adj_matrix <- matrix(c(0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0), nrow = 4, ncol = 4)

# Convert the adjacency matrix to an adjacency list
adj_list <- graph.adjacency(adj_matrix, mode = "undirected", diag = FALSE)

# Print the adjacency list
adj_list


#Implement a function to add an edge between 2 vertices in the graph
print("--Adding an edge--")
addEdge <- function(adj_list, u, v) {
  adj_list[[u]] <- c(adj_list[[u]], v)
  adj_list[[v]] <- c(adj_list[[v]], u)
  return(adj_list)
  
}

v1<-as.numeric(readline(("Enter the first vertex : ")))
v2<-as.integer(readline(("Enter the second vertex : ")))

final_list<-addEdge(adj_list,v1,v2)
final_list



# R function to perform DFS traversal on a graph starting from a specific vertex.

# Create a graph
graph <- graph(c(1,2,1,3,2,4,3,4), directed=FALSE)

# Define the DFS function
dfs <- function(graph, start_vertex) {
  print("--DFS--")
  #track of vertices to visit
  stack <- start_vertex
  # visited vertices
  visited <- numeric(0)
  # While there are still vertices to visit
  while (length(stack) > 0) {
    # Get the next vertex to visit
    vertex <- stack[length(stack)]
    # Remove the vertex from the stack
    stack <- stack[-length(stack)]
    # vertex has not been visited
    if (!(vertex %in% visited)) {
      # Mark the vertex as visited
      visited <- c(visited, vertex)
      # Add the unvisited neighbors of the vertex to the stack
      stack <- c(stack, neighbors(graph, vertex)[!(neighbors(graph, vertex) %in% visited)])
    }
  }
  # Return the visited vertices
  return(visited)
}

# Call the DFS function with the desired start vertex
dfs(graph, 1)

