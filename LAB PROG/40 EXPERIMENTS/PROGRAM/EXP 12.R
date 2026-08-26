library(DiagrammeR)
grViz("
digraph G {
  User -> Role -> Permission -> Resource
}
")