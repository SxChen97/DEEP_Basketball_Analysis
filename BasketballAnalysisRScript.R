#Read CSV Files from Git Directory
df_awards = read.csv("basketball_awards_players.csv")
df_hof = read.csv("basketball_hof.csv")
df_players = read.csv("basketball_players.csv")
df_careers = read.csv("basketball_players_careers.csv")

#See first 6 rows of dataframes
head(df_hof)
head(df_players)

#Merge HOF and Players Data on playerID/hofID, inlcuding all rows from both dataframes
df_hof_players = merge(df_players, df_hof, by.x = c("playerID"), by.y = c("hofID"), all = T)
names(df_hof_players)
head(df_hof_players)

#Create Scatter Plot Matrix with Numerical Stats (this will take a couple minutes to run!!)
#pairs(df_hof_players[8:16])

#EDA for points, rebounds, and assists
mean(df_careers$points)
tapply(df_careers$points,INDEX=df_careers$HOF,mean)
mean(df_careers$rebounds)
tapply(df_careers$rebounds,INDEX=df_careers$HOF,mean)
mean(df_careers$assists)
tapply(df_careers$assists,INDEX=df_careers$HOF,mean)