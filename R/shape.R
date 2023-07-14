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


#' Draw a square
#'
#' This function draws a square with the specified number of rows and columns.
#'
#' @param n The number of rows and columns in the square.
#'
#' @examples
#' draw_square(5)
#'
#' @export
#'
#' @return None
draw_square <- function(n) {
  for (i in 1:n) {
    for (j in 1:n) {
      if (i == 1 || i == n || j == 1 || j == n) {
        cat("* ")
      } else {
        cat("  ")
      }
    }
    cat("\n")
  }
}

#' Draw a right triangle
#'
#' This function draws a right triangle with the specified number of rows.
#'
#' @param n The number of rows in the right triangle.
#'
#' @examples
#' draw_right_triangle(5)
#'
#' @export
#'
#' @return None
draw_right_triangle <- function(n) {
  for (i in 1:n) {
    cat(paste(rep("*", i), collapse = " "))
    cat("\n")
  }
}

#' Draw a Christmas tree
#'
#' This function draws a Christmas tree with the specified number of rows.
#'
#' @param n The number of rows in the Christmas tree.
#'
#' @examples
#' draw_christmas_tree(5)
#'
#' @export
#'
#' @return None
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

#' Print a diamond
#'
#' This function prints a diamond shape with the specified number of rows
#'
#' @param n The number of rows in the diamond
#'
#' @examples
#' print_diamond(5)
#'
#' @export
#'
#' @return None
print_diamond <- function(n) {
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
