##########################################################################
##BASIC OPERATORS IN R
#ARITHMETIC OPERATORS
# Calculate BMI of person with weight of 80kg and height of 1.6 meters
80/(1.6^2)
#RELATIONAL OPERATORS
# Person A has weight of 80 kg and height of 1.6 meters
# Person B has weight of 120 kg and height of 210 centimeters
# 1. Is Person A heavier in weight compared to Person B?
80 > 120
80 < 120
80 == 120
# 2. Is Person A taller in height compared to Person B?
#First converting centimeters to meters
210/100
1.6 > 2.1
1.6 < 2.1
1.6 == 2.1
# 3. Whose BMI is greater,Person A or Person B
80/(1.6^2) > 120/(2.1^2)
80/(1.6^2) < 120/(2.1^2)
80/(1.6^2) == 120/(2.1^2)
#LOGICAL OPERATORS
# 1. Is the weight of Person A AND the weight of Person B both equal to 80Kg?
80 == 80 & 120 == 80
# 2. Is the weight of Person A OR the weight of Person B less than 100kg?
80 < 100 | 120 < 100
# 3. Is the weight of Person A greater than the weight of Person B AND the height of Person A greater than the height of Person B?
80 > 120 & 1.6 > 2.1
# 4. Is the weight of Person A greater than the weight of Person B OR the height of Person A greater than the height of Person B?
80 > 120 | 1.6 > 2.1
#ASSIGNMENT OPERATORS
# 1. Assign the weight of Person A to an object named weight_a
weight_a <- 80
# 2. Assign the height of Person A to an object named height_a
height_a <- 1.6
# 3. Calculate BMI for Person A using objects weight_a and height_a. Assign the value of BMI to an object named `bmi_a`.
bmi <- weight_a/(height_a^2)
bmi_a <- bmi
# 4. Assign the weight of Person B to an object named weight_b
weight_b <- 120
# 5. Assign the height of Person B to an object named height_b
height_b <- 2.1
# 6. Calculate BMI for Person B using objects weight_b and height_b. Assign the value of BMI to an object named `bmi_b`.
bmi_b <- weight_b/(height_b^2)
bmi_a
bmi_b
##########################################################################
##LOADING DATASETS IN R
#Load women dataset in R
data("women")
women
#Get class of women dataset
class(women)
#Get number of rows of women dataset
nrow(women)
#Get number of columns of women dataset
ncol(women)
#Get variable names of women dataset
names(women)
# Get class of variable names of women dataset
class(names(women))
#Get length of the variable names of women dataset
length(names(women))
#Get a full description of the structure of a dataset object in R
str(women)
#Accessing the "height" variable
women$height
#Accessing the "weight" variable
women$weight
#Accessing the "height" variable using index method: variable name
women[,"height"]
#Accessing the "height" variable using index method:column number, coma or double index
women[, 1]
women[[1]]
#Accessing the "weight" variable using using index method: variable name
women[,"weight"]
#Accessing the "weight" variable using index method:column number, coma or double index
women[, 2]
women[[2]]
#Accessing the "height" value for the third row/record of the dataset
women[3, "height"]
women[3, 1]
women[ , "height"][3]
women[3, ]["height"]
women[3, ][["height"]]
women$height[3]
#Accessing the "weight" value for the third row/record of the dataset
women[3, "weight"]
women[3, 2]
women[ , "weight"][3]
women[3, ]["weight"]
women[3, ][["weight"]]
women$weight[3]
#Get the mean height and weight in the women dataset
mean(women$height)
mean(women[[1]])
mean(women$weight)
mean(women[[2]])
#Get the median height and weight in the women dataset
median(women$height)
median(women[[1]])
median(women$weight)
median(women[[2]])
#Get the standard deviation from the mean in the height/weight variables of the women dataset
sd(women$height)
sd(women[[1]])
sd(women$weight)
sd(women[[2]])
#Get the variance from the mean in the height/weight variables of the women dataset
var(women$height)
var(women[[1]])
var(women$weight)
var(women[[2]])
#Get the Z-scores for the height/weight variables of the women dataset
scale(women$height)
scale(women$weight)
##########################################################################
##READING EXTERNAL DATA FILES IN R
read.table(file = "data/women.csv",header = TRUE,sep = ",")
read.csv(file = "data/women.csv")
women_csv <- read.csv("data/women.csv")
##INSTALL A PACKAGE INSIDE R
install.packages("openxlsx")
library(openxlsx)
read.xlsx(xlsxFile = "data/women.xlsx",sheet = 1)
women_xlsx <- read.xlsx("data/women.xlsx",sheet = 1)
##########################################################################
##CODING CHALLENGE
women_xlsx$height
#converting height data from inches to metres and assign name hhhh
hhhh <- (women_xlsx$height)* 0.0254
hhhh
women_xlsx$weight
#converting weight data from lbs to kg and assign name wwww
wwww <- (women_xlsx$weight)* 0.453592
wwww
#BMI for each of the 15 records
bmi_hh_ww <- wwww/(hhhh^2)
bmi_hh_ww
#Highest BMI
max(bmi_hh_ww)
#Lowest BMI
min(bmi_hh_ww)
#How many records have BMI higher than 23
bmi_hh_ww > 23
#five records are higher than 23.000, but when approximated two records above 23
mean(bmi_hh_ww)
median(bmi_hh_ww)















