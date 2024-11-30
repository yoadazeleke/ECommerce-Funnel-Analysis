#Step 1 
# Stage 1: Session Start (check if SessionStartDate is not NA or missing)
data$SessionStartFlag <- !is.na(data$SessionStartTime)

# Stage 2: Cart Addition (check if CartAdditionDate is not NA or missing)
data$CartAdditionFlag <- !is.na(data$CartAdditionDate)

# Stage 3: Order Confirmation (assuming OrderConfirmation is TRUE/FALSE)
data$OrderConfirmationFlag <- data$OrderConfirmation == TRUE

# Optional Stage 4: Payment (check if PaymentMethod is not NA or missing)
data$PaymentFlag <- !is.na(data$PaymentMethod)

# Optional Stage 5: Return (check if OrderReturn is TRUE/FALSE)
data$ReturnFlag <- data$OrderReturn == TRUE

View(data)

#Step 2: Counting Users at Each Funnel Stage (Adjusted)
# Count of users at Session Start (users who have SessionStartFlag = TRUE)
session_start_count <- sum(data$SessionStartFlag, na.rm = TRUE)

# Count of users who added to Cart (users who have CartAdditionFlag = TRUE)
cart_addition_count <- sum(data$CartAdditionFlag, na.rm = TRUE)

# Count of users who confirmed their Order (users who have OrderConfirmationFlag = TRUE)
order_confirmation_count <- sum(data$OrderConfirmationFlag, na.rm = TRUE)

# Count of users who completed Payment (users who have PaymentFlag = TRUE)
payment_count <- sum(data$PaymentFlag, na.rm = TRUE)

# Count of users who returned their Order (users who have ReturnFlag = TRUE)
return_count <- sum(data$ReturnFlag, na.rm = TRUE)

# Print the counts for each stage
cat("Session Start Count:", session_start_count, "\n")
cat("Cart Addition Count:", cart_addition_count, "\n")
cat("Order Confirmation Count:", order_confirmation_count, "\n")
cat("Payment Count:", payment_count, "\n")
cat("Return Count:", return_count, "\n")


# Print Conversion Rates
cat("Session to Cart Conversion Rate:", session_to_cart_conversion, "%\n")
cat("Cart to Order Conversion Rate:", cart_to_order_conversion, "%\n")
cat("Order to Payment Conversion Rate:", order_to_payment_conversion, "%\n")

# Calculate Drop-off Rates
session_to_cart_dropoff <- 100 - session_to_cart_conversion
cart_to_order_dropoff <- 100 - cart_to_order_conversion
order_to_payment_dropoff <- 100 - order_to_payment_conversion

# Print Drop-off Rates
cat("Session to Cart Drop-off Rate:", session_to_cart_dropoff, "%\n")
cat("Cart to Order Drop-off Rate:", cart_to_order_dropoff, "%\n")
cat("Order to Payment Drop-off Rate:", order_to_payment_dropoff, "%\n")

write.csv(data, file = data, row.names = FALSE)

