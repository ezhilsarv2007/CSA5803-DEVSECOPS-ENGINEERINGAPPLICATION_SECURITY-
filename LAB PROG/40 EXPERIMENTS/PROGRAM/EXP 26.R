library(DiagrammeR)
grViz("
digraph G {
  Start -> Security_Gate
  Security_Gate -> Deploy [label='PASS']
  Security_Gate -> Reject [label='FAIL']
}
")