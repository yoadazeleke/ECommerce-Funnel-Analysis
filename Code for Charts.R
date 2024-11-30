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

# Visualizing Gender Distribution
ggplot(data_cleaned, aes(x = Gender)) +
  geom_bar(fill = "skyblue") +
  theme_minimal() +
  labs(title = "Gender Distribution", x = "Gender", y = "Count")

# Visualizing Country Distribution
ggplot(data_cleaned, aes(x = reorder(Country, Country, function(x) -length(x)))) +
  geom_bar(fill = "lightgreen") +
  theme_minimal() +
  labs(title = "Country Distribution", x = "Country", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Visualizing Category Distribution
ggplot(data_cleaned, aes(x = reorder(Category, Category, function(x) -length(x)))) +
  geom_bar(fill = "coral") +
  theme_minimal() +
  labs(title = "Category Distribution", x = "Category", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Top 10 most common products
top_products <- table(data_cleaned$Product)
top_products <- sort(top_products, decreasing = TRUE)
top_products <- head(top_products, 10)

ggplot(data_cleaned, aes(x = reorder(Product, Product, function(x) -length(x)))) +
  geom_bar(fill = "purple") +
  theme_minimal() +
  labs(title = "Top 10 Product Distribution", x = "Product", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# View structure of the data
str(data)

# Get summary statistics for the data
summary(data)

# Preview the first few rows of the dataset
head(data)

# Load necessary library
library(ggplot2)

# Create a data frame for plotting
conversion_by_gender <- data.frame(
  Gender = c("Female", "Male"),
  session_to_cart_conversion = c(100, 100),
  cart_to_order_conversion = c(86.5, 83.4),
  order_to_payment_conversion = c(116, 120)
)

# Reshape data into long format for easier plotting
conversion_long <- tidyr::pivot_longer(conversion_by_gender, 
                                       cols = c(session_to_cart_conversion, cart_to_order_conversion, order_to_payment_conversion),
                                       names_to = "funnel_stage", 
                                       values_to = "conversion_rate")

# Plotting the conversion rates by gender
ggplot(conversion_long, aes(x = Gender, y = conversion_rate, fill = funnel_stage)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Conversion Rates by Gender",
       x = "Gender",
       y = "Conversion Rate (%)",
       fill = "Funnel Stage") +
  theme_minimal()

# Check for duplicates based on order and payment details
duplicates <- data %>%
  group_by(OrderConfirmationTime, PaymentMethod) %>%
  filter(n() > 1)

# View duplicates
head(duplicates)                                    
