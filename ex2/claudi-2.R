# Claudi Lleyda Moltó
# NIU: 1462908
# ----------
#setwd("~/UAB/MSE/DataVisualitzation/Exercises/ex2")
#ls()

# ----------
A <- matrix(seq(1, 17, 2), nrow = 3)
B <- matrix(seq(21, 121, 20), nrow = 3, byrow = TRUE)

C <- cbind(A, B)
H <- rbind(A, cbind(B, 0:0))

C
H

G <- rbind(A, t(B))

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
require(MASS)

list.1 <- list(w = matrix(0:3, nrow = 1),
               B = matrix(rnorm(9), nrow = 3),
               treatment = anorexia)

sublist <- list.1[2:3]
#sublist$B
sublist[[1]]
solve(sublist$B)

list.1$treatment$Treat

Name <- c("First", "Second", "Third", "Fourth", "Fith")
Prob <- c(23, 41, 32, 58, 26)

sample.df <- data.frame(Name, Prob)

list.1[[length(list.1)]] <- sample.df

list.2 <- list(nums = c(123, 423),
               chars = "Test list")

append(list.1, list.2)

# ----------
happiness <- read.table("data/example2.txt", header = TRUE)

happiness[10:18, 1:2]

selection <- c(23, 2, 5)
happiness[selection, 2]

sapply(happiness, function(x) c(summary(x), sd = sd(x)))
