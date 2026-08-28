library(DiagrammeR)
grViz("
digraph G {
  rankdir=LR
  Detect -> Classify -> Contain -> Eradicate -> Recover
}
")