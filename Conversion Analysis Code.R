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

