# This is an R script! This is where you'll write, save, and execute R code.
# Whenever you want to run one/more line(s) of code, just highlight them,
# right click with you mouse, and click "Run line or selection". Try it here:

2 + 2

################################################## LESSON 1: Comments #########################################
# To add a comment to your R script, just precede it with a pound symbol: '#'
# Any code that appears after a '#' will be ignored by R.
# This will allow you to add certain notes, such as what certain parts of the code do,
# or what certain variables represent. Try running the following line:

  2+2  # This should equal four. Hopefully.
# 2+2   This line won't give an output, because the '#' symbol is before the calculation.

################################################ LESSON 2: Variables ########################################
# You can save pretty much anything as a variable for later use in the code, 
# such as a calculation, a list, or even a function! 
# Note that R is case sensitive (capital letters matter!), 
# and your variables must start with a letter. Try saving the following as variables:

variable <- 1 + 1
variable   # Entering the name of a variable into R will output the variable itself.
Variable <- 2 + 2
Variable
Variable.doubled <- Variable + Variable   # You can use variables to define other variables, as well as use them in calculations.

Number.4 <- 2 + 2   # This variable name is fine, R is okay with periods in variable names.
Number_4 <- 2 + 2   # This variable name is fine, R is okay with underscores in variable names.
Number-4 <- 2 + 2   # This variable name is NOT fine. No hyphens allowed.
4.Number <- 2 + 2   # This variable name is NOT fine. Variables MUST start with a letter (not a number or period/underscore).

# You can define a variable with a leftwards-facing-arrow (<-), or with an equals sign (=):

Number.4 <- 2 + 2
Number.4 = 2 + 2

# Both are interchangeable, but for this demonstration I'll be using the arrow symbol (<-).

########################################## LESSON 3: Mathematical Operations ###################################

# R is capable of performing pretty much any mathematical operation/function you'll ever need.
# Some are performed with symbols in R, such as the most basic ones:

Addition <- 2 + 2
Subtraction <- 2 - 2
Multiplication <- 2*2
Division <- 2/2
Exponentiation <- 2^2

# Equalities/Inequalities:
2 + 2 == 3 + 1		# Is the left quantity equal to the right quantity?
2 < 3   # Is the left quantity less than the right quantity?
2 >= 3   # Is the left quantity greater-than-or-equal-to the right quantity?

Remainder <- 107%%10   # What is the remainder if we subtract the largest multiple of 10 from 107 possible?

# Others are performed with functions, which means they require 1+ arguments in parentheses:

Square.Root <- sqrt(2)   # Takes the square root of whatever value is inside the parentheses.
Factorial <- factorial(2)
Flooring.function <- floor(2.00001)
Number.of.Combinations <- choose(5,2)

# You can also combine functions in the same expression, just be careful with the order of operations!
sqrt((10+3)*2)   # The square root of (13*2)
sqrt(10+3*2)     # The square root of (10+6)

# If you can't find the specific function you need, just Google "____ function in R."
# If you need a hint/reminder about how a function works, just enter "help()" with the function name!

help(sqrt)
?mean   # You can also precede a function name with a question mark, this does the same thing as "help()"

########################################## LESSON 4: Statistical operations ####################################################

A <- rnorm(1000, mean=0, sd=1)   # Randomly draws 1000 values from a normal distribution with a mean of 0 and a standard deviation of 1.
A

mean(A)   # What is the mean?
median(A)   # What is the median?
var(A)   # What is the variance?
sd(A)   # What is the standard deviation?

hist(A, breaks=10) # Create a histogram of A with 10 bins


########################################## LESSON 5: Data Types (Vectors) ####################################################

# There are many different types of data in R:

Logical <- TRUE   # TRUE and FALSE.
String <- "Hello"   # A string of characters, closed in quotation marks. Usually for naming things.
Vector <- c(55,7,23)    # This is a sequence of 1+ pieces of data.
Vector

