createProj <- function(path, ...) {
  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # collect inputs' parameters
  params <- list(...)

  # create .R file
  file <- paste0(path, "/analysis.R")
  file.create(file)

  # create "data" dir
  if (params[["data"]]) {
    dtaDir <- paste0(path, "/data")
    dir.create(dtaDir, recursive = TRUE, showWarnings = FALSE)
  }

  # create "outputs" dir
  if (params[["out"]]) {
    outDir <- paste0(path, "/outputs")
    dir.create(outDir, recursive = TRUE, showWarnings = FALSE)
  }
}
