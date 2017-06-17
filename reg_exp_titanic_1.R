#Learning string maniuplation (regexp) with Titanic Data, using tidyverse & stringr
#Never attempted to understand Regular Expressions before...here we go.



library(tidyverse)

library(stringr)


writeLines(train$Name)

first_10_names <- str_c(train$Name[1:10])

first_10_names

class(first_10_names)


#Subsetting strings in Base R with str_sub()

str_sub(first_10_names, 1, 5)

b <- paste(first_10_names, sep="_")

a <- paste(first_10_names, collapse="_")

#Let's start by isolating the passenger names into a character vector

pnames <- str_c(train$Name[1:891])

str_view(pnames, "Mr")

#Got two errors in LoadNameSpace...apparently didn't have htmltools, htmlwidgets, so downloaded them...and we're good.

install.packages("htmltools")

install.packages("htmlwidgets")

library(htmlwidgets)

library(htmltools)

#Goal, create a new column, "Title," which grabs Title from Name.

#We can pipe the Name column through a function which grabs the Title and stores in an empty vector

str_view(pnames, ".z.")


str_view(pnames, "Mr")

a <- "casa d' mama"

#Learned that apostraphes

c<- 'casa 'd mama''

b<- "casa 'd mama" 

e<- 'casa \'d mama'

e

#To create regular expression in strings, need double \\ (makes sense, since string escape is one backslash)

#Since all titles are followed by a period, we can now at least get a hold of the "end" of the chunk we're looking for 

str_view(pnames, "\\.")

#If you begin wtih power (^) you end with money ($)

str_view(pnames, "\\.$")


str_count(pnames, "Mr")

length(pnames)



#Create a column with the Titles of passengers

#We need to create a new dataframe, called "Title

#We need to extract the titles in the Names column and push them into the Title data frame

#We can do the above by creating a dataframe of all titles

#Then, we can subset the "Names" column to extract the "Title_Matches"

?str_subset
?str_extract_all
?str_split

str_split(train$Name, " ")

ptitles <- c("Mr.", "Miss.", "Dr.","Master.", "Rev.", "Jonkheer.", "Major.", "Mme.", "Don.", "Dona.")
 
pnames[1]

?gsub

str_split("Brown, Mr. James", "?=.")

# Grab title from passenger names
Title <- gsub('(.*, )|(\\..*)', '', train$Name)

?str_extract

#Title <- str_extract(train$Name, "[^,.*][A-Z.*][a-z.*].?[\\.+]")

Title <- str_extract(train$Name, "[a-zA-Z]+\\.")

train$Title <- str_extract(train$Name, "[a-zA-Z]+\\.")

train$Title

a <- str_extract(train$Name, "[a-zA-Z]+,")


train$Last_Name <- str_extract(train$Name, "[a-zA-Z]+,")

train$Last_Name