# Vectors are the most common data type you'll encounter.
# You can reference specific entries in a vector by putting the position (called "index")
# of that value in brackets following the variable's name:

Vector[1]   # The first value of Vector
Vector[2]   # The second value of Vector
Vector[3]   # The third value of Vector

# You can also reference multiple entries by connecting them with a colon (:).

Vector[1:2]   # The first two elements of Vector
Vector[1:3]   # The first three elements of Vector
Vector[2:3]   # The second/third elements of Vector
Vector[3:1]   # The third through first elements of Vector

# Mathematical operations can be performed on vectors. Most of the time, 
# this will be performed on the vector one element at a time:

A <- c(1,2,3,4,5)
A
A + 1   # Adds 1 to every element of A
A*2   # Multiplies every element of A by 2
sqrt(A)   # Takes the square root of every element of A

# When you have two vectors of the same length (same number of elements), 
# operations will be performed element-by-element.
B <- c(10,20,30,40,100)
A + B   # (1+10), (2+20), (3+30), (4+40), (5+100)
A*B     # (1*10), (2*20), (3*30), (4*40), (5*100)

# However, if the vectors are of different lengths, R doesn't know what to do.
C <- c(0,1)
A*C 

# You can always figure out how many elements are in a vector using length():
length(A) # A has 5 elements (1 through 5).
length(C) # C has 2 elements (0 and 1).

########################################## LESSON 6: Data Types (Matrices) ####################################################

# A matrix is just like a mathematical matrix, it's a 2-dimensional (square/rectangle)
# array of values. To make a matrix, you need to tell R what values you want to be turned
# into a matrix, as well as how many rows/columns you want it to have.

A <- c(1,2,3,4)

matrix(A, nrow=2)   # Turn A into a matrix with 2 rows.
matrix(A, ncol=1)   # Turn A into a matrix with 1 column.
matrix(A, ncol=3)   # R doesn't like it when you try to evenly divide 4 elements into 3 columns.

# Notice that by default R will place elements from top-to-bottom column by column.
# If you want R to put the elements into place row-by-row, you need to tell it so.

matrix(A, nrow=2)   # R fills the first column, then the second column.
matrix(A, nrow=2, byrow=TRUE)   # R fills the first row, then the second row.

# Indexing certain values in a matrix is similar to indexing a vector, except now you have to index
# A ROW NUMBER, followed by A COLUMN NUMBER.

A <- matrix(A, nrow=2, byrow=TRUE)
A
A[1,1]   # The first row, first column of A.
A[1,2]   # The first row, second column of A.
A[2,1]   # The second row, first column of A.
A[2,2]   # The second row, second column of A.

A[1,]   # Because the second argument is blank, R gives you the whole first row of A.
A[,2]   # Because the first argument is blank, R gives you the whole second column of A.

# You can manipulate matrices very similarly to how you manipulate vectors with operations:

A
A + 1
A*3
A^2

# There are also 3 dimensional matrices, called "arrays." Though these are less commonly used than matrices.
A <- c(1:24)
A
A <- array(A, dim=c(2,3,4))   # I want A to have 4 matrices, each with 2 rows and 3 columns.
A

########################################## LESSON 7: Data Types (Data Frame) ####################################################

# A data frame is a fancy type of matrix, where each column represents a different variable. 
# This data type is highly common in research, where we have a lot of different variables that we need to group together.
# A single row of the dataframe will represent a particular subject/observation of those variables.

favorite.color <- c("Red","Blue","Yellow","Red","Yellow","Red")
IQ <- c(4.0, 2.9, 3.8, 3.1, 3.0, 3.5)
test.score <- c(70, 99, 87, 91, 100, 56)

data <- data.frame(favorite.color, IQ, test.score)
data

# To reference a specific variable, you can use the variable's name instead of its index number using the "$" symbol:

data$favorite.color     # The favorite colors from the data frame
data[,1]   			# Also the favorite colors from the data frame
data$IQ
data$test.score

# You can combine this with indexing to get specific values from the data frame:

