""" 1. Reading Data:
Let us start by reading in the colors data
to get a sense of the diversity of lego sets!
**NOTE:** Download `colors.csv` and `sets.csv` from rebrickable.com/downloads
into the ExploringLegoBricks/data directory.
"""

import pandas as pd

# Read colors.csv data set into variable `colors`
colors =

# Print the first few rows
print(colors.head())


""" 2. Exploring Colors:
Now that we have read the colors data, we can start exploring it!
Let us start by understanding the number of colors available.
"""

# How many distinct colors are available?
num_colors =
print(num_colors)


""" 3. Transparent Colors:
The colors data has a column named is_trans that
indicates whether a color is transparent or not.
It would be interesting to explore the distribution
of transparent vs. non-transparent colors.
"""

# What is the distribution of colors based on transparency?
colors_summary =
print(colors_summary)


""" 4. Explore Lego Sets:
Another interesting dataset available in this database is the sets data.
It contains a comprehensive list of sets over the years
and the number of parts that each of these sets contained.
Let us use this data to explore how the average number of
parts in Lego sets has varied over the years.
"""

import matplotlib.pyplot as plt

# Read sets data as `sets`
sets =

# What is the average number of parts by year?
parts_by_year =
print(parts_by_year)

# Plot trends in average number of parts by year



""" 5. Lego Themes Over Years:
Lego blocks ship under multiple themesself.
Let us try to get a sense of how the number of themes
shipped has varied over the years.
"""

# What is the number of themes shipped by year?
themes_by_year =
print(themes_by_year.head())
