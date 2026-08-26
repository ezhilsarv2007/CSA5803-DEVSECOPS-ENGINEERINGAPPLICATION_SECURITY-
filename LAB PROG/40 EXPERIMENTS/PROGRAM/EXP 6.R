library(DiagrammeR)
grViz("
digraph G {
  rankdir=LR
  Code -> Security_Check -> Test -> Build -> Deploy
}
")