data[1,1]   # The favorite color of subject 1
data$favorite.color[1]   # Also the favorite color of subject 1 (the first element of the favorite colors of all subjects).

# Data frames are useful, because you can add/remove variables without difficulty!

data$IQ <- NULL   # I don't want IQ as a variable, so I set it to "NULL" (which means nill, nothing, gone).
data

data$age <- c(33, 25, 17, 21, 67, 18)   # This adds age as a variable to my data frame.
data

########################################## LESSON 8: Data Types (List) ####################################################

# Lists are ordered collections of other data types. This is great if you want to save a whole bundle of data together!

A <- c(100:1) # The integers from 100 to 1 in descending order.
B <- "Banana"  # The word banana.

List <- list(A, B, data)
List

# Indexing is a little different with lists, as they require double brackets:

List[[1]]   # A
List[[2]]   # B
List[[3]]   # data

List[[1]][3] # The third element of A
 
########################################## LESSON 9: Installing Packages ####################################################

# Packages are collections of functions (and sometimes sample data to test those functions) that people make
# available to the public online, so that you don't need to write your own functions that do the same thing.

# To download a package, you can either (1) Click "Packages" -> "Install Package(s)" at the top of R.
# When the "Select CRAN mirror" pops up, scroll down and select "USA (TN)", then select the name of the package you want.

# Alternatively, you can enter the following into R:

install.packages("irtoys")   # Substituting "irtoys" with the name of the package you want to install.

# If R is having difficulties downloading the package, or is asking you to download a different package as well,
# try closing/reopening R. It's possible the issue has to do with what working directory you selected
# when uploading the data set in Lesson 9.

# If you're still having trouble installing "irtoys," contact Dr. Cho about seeing what to try next.

# You only need to install a package once on your device.
# After a package is installed, whenever you open R and need to access the contents of the installed package, 
# enter the library() command for that package:

library(irtoys)

########################################## LESSON 10: Reading/Writing Data ####################################################

# Download the "data.txt" file from Brightspace for this lesson.

# To open this file in R, you need to first change your 
# working directory to wherever you have this file saved on your computer.
# If your working directory is "C:\Users\Matthew\Desktop\VU2019\Fall\R":

setwd("C:\\Users\\naveirmd\\Desktop\\VU2019\\Fall\\R Class (Sun-Joo)")

# Note that you'll need to add the extra '\' before every '\' in the address.

# For Windows, the find the path you need to use:
# 1.) Find the file in File Explorer.
# 2.) Click the file path at the top and copy.

# For Mac, to find the path you need to use:
# 1.) Find the file in Finder.
# 2.) Click "Get Info"
# 3.) Make note of the location after Macintosh HD
#     Example: Users > kalleymankowski > Downloads > PSY-GS 8880-01 > Lab 1

Data <- read.table("data.txt", header=TRUE, sep="")

Data <- read.table("/Users/YourName/FileLocation/FileLocation/data.txt", header=TRUE) # If for some reason the previous line doesn't work, you can fill in the file address here and run this line.
Data

# The "header" argument should be TRUE if the first line of your data is variable names (which in this case is true).
# The "sep" argument may vary depending on what separates variables in each line of your data. In this case,
# individual data points are separated by whitespaces, so we just set this to the (default): sep=""

# To then save this file (or any other file) to the current working directory:
write.table(Data, file="Copy_of_Data.txt", sep="\t") # Here I use sep="\t" to indicate I want a full tab of space between entries (so the data is easy to read).

########################################## LESSON 11: IRT Example with irtoys ####################################################

# Once you've installed the irtoys package, it included (along with different IRT functions), a few sample data sets we'll experiment with:

Unscored   # The results of an 18 item multiple-choice test taken by 472 persons. Each item was multiple-choice,
           # with 1 correct option out of 4. Each row represents a person, and each column an item. 

Scored    # The same data set, but converted to be marked as "0" for incorrect (or missing "NA") responses, 
          # and "1" for correct responses.

