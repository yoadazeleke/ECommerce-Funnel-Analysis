# Load necessary libraries
library(dplyr)
library(tidyr)
library(lubridate)
library(ggplot2)


View(Customer360Insights_Cleaned_Customer360Insights_Cleaned)

str(Customer360Insights_Cleaned_Customer360Insights_Cleaned)

data <- data %>%
  mutate(
    SessionStartTime = as_hms(SessionStartTime),
    CartAdditionTime = as_hms(CartAdditionTime),
    SessionEndTIme = as_hms(SessionEndTIme),
    SessionDuration = as_hms(SessionDuration)
  )

# Verify the data types after the conversion
str(data)

View(data)

head(data)

# Get summary statistics of the dataset
summary(data)

# Check the structure of the dataset
str(data)

# View the first few rows of the dataset
head(data)
View(data_cleaned)

data_cleaned <- data_cleaned %>%
  mutate(
    OrderConfirmationDate = as.character(OrderConfirmationDate),  # Convert to character
    OrderConfirmationDate = if_else(OrderConfirmationDate == "", NA_character_, OrderConfirmationDate)  # Replace empty strings with NA
  )

View(data_cleaned)

# Checking the distribution of categorical variables
table(data_cleaned$Gender)
table(data_cleaned$Country)
table(data_cleaned$Category)
table(data_cleaned$Product)

# Converting time columns to a datetime format
data_cleaned$SessionStartTime <- strptime(data_cleaned$SessionStartTime, format="%H:%M")
data_cleaned$SessionEndTime <- strptime(data_cleaned$SessionEndTIme, format="%H:%M")

# Calculate duration in minutes
data_cleaned$SessionDuration <- as.numeric(difftime(data_cleaned$SessionEndTime, data_cleaned$SessionStartTime, units="mins"))

# Check the first few rows
head(data_cleaned$SessionDuration)


rm(data_cleaned)


# Session Start Count (count all sessions)
session_start_count <- nrow(data)

# Cart Addition Count (count rows where CartAdditionFlag is not missing or 0)
cart_addition_count <- sum(data$CartAdditionFlag == 1, na.rm = TRUE)

# Order Confirmation Count (count rows where OrderConfirmationFlag is not missing or 0)
order_confirmation_count <- sum(data$OrderConfirmationFlag == 1, na.rm = TRUE)

# Payment Count (count rows where PaymentFlag is not missing or 0)
payment_count <- sum(data$PaymentFlag == 1, na.rm = TRUE)

# Return Count (count rows where ReturnFlag is not missing or 0)
return_count <- sum(data$ReturnFlag == 1, na.rm = TRUE)

# Print the counts for each stage
cat("Session Start Count:", session_start_count, "\n")
cat("Cart Addition Count:", cart_addition_count, "\n")
cat("Order Confirmation Count:", order_confirmation_count, "\n")
cat("Payment Count:", payment_count, "\n")
cat("Return Count:", return_count, "\n")

View(duplicate_payments)
              

