library(lattice)
library(ggplot2)

df_awards = read.csv("basketball_awards_players.csv")
df_hof = read.csv("basketball_hof.csv")
df_players = read.csv("basketball_players.csv")

head(df_hof)
head(df_players)

df_hof_players = merge(df_players, df_hof, by.x = c("playerID"), by.y = c("hofID"), all = T)
