#GENERATE 500 DATA VALUES WITH rnorm()
data_values<-rnorm(500)
data_values
#ADDING 10 RANDOM OUTLIERS
data_values1[1:10] <- c(46,9,15,-90,42,50,-82,74,61,-32)
data_values1
plot(data_values)
plot(data_values1)
#PLOT TO CHECK IF DATA HAS OUTLIERS
hist(data_values1)$out# there are no outliers in the data

#BOXPLOT TO SHOW PRESENCE OF OUTLIERS
boxplot(data_values1)$out #there are outliers in the data. which are 
#which are 46   9  15 -90  42  50 -82  74  61 -32
length(data_values1) #initial length 500
#REMOVING OUTLIERS
remove_outs<-data_values1[!data_values1 %in% boxplot.stats(data_values1)$out]
remove_outs

length(remove_outs) # after removal of outliers length is 490 hence the added 10 values are deleted

#JUSTIFYING WITH BOXPLOTS
boxplot(remove_outs)
boxplot(remove_outs)$out
#after checking 2 more outliers were found
#SAME PROCEDURE TO REMOVE ALL OUTLIERS
remove_outs1<-remove_outs[!remove_outs %in% boxplot.stats(remove_outs)$out]
remove_outs1
length(remove_outs1)
boxplot(remove_outs1)
boxplot(remove_outs1)$out
#after the same procedure no outliers were found