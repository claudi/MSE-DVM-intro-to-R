# Claudi Lleyda Moltó
# NIU: 1462908
# ----------
setwd("~/UAB/MSE/Data-visualization/Exercises/Intro-to-R/ex1/")
ls()

# ----------
year <- 2012:2021
snow.cover <- c(47.5, 49.2, 46.0, 47.3, 48.8, 49.2, 46.9, 47.2, 46.4, 46.8)

log.snow.cover <- log(snow.cover)

plot(year, snow.cover, "l")

summary(snow.cover)

# ----------
set.seed(1462908)

x <- sample(1:6, 100, replace=TRUE)

length(x[x == 3])
x[55]
x[seq(11,19,2)]
x[x == 3] <- 1
y <- x[x > 2]
mean(sqrt(x))
z <- c(x, y)
rm(z)

# ----------
subletters <- letters[1:5]
subnums <- 1:3

paste(rep(subletters, each = 3), subnums, sep = "")
paste(subletters, rep(subnums, each = 5), sep = "")

# ----------
rincome <- scan("data/rincome.txt", character(), sep="\n", skipNul = T)

toNA = c("Don't know", "No answer", "Not applicable", "Refused")
rincome[rincome %in% toNA] <- NA

rincome.f <- factor(rincome, ordered = FALSE)
levels(rincome.f)

rincome.lv <- levels(rincome.f)
rincome.lv <- levels(relevel(factor(rincome.lv), "Lt $1000"))
rincome.lv
rincome.o <- ordered(factor(rincome, levels = rincome.lv))
summary(rincome.o)

class(rincome)
class(rincome.f)
class(rincome.lv)
class(rincome.o)

