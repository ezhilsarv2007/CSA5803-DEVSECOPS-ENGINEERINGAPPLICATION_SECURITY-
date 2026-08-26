library(DiagrammeR)
grViz("
digraph G {
  rankdir=LR
  Developer -> Git -> IaC -> Cloud -> Secure_Application
}
")