# In-Class Demonstrations (W 1/19)

# Load packages
library(tidyverse)

# Define the iris data set as a tibble
iris_tibble <- tibble(iris)

# Case example:
#   Using the `iris` dataset, we want to compute the mean of 
#   each numerical variable for each species and count the 
#   number of rows per species.

# Post-summarisation results
# Summarization sequence
mean_summary <- iris_tibble |> 
  # group the tibble by species
  group_by(Species) |> 
  # summarise data using the mean and number of observations for each species
  summarise(
    N = n(), # count total number of rows
    mean_sepal_length = mean(Sepal.Length), # compute mean of sepal length
    mean_sepal_width = mean(Sepal.Width), # compute mean of sepal width
    mean_petal_length = mean(Petal.Length), # compute mean of petal length
    mean_petal_width = mean(Petal.Width), # compute mean of petal width
  )
# display result
mean_summary
