class_data = read.csv('classes.csv', header = T, stringsAsFactors = F)
match(class_data$A, class_data$B, nomatch = 0)
matches = class_data$A %in% class_data$B
matches
class_data$A[matches]
quiz_class_data = read.csv('classes_test.csv', header = T, stringsAsFactors = F)
head(quiz_class_data)
quiz_class_data$A %in% quiz_class_data$B
quiz_class_data$B %in% quiz_class_data$A
quiz_class_data$B[12]
quiz_class_data$A = 'Trina' quiz_class_data$B
my_vector = c(1,2,3,4,5)
my_logical_vector = c(TRUE, TRUE, FALSE, FALSE, FALSE)
my_vector[!my_logical_vector]

quiz_matches = quiz_class_data$B %in% quiz_class_data$A
quiz_matches
quiz_class_data$B[!quiz_matches]
small_class = quiz_class_data$B[1:5]
small_class
logical_vector <- small_class[3]
small_class[logical_vector]
small_class = quiz_class_data$B[1:5]
small_class %in quiz_class_data [logical_vector]
logical_vector <- c(FALSE, FALSE, TRUE, TRUE, FALSE)
small_class[logical_vector]

class_A <- class_data[ ,c(1,2)]
class_A
soph_rows = which(class_A$A.Year == 'Sophomore')
soph_rows
sophomores = class_A[soph_rows,]

which(quiz_class_data$B.Year == 'Fifth')
tail(quiz_class_data$B)

