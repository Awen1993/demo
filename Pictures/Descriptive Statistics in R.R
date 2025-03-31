################################################################################
#                                                                              #
#                   DESCRIPTIVE STATISTICS IN R                                #
#                                                                              #
################################################################################

###CREATING CATEGORICAL DATA (factor data type) from numeric and character types
gender <- c(1,2,1,2,1,2,2,2,2,1,2,2,1,2)
class(gender)
mode(gender)
summary(gender)
#gender - male[1] and female[2] --- factor data type

gen <- c("male","female","male","male","female")
class(gen)
summary(gen)


GENDER <- factor(gender, levels = c(1,2), labels = c("male","female"))
summary(GENDER)

GEN <- as.factor(gen)
summary(GEN)


#General Descriptive Statistics
# head(df), tail(df), str(df), summary(df), length(df), dim(df), colnames(df)

df <- read.table(file.choose(), header = T, sep ="\t")

colnames(df)  #return the variables or column headers

dim(df)   #returns the dimension of the dataframe

length(df)  #number of columns of dataframe

head(df)   #return the first 6 observations

tail(df)   #return the last 6 observations

str(df)   #returns the structure of dataframe

summary(df)   #summarizes the dataframe

##Convert gender and marrstat as factors in the dataframe
df$gender <- as.factor(df$gender) ;  df$marrstat <- as.factor(df$marrstat)


### MEASURES OF CENTRAL TENDENCY - mean, mode, median
# Mean - mean()
# Mode - table()
# Median - median() but after you have arranged in order
######## sort() - to sort values in ascending or descencing

x <- c(23, 67, 23, 89, 10, 11, 67, 23, 23, 23, 67, 11, 23, 23, 23)
mean(x) ; sum(x)/length(x)

table(x)   #frequency distribution table

median(x)

###################################################
sort(x)   #ascending order
sort(x, decreasing = TRUE)   #descending order
###################################################


## MEASURES OF DISPERSION
# Measures of dispersion -- standard deviation, range, variance.
# Standard deviation - sd()
# Variance -- var()
#### Range - range() ##########
x <- c(23, 67, 23, 89, 10, 11, 67, 23, 23, 23, 67, 11, 23, 23, 23)

sd(x) ; sqrt(var(x))    #standard deviation
var(x) ; sd(x)^2 ; sd(x)**2    #variance

#range = maximum value [max()] - minimum value [min()]
range(x)   #returns the max and min values

min(x)   #returns minimum value
max(x)   #returns maximum value

max(x) - min(x)   #range in stats

## Return quartiles and/or percentiles - use quantile() function
quantile(x)  #returns 0%, 25%, 50%, 75%, 100% by default
quantile(x, probs = c(0.25, 0.5, 0.75))

#Interquartile Range --- IQR() function
# IQR = 3rd quartile - 1st quartile
IQR(x)

###Using the DataFrame called above;
mean(df$wage); table(df$gender); median(df$wage); sd(df$wage); var(df$wage)
IQR(df$wage); quantile(df$wage)

###ROWS- AND COLUMN-WISE DESCRIPTIVE STATISTICS
# rowSums() and colSums()
df_subset <- subset(df, select = 2:8)
# OR 
df_subset2 <- df[2:8]

rowSums(df_subset)
colSums(df_subset)

##BASE PACKAGE VERSUS CONTRIBUTED PACKAGES
install.packages("summarytools")
library(summarytools)

summary(df)       #summary from base package
dfSummary(df)     #summary from "summarytools" package

table(df$gender)   ##frequency table from base package
freq(df$gender)    ##frequency table from "summarytools" package

str(df)      ##describe dataframe from base package
descr(df)    ##describe dataframe from "summarytools" package

table(df$gender, df$marrstat)    ##cross-tabulation from base package
ctable(df$gender, df$marrstat)   ##cross-tabulation from "summarytools" package
