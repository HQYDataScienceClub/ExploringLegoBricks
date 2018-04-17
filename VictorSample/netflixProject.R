rm(list = ls())
library("dplyr")

setwd("C:/Users/vvalencia/Desktop")

netflix_df <- read.csv("netflix.csv", stringsAsFactors = FALSE)
netflix_df$rating <- factor(netflix_df$rating)
netflix_df <- tbl_df(netflix_df)


glimpse(netflix_df)

netflix_df%>%
  filter(!is.na(user.rating.score))%>%
  arrange(title)%>%
  distinct(netflix_df) -> netflix_df

netflix_df_clean <- distinct(netflix_df)


#1980 - 1989
netflix_df_clean %>%
  filter(release.year <= 1989) -> df_1980
#1990 - 1999
netflix_df_clean %>%
  filter(release.year <= 1999, release.year >= 1990) -> df_1990
#2000 - 2009
netflix_df_clean %>%
  filter(release.year <= 2009, release.year >= 2000) -> df_2000
#2010 - 2019
netflix_df_clean %>%
  filter(release.year <= 2019, release.year >= 2010) -> df_2010
#2020+
netflix_df_clean %>%
  filter(release.year > 2019) -> df_2020




plot(netflix_df_clean$release.year, netflix_df_clean$user.rating.score, xlab = "Movie Release Year", ylab = "User Rating Score")
points(df_1980$release.year,df_1980$user.rating.score, col = "red", pch = 16)
points(df_1990$release.year,df_1990$user.rating.score, col = "blue", pch = 17)
points(df_2000$release.year,df_2000$user.rating.score, col = "purple", pch = 15)
points(df_2010$release.year,df_2010$user.rating.score, col = "darkgoldenrod3", pch = 16)
points(df_2020$release.year,df_2020$user.rating.score, col = "black")


plot(netflix_df_clean$rating, netflix_df_clean$user.rating.score, xlab = "Movie Rating", ylab = "Movie Score", cex.axis = .75
     ,main = "Boxplot: Rating Score by Movie Rating")

lm_df <- lm(netflix_df_clean$user.rating.score~netflix_df_clean$rating+netflix_df_clean$release.year)
anova(lm_df)