ClassA <- which(quiz_class_data$A.Year == 'Junior')
ans <- which(grepl('Fifth'', quiz_class_data$B.Year))

length(ClassA)
length(ClassB)
sum(ClassB)
ncol(ClassA

(class_data$A.Year[1:10])
duplicates = duplicated(class_data$A.Year)
class_data$A.Year[1:10]
duplicates[1:10]
class_data$A[!duplicates]

dupliwala <- duplicated(quiz_class_data)
quiz_class_data$A[dupliwala]
!dupliwala

new_class <- c(quiz_class_data$A, "Carl", "Alexis", "Jeffrey", "Ben", "Joshua")
dupliwali <- duplicated(new_class)
new_class[dupliwali]

# Hashtag is the character for comments in R. Anything written after a hashtag in R is not run
# For loop
                   for(variable in sequence) {
                   #do expression(s)#
                   }
for(i in 1:5) {
  print(i)
}
evens = c(2,4,5,6,8,10)
for (i in evens)
{print (i)
}
bad_numbers = c(4,23, 55, 89)
1 %in% bad_numbers
4 %in% bad_numbers

for(i in 1:100) {
  if(i %in% bad_numbers) {
    #do nothing so we'll just leave it blank
} else {
  print(i)
}

new_startup_data <- read.csv('second_crunchbase.csv', header = T, stringsAsFactors = F)
getwd
getwd()
which(is.na(startup_data$founded_year))
is.na(startup_data$last_funding_at)

interval <- startup_data$founded_year[1:50]
for (i in interval)
    { is.na(interval[i]}
{
  print("NA")
}
else 
  { if (interval[i] < 2009)
{
  print("Late Stage")
}
else
{
  print("Not available")
i == i+1
}
  }
years = new_startup_data$founded_year[1:50]
for(i in years) {
  if(is.na(i)) {
    print('Information Not Available')
  } else if(i > 2009) {
    print('Early Stage')
  } else {
    print('Late Stage')
  }
}
adder = function(n) {
  value = n + 1
  return(value)
}
adder(5)
adder(232)

year_tag = function(dataset, rows=1:50) {
  years = dataset$founded_year[rows]
  for(i in years) {
    if(is.na(i)) {
      print('Information Not Available')
    } else if(i > 2009) {
      print('Early Stage')
    } else {
      print('Late Stage')
    }
  }
}
year_tag(new_startup_data)

array1 <- (1:100)
fizzbuzz = function(array)
  {
  for(i in array1)
    
    if 
  
  i%%15 = 0 
      {
      print( "FizzBuzz")
      }
    else 
    {if i%%5 = 0
      {
      print("Buzz")
      }
    else
    {if i%%3 = 0
    {
    print("Fizz")
    
    }}
      }}
  }
  }
}


a = c(1,2,3,4,5)
b = c("dog", "cat", "mouse")
c = c(T, F, T, T)
mylist = list(a,b,c)


mylist = list(a, b, c, num_check)


mylist[[1]]
class(mylist[[1]])


mylist = mylist[-]
mylist
for(i in mylist) {
  print(i[1])
}

mylist = mylist[-4]

for(i in mylist) {
  print(i[1])
}

startup_list = list(startup_data$region, startup_data$funding_rounds, startup_data$market)

head(startup_list)

list(startup_data$funding_rounds)
mylist <- list (a = 1:5, b = "Hi There", c = function(x) x * sin(x))
mylist[1]
mylist[[1]]

install.packages('datasets')
library('datasets')

head(iris)


mylist$d <- NULL

class(iris$Species)

iris$Species


help(apply)


apply(iris[ ,1:4], 2, mean)

mean(iris$Sepal.Length)


apply(iris[,1:4], 2, mean)
cities = c("New York", "San Francisco", "Los Angeles", "Boston", "London")

ny = startup_data[which(startup_data$city == "New York"), ]
sf = startup_data[which(startup_data$city == "San Francisco"), ]
la = startup_data[which(startup_data$city == "Los Angeles"), ]
bo = startup_data[which(startup_data$city == "Boston"), ]
uk = startup_data[which(startup_data$city == "London"), ]

mean(sf$funding_rounds)
mean(sf$founded_year, na.rm = TRUE)

rounds = c(mean(ny$funding_rounds), mean(sf$funding_rounds), mean(la$funding_rounds), mean(bo$funding_rounds), mean(uk$funding_rounds))
year = c(mean(ny$founded_year, na.rm = TRUE), mean(sf$founded_year, na.rm = TRUE), mean(la$founded_year, na.rm = TRUE), mean(bo$founded_year, na.rm = TRUE), mean(uk$founded_year, na.rm = TRUE))
?
1
2
3
bad_city_data = data.frame(rounds, year)
rownames(bad_city_data) = cities
bad_city_data

city_subsets = list()

for(i in cities) {
  city_subsets[[i]] = startup_data[which(startup_data$city == i), ]
}

city_data = sapply(city_subsets, function(x) c(mean(x$funding_rounds), mean(x$founded_year, na.rm = TRUE)))


reservation<- read.csv('Reservation_Data_Seed.csv')
abandoned<- read.csv('Abandoned_Data_Seed.csv', stringsAsFactors = F)

reservation

test1 <- subset(reservation, reservation$Test_Control == 'test')
nrow(test1)
nrow(reservation)

test2 <- reservation[reservation$Test_Control == "test", ]
nrow(test2)
test2

resca <- reservation[reservation$Test_Control != 'test',]
nrow(resca)

resca[-50:-1,]
reservation


del<- read.csv('c:/users/vibhor/downloads/delivery_data_problem.csv')
setwd('c:/users/vibhor/downloads')
getwd()
nrows(del)
nrow(del)
head(del)
head(del[2355,]$purchase_price)
round(mean(del[del$rating_by_customer == 1,]$duration))
index = as.logical(del$reassigned)
index
del$reassigned

reassigned <- del[del$reassigned >= 1,]
nrow(reassigned)

nr <- del[del$reassigned >= 0,]
nrow(nr)                  

(mean(del[del$reassigned >= 1,]$duration) - mean(del[del$reassigned == 0,]$duration))


transform(del$rating_by_customer, )
mean(del[del$reassigned >= 1,]$duration) - mean(del$duration)
newdel <- na.omit(del)


apply(del$rating_by_customer,2, function(x)  del$rating_by_customer ==  'None' <-0 )


del[is.na(del)] <- 0

help(transform)
sapply[del$rating_by_customer, 2, as.numeric]
mean(del[del$reassigned >= 1,]$rating_by_customer)

delc <- as.character(del$rating_by_customer)

del$rating_by_customer[del$rating_by_customer == 'None' ] <- 0

class(del$rating_by_customer)


mean(del[del$reassigned == 0,]$duration)

fctr.cols <- sapply(del, is.factor)
del[, fctr.cols] <- sapply(del[, fctr.cols], as.character)

sapply(del,mode)
transform(del, rating_by_customer <- as.numeric(as.character(rating_by_customer)))
sapply(del,mode)

del$rating_by_customer <- as.numeric(as.character(del$rating_by_customer))

del$rating_by_customer[ del$rating_by_customer == 0] <-NA

mean(del$rating_by_customer, na.rm = TRUE)
mean(del[del$reassigned >= 1,]$rating_by_customer, na.rm = TRUE)
mean(del[del$reassigned == 0,]$rating_by_customer, na.rm = TRUE)

mean(del[del$reassigned >= 1,]$duration) - mean(del[del$reassigned == 0,]$duration)

del$date_created_local[1:1]
del$date1<- substr(del$date_created_local, 1, 10)
head(del$date1)

install.packages('zoo')
install.packages('xts')
install.packages('quantmod')

kings <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
kingstimeseries <- ts(kings)
 kingstimeseries
 plot.ts(kingstimeseries)
 install.packages('TTR')
library ('TTR')
 kingstimeseriesSMA8 <- SMA(kingstimeseries,n=8)
 plot.ts(kingstimeseriesSMA8)
 
 install.packages('ggplot2')
 library('ggplot2')
 
 qplot(del$rating_by_customer,del$date1)
 
 
head(abandoned)[1,]


sapply(abandoned, mode)
sapply(reservation, mode)

head(abandoned$Caller_ID)
head(reservation$Caller_ID)

fc.cols <- sapply(abandoned, is.factor)
abandoned[, fc.cols] <- sapply(abandoned[, fc.cols], as.character)

fc.cols1 <- sapply(reservation, is.factor)
reservation[, fc.cols1] <- sapply(reservation[, fc.cols1], as.character)

sapply(abandoned, mode)
sapply(reservation, class)

s<- merge(abandoned, reservation, by.abandoned = )

install.packages("RSQLite")
library('RSQLite')
install.packages('rcpp')
install.packages('Rcpp')
library(Rcpp)
install.packages('RSQLite')
library('RSQLite')
install.packages('RMySQL')
d1 <- abandoned$Caller_ID
d2 <- match(abandoned$Incoming_Phone,reservation$Incoming_Phone)
abandoned$newrow <- reservation$Incoming_Phone[d2]
drop(reservation$newrow)
reservation$Caller_ID

library('RMySQL')
mydb = dbConnect(MySQL(), user='root', password='1234', dbname='sys', host='127.0.0.1')
dbListTables(mydb)
dbListFields(mydb, 'Eventplanline')

install.packages('plotly')
