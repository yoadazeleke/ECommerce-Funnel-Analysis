# Visualizing Age distribution
ggplot(data, aes(x = Age)) + 
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Age", x = "Age", y = "Frequency") +
  theme_minimal()

# Visualizing Credit Score distribution
ggplot(data, aes(x = CreditScore)) + 
  geom_histogram(binwidth = 50, fill = "lightgreen", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Credit Scores", x = "Credit Score", y = "Frequency") +
  theme_minimal()

# Visualizing Monthly Income distribution
ggplot(data, aes(x = MonthlyIncome)) + 
  geom_histogram(binwidth = 1000, fill = "orange", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Monthly Income", x = "Monthly Income", y = "Frequency") +
  theme_minimal()

# Visualizing Product Category distribution
ggplot(data, aes(x = Category)) + 
  geom_bar(fill = "lightcoral", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Product Categories", x = "Product Category", y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) # Rotate x-axis labels if needed