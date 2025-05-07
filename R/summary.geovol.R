summary.geovol <- function (object, ...)
{
  
  cat("\n")
  cat("\n")
  cat("Date:", object$date, "\n")
   cat("Model: GEOVOL \n")
  cat("Method: maximization-maximization (algorithm stopped after", object$iter, 
      "iterations) \n")
  cat("No. of observations:", object$n, "\n")
  cat("No. of time series:", object$m, "\n")
  cat("\n")  
  cat("Estimated GEOVOL factor (", sep = "",20," most extreme values): \n")
  cat("\n")  
  x_ordered <- object$x[order(object$x, decreasing = TRUE),]
  x.extreme <- as.matrix(x_ordered[1:20])
  rownames(x.extreme) <- paste((object$dates[order(object$x, decreasing = TRUE)])[1:20])
  colnames(x.extreme) <- "GEOVOL"
  print(round(x.extreme, 4))
  cat("\n")
  cat("Estimated GEOVOL loadings: \n")
  cat("\n")  
  print(round((object$s), 4))
  cat("\n")
}


