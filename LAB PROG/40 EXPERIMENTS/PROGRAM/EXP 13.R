library(DiagrammeR)
grViz("
digraph G {
  rankdir=LR
  Developer -> Git -> CI -> Security_Check -> CD -> Kubernetes
}
")