# In classical test theory (CTT), we care about the total score that each person received:

total.scores <- rowSums(Scored) # Quite literally takes the sum of each row (person)
total.scores # The total score each person received, out of a possible maximum score of 18.

summary(total.scores)   # This gives us a 5-number summary table of these scores, as well as the mean score.
sd(total.scores)

hist(total.scores, xlab="Total Score", main="This is the name of the Histogram") # Creates a histogram of the total scores.

# Rasch item parameter estimates:

Rasch <- est(Scored,model="1PL",engine="ltm",rasch=TRUE) 
Rasch   # Gives us the estimes and standard errors of Rasch item parameter estimates.

plot(irf(Rasch$est, item=1)) # Plots the item response function for item 1.
abline(h=0.5, col="red") # Adds a blue line at P(X=1)=0.5.

plot(irf(Rasch$est, item=2))
abline(h=0.5, col="red")

Two.PL <- est(Scored,model="2PL",engine="ltm",rasch=FALSE) # Again estimates item parameters, this time with 2PL instead of Rasch.
Two.PL

plot(irf(Two.PL$est, item=1))
abline(h=0.5, col="red")

plot(irf(Two.PL$est, item=2))
abline(h=0.5, col="red")

########################################## (OPTIONAL) LESSON 12: For/While Loops and If/Else ####################################################

# WARNING: The following section is a bit more difficult than everything else covered in this tutorial.
# Do not be intimidated if it doesn't stick after the first time trying it.

# Sometimes, you will need to perform an operation multiple times over (such as on every element of a vector or matrix).
# To save time, you can use for/while loops to save a lot of time and energy.

A <- c(1,2,3,4,5)

# Suppose I want R to add +1 to each element of 'A'. I could do the following:

A[1] <- A[1] + 1   # Make the first element of 'A' equal to itself (+1).
A[2] <- A[2] + 1   # Make the second element of 'A' equal to itself (+1).
A[3] <- A[3] + 1
A[4] <- A[4] + 1
A[5] <- A[5] + 1

# Or, I could use a For loop to make this job a lot faster:

A <- c(1,2,3,4,5)

for (index in 1:5){   # 'index' is a temporary variable that will only be used for this loop.
A[index] <- A[index] + 1   # For every value of 'index' from 1 to 5, increase that element of A by (+1).
} # You start and end each loop with a curly brace to indicate what part of your code is specifically for that loop.

# Similarly, you can use a While loop to repeat an operation as long as a specific criteria is met.

X <- 1   # Suppose I want to double X's value until it's at least 100.

while (X<100){   # As long as the criteria in parantheses is true (which it is, as X is less than 100), it will repeat:
X <- 2*X   # Multiplies X by 2.
}

X   # This means that X should now be the smallest multiple of 2 larger than 100 (which is 128).

# If/else type statements are used when you want might want to perform a different operation on a value,
# depending on one or more conditions. This is especially useful in for/while loops. For example:

A <- c(1,2,40,6,19,11,13,28)

less.than.10 <- c()
at.least.10 <- c()

# I want to sort each element of 'A', putting the elements less than 10 in "less.than.10", and the elements greater than
# or equal to 10 in "greater.than.10"

for (index in 1:length(A)){   # For every element of A (ranging from the first value to however long A is, 8 in this case):
if (A[index]<10){   # If the number is less than 10, do the following:
less.than.10 <- c(less.than.10, A[index])   # This adds A[index] (which is less than 10) as the last element of the vector
} else {   # If the number is NOT less than 10, do the following:
at.least.10 <- c(at.least.10, A[index])
} # This curly brace closes the if/else
} # This curly brace closes the for loop.

less.than.10
at.least.10

# There are lots of ways to combine and use if/else statements and for/while loops. Whenever you need to repeat an action
# multiple times, try to think how you can generalize the action and put it in a loop.

# If you have any questions about this tutorial, feel free to send me an email at:
# matthew.d.naveiras@vanderbilt.edu


