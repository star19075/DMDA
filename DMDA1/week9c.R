# Read dataset
Claimants <- read.csv("C:/DOC/NOTES/LABS/DMDA1/claimants.csv")

# Check for missing values
sum(is.na(Claimants))

# Remove missing values
Claimants <- na.omit(Claimants)

# Logistic Regression Model
logit <- glm(ATTORNEY ~ factor(CLMSEX) + factor(CLMINSUR) + factor(SEATBELT) + CLMAGE + LOSS,
             family = binomial, data = Claimants)

# Summary of the model
summary(logit)

# Predicted probabilities
prob <- predict(logit, type = "response", newdata = Claimants)
prob

# Confusion matrix
confusion <- table(prob > 0.5, Claimants$ATTORNEY)
confusion

# Accuracy calculation
accuracy <- sum(diag(confusion)) / sum(confusion)
accuracy

# Install required packages (if not already installed)
install.packages("ROCR")
install.packages("pROC")

# Load libraries
library(ROCR)
library(pROC)

# ROC curve and AUC
rocpred <- prediction(prob, Claimants$ATTORNEY)
rocperf <- performance(rocpred, "tpr", "fpr")
plot(rocperf)

auc <- auc(Claimants$ATTORNEY, prob)
auc