#from PPT
install.packages("RPostgreSQL",loc="C:/Users/mbennett/Desktop/Rlibs2")
library(RPostgreSQL,lib.loc="C:/Users/mbennett/Desktop/Rlibs2")

con <- dbConnect(SQLite(), "data/portal.sqlite")
dbListTables(con)
#

#2 ways to get/read data
#import into R and use functions 
plots <- dbReadTable(con, "plots")
surveys <- dbReadTable(con, "surveys")
species <- dbReadTable(con, "species")
str(surveys)

##OR let database system process for you
dbGetQuery(con, "select species_id, weight
                 from surveys
                 where plot_id = 1 limit 5")


# Database connections from R

library(RSQLite, lib.loc="C:/Users/mbennett/Desktop/Rlibs2")
con <- dbConnect(SQLite(), "data/portal.sqlite")
dbGetQuery(con, "pragma foreign_keys = on")
...

# Two ways to access data

plots <- dbReadTable(con, "plots")
surveys <- dbReadTable(...)
...

dbGetQuery(con, "select species_id, weight
                 ...
                 ...
                 ...)

# Exercise 1

...

# Primary keys

dbGetQuery(con, ...)

# Foreign keys

dbGetQuery(con, "...
                 ...
                 values (35549, 1, ..., 'M')")


# One-to-Many Relationship

df <- dbGetQuery(con, "select weight, month, plot_type
                       ...
                       ...
                       where weight is not null")
str(df)

## Exercise 2

...
