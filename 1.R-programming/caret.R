library(caret)
library(ggplot2)
library(lattice)
data(iris)
install.packages("RWeka")
library(RWeka)

# No other hyperparameter values, no random search
getModelInfo("J48")

# No other hyperparameter values, no random search
getModelInfo("PART")

# This needs sampling for random search
getModelInfo("JRip")
# Also it appears NumOpt it now named O in RWeka
RWeka::WOW("JRip")

# Other values of these hyperparameters run when called directly through RWeka

# J48 called through RWeka
j48c1 <- J48(Species ~ ., data = iris, control = Weka_control(C = 0.2))
j48c2 <- J48(Species ~ ., data = iris, control = Weka_control(C = 0.25))

# JRip called through RWeka
jripc1 <- JRip(Species ~ ., data = iris, control = Weka_control(O = 3))
jripc2 <- JRip(Species ~ ., data = iris, control = Weka_control(O = 100))

# PART called through RWeka
partc1 <- PART(Species ~ ., data = iris, control = Weka_control(threshold = 0.25, pruned = "yes"))
partc2 <- PART(Species ~ ., data = iris, control = Weka_control(threshold = 0.2, pruned = "no"))
partc3 <- PART(Species ~ ., data = iris, control = Weka_control(threshold = 0.25, pruned = "yes"))
partc4 <- PART(Species ~ ., data = iris, control = Weka_control(threshold = 0.2, pruned = "no"))
