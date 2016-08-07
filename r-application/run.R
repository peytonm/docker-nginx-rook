library(Rook)

.Call(tools:::startHTTPD, "0.0.0.0", 8080)

s <- Rhttpd$new()
s$add(RhttpdApp$new(name="r-application", app="rook-app.R"))

while (TRUE) {
  Sys.sleep(.Machine$integer.max)
}