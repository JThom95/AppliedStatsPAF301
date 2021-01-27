# Load in and examine data
download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.RData")
load("kobe.RData")
head(kobe)

# Calculate and plot any streaks
kobe_streak <- calc_streak(kobe$basket)
barplot(table(kobe_streak))

# Simulate a coin flip w/a fair coin
outcomes <- c("heads", "tails")
sim_fair_coin <- sample(outcomes, size = 100, replace = TRUE)
table(sim_fair_coin)

# Simulate an unfair coinflip w/custom odds on ea. vector element 
sim_unfair_coin <- sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))
table(sim_unfair_coin)

#Simulate independant shooter
outcomes <- c("H", "M")
sim_basket <- sample(outcomes, size = 133, replace = TRUE)

#Compare data
kobe$basket
sim_basket