# Shapes!
#
# a lovely package that prints shapes
#
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'


draw_square <- function(size) {
  for (i in 1:size) {
    for (j in 1:size) {
      if (i == 1 || i == size || j == 1 || j == size) {
        cat("* ")
      } else {
        cat("  ")
      }
    }
    cat("\n")
  }
}

draw_right_triangle <- function(n) {
  for (i in 1:n) {
    cat(paste(rep("*", i), collapse = " "))
    cat("\n")
  }
}

draw_christmas_tree <- function(n) {
  for (i in 1:n) {
    spaces <- n - i
    cat(paste(rep(" ", spaces), collapse = ""))
    cat(paste(rep("*", i * 2 - 1), collapse = ""))
    cat("\n")
  }

  base_spaces <- n - 1
  cat(paste(rep(" ", base_spaces), collapse = ""))
  cat("**\n")
  cat(paste(rep(" ", base_spaces), collapse = ""))
  cat("**\n")
}

print_diamond <- function(n) {
  if (n != 5) {
    stop("Number of rows must be 5 for a pentagon.")
  }

  for (i in 1:n) {
    spaces <- n - i
    cat(paste(rep(" ", spaces), collapse = ""))
    cat(paste(rep("* ", i), collapse = ""))
    cat("\n")
  }

  for (i in (n-1):1) {
    spaces <- n - i
    cat(paste(rep(" ", spaces), collapse = ""))
    cat(paste(rep("* ", i), collapse = ""))
    cat("\n")
  }
}




