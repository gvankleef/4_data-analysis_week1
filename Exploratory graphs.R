##ONE DIMENSIONAL PLOTS

##summary of a variable giving short descriptive information
summary(mtcars$mpg)

##boxplot
boxplot(mtcars$mpg, col = "blue")
##adding a line to the boxplot to indicate a specific threshold
abline(h = 12)

##histogram, the rug funtions display the actual data points under the histogram
hist(mtcars$mpg, col = "green")
rug(mtcars$mpg)
##histogram with more breaks, give a more detailed histogram
hist(mtcars$mpg, col = "green", breaks = 20)
##adding a line to the histogram indicating the median, the width of the line is set with lwd
abline(v = median(mtcars$mpg), col = "Magenta", lwd = 6)

##Barplot counting the number of cars per gear
barplot(table(mtcars$gear), col = "Black", main = "Cars by gear")

##TWO DIMENSIONAL PLOTS
##plot the miles per gallon distribution per gear
boxplot(mpg ~ gear, data = mtcars, col = "yellow")

##two histograms
hist(subset(mtcars, gear = 6)$mpg, col = "green")
hist(subset(mtcars, gear = 5)$mpg, col = "green")

##scatterplot
with(mtcars,plot(gear,mpg))
abline(h = 15, lwb = 4, col = "Blue")
##add an extra dimension to scatterplot with colors
with(mtcars,plot(gear,mpg, col = cyl))

##two scatterplots side by side (comparing 5 vs 6 car cylinders)
par(mfrow = c(1,2), mar = c(5,4,2,1))
with(subset(mtcars, cyl = 6), plot(gear,mpg, main = "6cyl"))
with(subset(mtcars, cyl = 5), plot(gear,mpg, main = "5cyl"))






