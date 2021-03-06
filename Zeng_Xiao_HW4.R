##Prof G - Generally, not enough documentation.

#Question 1
#a)
c(1:20) #1,2,3...20

#b)
c(20:1) #20,19...1

#c)
c(c(1:19),20,c(19:1)) 

#d) - corrected
##Prof G - There's an error in the next line
##Prof G - so I commented it out to continue
##Prof G - grading.

tmp <- c(4,6,3)   #Assigning (4,5,6) to varibale tmp
tmp

#e) 
rep(c(4,6,3),10)   #ten occurence of (4,6,3)
#f)
c(rep(c(4,6,3),10),4)   #ten occurence of (4,6,3) and one 4
#g)
c(rep(4,10),rep(6,20),rep(3,30))  #ten occurence of 4, 20 occurence of 6 and 30 occurence of 3

#Question 2
x <- seq(3,6, by = 0.1) #3,3.1...6
c(exp(x)*cos(x)) 


#Question 3
#a)
a1 <- 3*(1:12)  #3,6,9...36
a2 <- 1+(3*(0:11))    #1,4,7...34
v <- c((0.1^a1)*(0.2^a2))
v ##Prof G - added this

#b)
b <- (1:25)
v2 <- c((2^b)/b)
v2 ##Prof G - added this

#Question 4
#a)
i1 <- c(10:100)
a4 <- c(i1^3 + 4*i1^2)
sum(a4)

#b)
i2 <- c(1:25)
b4 <- (2^i2/i2+(3^i2)/(i2^2))
sum(b4)


#Question 5
#a)
q5 = c(1:30)
q6=paste ("label", q5, sep = " ", collapse = NULL)   #sep=" " gives a space between the two words
q6 ##Prof G - added this

#b)
q7=paste ("fn", q5, sep = "", collapse = NULL)
q7 ##Prof G - added this
#the paste() function concatenates vectors after converting to character. "sep" is a character string to separates the terms.



#Question 6

set.seed(50)
xVec <- sample(0:999,250,replace = T)  #sample space
yVec <- sample(0:999,250,replace = T)

x <-xVec   #Assign x and y
y <-yVec

#a)
a1 <- c(2:250)
a2 <- c(1:249)
qa<- c(y[a1]-x[a2])
qa ##Prof G - added this

#b)
b1 <- c(sin(y[a2]))  #Using the sequence from question a.
b2 <- c(cos(x[a1]))

ab <- c(b1/b2)
ab ##Prof G - added this

#c)
c1<-c(1:248)
c2<-c(2:249)
c3<-c(3:250)
qc<-c(x[c1]+2*x[c2]-x[c3])
qc ##Prof G - added this

#d)
d1 <- c(1:249)
d2 <- c(d1 + 1)

##Prof G - Produces INF result.
##Prof G - Missed a minus sign before x
qd <- c(exp(-x[d2])/(x[d1]+10))  #Corrected, added a minus sign before x
sum(qd)

#Question 7

#Getting data
set.seed(50)
xVec<-sample(0:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

#a).
y600<-yVec[yVec>600]
y600 ##Prof G - added this

#b).
which(yVec>600)  #Gives the index numbers

#c).
x600<-xVec[yVec>600]  #Gives the corresponding x values
x600 ##Prof G - Added this

#d).
c(sqrt(abs(xVec-mean(xVec))))

#e).
sum(yVec>max(yVec)-200)   #Counting how many values are True

#f).
sum(xVec%%2==0) #How many numbers in xVec are divisible by 2

#g).
xVec[order(yVec, decreasing = FALSE)]  #Sorting the numbers in the vector xVec in the order of increasing values of yVec

#h).
yVec[c(T,F,F)] #Picking the first element in every three elements to get 1,4,7...

##Question 8

1+sum(cumprod(seq(2,38,by=2)/seq(3,39,by=2)))
#cumprod() function returns the cumulative multiplication results.

##Prof G - What does this mean?
