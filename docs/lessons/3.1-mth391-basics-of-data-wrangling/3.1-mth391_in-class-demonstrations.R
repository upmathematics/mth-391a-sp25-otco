# In-Class Demonstrations (W 1/19)

# Load packages
library(tidyverse)

# Define the iris data set as a tibble
iris_tibble <- tibble(iris)

# Case example: 
#   Using the `iris` data set, we want to know how many 
#   rows (or observations) for each species that have 
#   length ratio greater than $0.80$ and 
#   width ratio greater than $0.5$. 
#   Here, the ratio is defined as petal over sepal variables.

# Original number of rows pre-transformation
# counting sequence
iris_species_count <- iris_tibble |> 
  count(Species)
# display result
iris_species_count

# Post-transformation results
# transformation sequence
iris_trans <- iris_tibble |> 
  # compute all ratios using lengths and widths
  mutate(ratio_length = Petal.Length/Sepal.Length,
         ratio_width = Petal.Width/Sepal.Width) |> 
  # select only the new variables and species variables
  select(Species,ratio_length,ratio_width) |>
  # apply the filter based on the given parameters
  filter(ratio_length > 0.80,
         ratio_width > 0.50) |> 
  # count the number of rows on what's left
  count(Species)
# display result
iris_trans
