# Claudi Lleyda Moltó
# NIU: 1462908
# ----------
setwd("~/UAB/MSE/Data-visualitzation/Exercises/Intro-to-R/ex2/")
ls()

# ----------
A = matrix(seq(1, 17, 2), nrow = 3)
B = matrix(seq(21, 121, 20), nrow = 3, byrow = TRUE)

C = cbind(A, B)
H = rbind(A, cbind(B, 0:0))

C
H

G = rbind(A, t(B))

G

dim(C)

t(C)[4,3]
#C[3,4]

G[3,]
G[,2]

C[2:3, 1:4]

arr <- array(1:32, c(4, 4, 2))

arr[2, 4, 1]
arr[1, 3, 2]

arr[2, 4, 1] + arr[1, 3, 2]

arr[2,,2]

# ----------
library(MASS)

list.1 <- list(w = matrix(0:3, nrow = 1),
               B = matrix(rnorm(9), nrow = 3),
               treatment = anorexia)

sublist <- list.1[2:3]
sublist$B
solve(sublist$B)

