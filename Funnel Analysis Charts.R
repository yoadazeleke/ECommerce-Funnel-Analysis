library(ggplot2)

ggplot(data_cleaned, aes(x = Gender)) +
  geom_bar(fill = "skyblue") +
  theme_minimal() +
  labs(title = "Gender Distribution", x = "Gender", y = "Count")

ggplot(data_cleaned, aes(x = reorder(Country, Country, function(x) -length(x)))) +
  geom_bar(fill = "lightgreen") +
  theme_minimal() +
  labs(title = "Country Distribution", x = "Country", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

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