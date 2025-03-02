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

# ----------
club.points <- data.frame(Firstname = c("Alice", "Paul", "Jerry", "Thomas", "Marguerite", "Linda"),
                          Lastname = c("Ryan", "Collins", "Burke", "Dolan", "Black", "McGrath"),
                          Age = c(37, 34, 26, 72, 18, 24),
                          Gender = factor(c("F", "M", "M", "M", "F", "F")),
                          Points = c(278, 242, 312, 740, 177, 195))
pts <- club.points$Points
mean(pts)

fpoints <- club.points[club.points$Gender=="F",]
fpoints

club.points[club.points$Firstname == "Jerry"
            & club.points$Lastname == "Burke",]$Age <- 28
club.points

max(club.points[club.points$Gender=="M","Age"])

club.points[club.points$Points > 100 & club.points$Age > 30,]

# ----------
data<-read.csv("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv",
               sep = ",", na.strings = " ")

europe<-subset(data, continentExp=="Europe")
europe<-europe[!(names(data) %in% c("dateRep", "geoId",
                                    "countryterritoryCode",
                                    "continentExp"))]

names(europe)[names(europe) == "Cumulative_number_for_14_days_of_COVID.19_cases_per_100000"] <- "CumFor14DaysPer100th"


summary(subset(europe, countriesAndTerritories == "France",
               select = popData2019))


sum(subset(europe,countriesAndTerritories=="Spain")$deaths)

europe.countries<-split(europe, europe$countriesAndTerritories)


spain.april <- subset(europe, countriesAndTerritories == "Spain" & month == "4")
italy.april <- subset(europe, countriesAndTerritories == "Italy" & month == "4")

mean(spain.april$cases)
mean(italy.april$cases)

spain.august <- subset(europe, countriesAndTerritories == "Spain" & month == "8")
italy.august <- subset(europe, countriesAndTerritories == "Italy" & month == "8")

mean(spain.august$cases)
mean(italy.august$cases)

# ----------
library(readxl)

header <- c("ID", "Genre", "Weight", "Height", "Birth", "Age", "Age.group")
NAs <- c("?", "NA")

data <- read.csv("data/data.csv", header = TRUE, sep=",")
data

data.1 <- read.csv("data/data1.csv", header = TRUE, sep=",")
names(data.1) <- header
data.1

data.2 <- read.csv("data/data2.csv", header = TRUE, sep=",", na.string = NAs)
names(data.2) <- header
data.2

data.3 <- as.data.frame(read_excel("data/data3.xls", na = NAs))
data.3

data.4 <- read.csv2("data/data4.csv", header = TRUE, na.string = NAs)
data.4

data.5 <- read.csv2("data/data5.csv", header = TRUE, sep="", na.string = NAs)
data.5

