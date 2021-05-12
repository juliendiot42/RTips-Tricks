# R interactive prompt
# options(prompt = "> ")   # default value
# options(continue = "+ ") # default value
options(continue = "... ")
options(max.print = 500)

# No scientific notation.
options(scipen = 10)

# increase number of CPU for package installation:
options(Ncpus = max(as.numeric(system("nproc", intern = TRUE)) - 2, 1))

if (interactive()) { # ! important
  .First <- function(){
    red <- function(x) paste0('\033[31m', x,'\033[39m')
    green <- function(x) paste0('\033[32m', x,'\033[39m')
    yellowItalic <- function(x) paste0('\033[33m\033[3m', x,'\033[23m\033[39m')
    blue <- function(x) paste0('\033[34m', x,'\033[39m')

    cat(paste0(
      green(paste("\nWelcome", Sys.info()["user"], "!!! - ")),
      yellowItalic(format(Sys.time(), "%a %B %d %Y, %H:%M:%S")), "\n",
      "  - ", version$version.string, "\n",
      "  - CRAN repository:\n",
      "\t",options("repos"),"\n",
      "  - Packages library path:\n",paste0("\t",.libPaths(), collapse = "\n"),"\n\n",
      "  - 'Ncpus' is \"", options("Ncpus"),"\" for packages instalations.\n",
      "  - 'q()' will not save the workspace image.\n",
      "  - Working directory: ", getwd(), "\n",
      "\n"))

    remove(red, green , yellowItalic , blue)

  }

  .Last <- function(){

    red <- function(x) paste0('\033[31m', x,'\033[39m')
    yellowItalic <- function(x) paste0('\033[33m\033[3m', x,'\033[23m\033[39m')

    cat(paste0(
      red(paste0("\nGoodbye ", system("whoami", intern = T),
                 ", see you soon ! - ")),
      yellowItalic(date()), "\n"
    ))
  }
}
