library(Rook)

app <- function(env) {
  
  req <- Request$new(env)
  
  if ("x" %in% names(req$GET())) {
    x <- as.numeric(req$GET()[["x"]])
    res <- Response$new()
    res$header("Content-type", "text-html")
    res$write(paste0("<p>If we double x, we get ", x*2, "!</p>"))
    res$finish()
  } else {
    res <- Response$new(status=400)
    res$header("Content-type", "text/html")
    res$write("<p>You need to pass in x.</p>")
    res$finish()
  }
  
}