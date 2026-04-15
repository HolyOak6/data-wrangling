# ================================
# HR Attrition Analysis
# ================================
# Install ggplot2 and dplyr if not already installed
if (!require(ggplot2)) install.packages("ggplot2")
if (!require(dplyr)) install.packages("dplyr")

library(dplyr)
library(ggplot2)

# Load dataset
df <- read.csv("HR-Employee-Attrition.csv")

# ================================
# Initial Data Inspection
# ================================

# View dataset structure and sample data
View(df)

# Check for missing values
colSums(is.na(df))

# Inspect data types and structure
str(df)

# Summary statistics for all variables
summary(df)

# ================================
# Exploratory Analysis: Individual Variables
# Goal: Identify which variables are associated with attrition
# ================================

# Business travel frequency vs attrition
prop.table(table(df$BusinessTravel, df$Attrition), 1)

# Years since last promotion vs attrition
prop.table(table(df$YearsSinceLastPromotion, df$Attrition), 1)

# Education level vs attrition
prop.table(table(df$Education, df$Attrition), 1)

# Work environment satisfaction vs attrition
prop.table(table(df$EnvironmentSatisfaction, df$Attrition), 1)

# Job involvement vs attrition
prop.table(table(df$JobInvolvement, df$Attrition), 1)

# Job role vs attrition
prop.table(table(df$JobRole, df$Attrition), 1)

# Job satisfaction vs attrition
prop.table(table(df$JobSatisfaction, df$Attrition), 1)

# Marital status vs attrition (tested but expected weaker impact)
prop.table(table(df$MaritalStatus, df$Attrition), 1)

# Overtime vs attrition (key workload indicator)
prop.table(table(df$OverTime, df$Attrition), 1)

# Performance rating vs attrition
prop.table(table(df$PerformanceRating, df$Attrition), 1)

# Stock option level vs attrition
prop.table(table(df$StockOptionLevel, df$Attrition), 1)

# Work-life balance vs attrition (perceived workload strain)
prop.table(table(df$WorkLifeBalance, df$Attrition), 1)

# ================================
# Feature Engineering
# ================================

# MonthlyIncome is continuous and difficult to interpret directly in attrition analysis.
# To improve interpretability, we create income groups.
df$IncomeGroup <- cut(
  df$MonthlyIncome,
  breaks = c(0, 3000, 6000, 10000, Inf),
  labels = c("Low", "Mid", "High", "Very High")
)

# Attrition by income group
prop.table(table(df$IncomeGroup, df$Attrition), 1)

# ================================
# Visualization of Strong Predictors of Attrition (Income, Overtime, Role, Engagement)
# ================================

# Visualize OverTime vs Attrition
ggplot(df, aes(x = OverTime, fill = Attrition)) +
  geom_bar(position = "fill")

# Visualize JobInvolvement vs Attrition
ggplot(df, aes(x = JobInvolvement, fill = Attrition)) +
  geom_bar(position = "fill")

# Visualize JobRole vs Attrition
ggplot(df, aes(x = JobRole, fill = Attrition)) +
  geom_bar(position = "fill")

# Visualize IncomeGroup vs Attrition
ggplot(df, aes(x = IncomeGroup, fill = Attrition)) +
  geom_bar(position = "fill")

# ================================
# Interaction Analysis
# Goal: Understand how multiple factors combine to impact attrition
# ================================

# Income + Overtime interaction
# Tests whether low income combined with overtime increases attrition risk
prop.table(table(df$IncomeGroup, df$OverTime, df$Attrition), c(1,2))

# Income + Job Role interaction
# Tests whether job role effects are driven by income differences
prop.table(table(df$IncomeGroup, df$JobRole, df$Attrition), c(1,2))

# Income + Job Involvement interaction
# Tests relationship between compensation and engagement
prop.table(table(df$IncomeGroup, df$JobInvolvement, df$Attrition), c(1,2))

# Overtime + Job Involvement interaction
# Tests whether engagement mitigates the effect of overtime
prop.table(table(df$OverTime, df$JobInvolvement, df$Attrition), c(1,2))

# ==================================
# Visualization of Interactions
# ==================================

# Visualize interaction between income level and overtime on attrition rates
# Purpose: Determine whether overtime amplifies attrition risk across income groups
# Insight focus: Tests whether compensation buffers the effect of workload strain

summary_df <- df %>%
  group_by(IncomeGroup, OverTime) %>%
  summarise(attrition_rate = mean(Attrition == "Yes", na.rm = TRUE))

ggplot(summary_df, aes(x = IncomeGroup, y = attrition_rate, color = OverTime, group = OverTime)) +
  geom_line() +
  geom_point() +
  labs(
    title = "Attrition Rate by Income and Overtime",
    y = "Attrition Rate"
  )


# Analyze whether job role differences in attrition persist across income levels
# Purpose: Determine if job role effects are independent of compensation differences
# Insight focus: Tests whether certain roles have inherent attrition risk beyond pay

ggplot(df, aes(x = JobRole, fill = Attrition)) +
  geom_bar(position = "fill") +
  facet_wrap(~IncomeGroup) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(
    title = "Attrition by Job Role and Income Group",
    x = "Job Role",
    y = "Proportion"
  )

# Analyze interaction between income level and job involvement on attrition
# Purpose: Determine whether engagement levels modify the relationship between compensation and turnover
# Insight focus: Tests whether low income combined with low involvement creates compounding attrition risk

ggplot(df, aes(x = factor(JobInvolvement), fill = Attrition)) +
  geom_bar(position = "fill") +
  facet_wrap(~IncomeGroup) +
  labs(
    title = "Attrition by Job Involvement and Income Group",
    x = "Job Involvement Level",
    y = "Proportion"
  )

# Analyze how job involvement interacts with overtime in influencing attrition
# Purpose: Test whether employee engagement reduces the impact of overtime on turnover
# Insight focus: Identifies whether high engagement protects against burnout effects

ggplot(df, aes(x = factor(JobInvolvement), fill = Attrition)) +
  geom_bar(position = "fill") +
  facet_wrap(~OverTime) +
  labs(
    title = "Attrition by Job Involvement and Overtime",
    x = "Job Involvement Level",
    y = "Proportion"
  )