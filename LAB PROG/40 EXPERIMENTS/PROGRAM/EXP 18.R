library(DiagrammeR)
grViz("
digraph G {
  rankdir=LR
  Application -> OWASP_Top_10 -> Risk_Classification
}
")