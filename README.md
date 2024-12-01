# E-Commerce Funnel Analysis: Optimizing Customer Journey for Conversions

## Overview

This project analyzes customer behavior in an e-commerce sales funnel to identify areas of improvement and optimize conversions. By leveraging the **Customer360 Insights** dataset, I analyzed the customer journey and provided recommendations for improving the user experience and increasing sales.

[View the Tableau Dashboard](https://public.tableau.com/views/ecommercefunnelanalysis/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  
[Access the Google Sheets (Original and Updated Data)](https://docs.google.com/spreadsheets/d/1Wxq-XJGktQeRInHruGaJCnPkGVrrM-ABrrQ-AzUAY5s/edit?usp=sharing)  
[Kaggle Dataset - Customer360 Insights](https://www.kaggle.com/datasets/davedarshan/customer360insights)

---

## Table of Contents

1. [Ask](#ask)
2. [Prepare](#prepare)
3. [Process](#process)
4. [Analyze](#analyze)
5. [Share](#share)
6. [Act](#act)
7. [Next Steps & Impact](#next-steps--impact)
8. [Acknowledgments](#acknowledgments)

---

## Ask

The goal of this analysis is to answer the following key questions:

1. **Funnel Performance:** How efficiently are customers moving through the e-commerce funnel?
2. **Drop-Off Points:** Where are customers leaving the sales process?
3. **Behavioral Patterns:** What behaviors can be observed at each funnel stage?
4. **Optimization Opportunities:** How can we improve the sales funnel to increase conversions and reduce drop-offs?

---

## Prepare

### Data Collection
- The dataset used for this analysis, **Customer360 Insights**, was obtained from Kaggle and includes customer interaction data such as session times, purchases, and demographic information.

### Data Cleaning
- I cleaned the data by removing duplicates, handling missing values, and segmenting it into distinct funnel stages for easier analysis.

[Access the Google Sheets (Original and Updated Data)](https://docs.google.com/spreadsheets/d/1Wxq-XJGktQeRInHruGaJCnPkGVrrM-ABrrQ-AzUAY5s/edit?usp=sharing)  

---

## Process

I performed **Exploratory Data Analysis (EDA)** using R and Tableau to identify key patterns and trends. Below is a breakdown of the stages:

### Funnel Analysis
- **Session to Cart Conversion:** 100% of customers added items to their cart after visiting the website.
- **Cart to Order Conversion:** 85% of users completed their purchase, while 15% abandoned their carts.
- **Order to Payment Conversion:** 100% of confirmed orders were paid for after checkout.

**Visualization: Funnel Analysis**  
![Funnel Analysis](https://github.com/user-attachments/assets/6980114c-431a-405f-9925-ed14246c707c)

---

## Analyze

### Key Insights from EDA Visualizations

1. **Product Distribution:**
   - **Action figures** and **microwave ovens** are the best-performing products, while **table lamps** and **plush toys** underperform.
  ![product distribution](https://github.com/user-attachments/assets/7e7e3f46-620f-4bde-80dc-7189ae42a7dd)

2. **Gender Distribution:**
   - A balanced customer base of roughly 1000 individuals from both genders, allowing for targeted marketing campaigns.
   ![Gender Distribution](https://github.com/user-attachments/assets/ac5331cd-1839-455e-8b22-3a99b4c73b56)

3. **Product Categories:**
   - The **home appliances** and **toys** categories are the most popular, suggesting potential for **promotions** in these areas.
   ![category distibution](https://github.com/user-attachments/assets/a64fbaad-edd2-4ced-b72d-167880a56da3)

4. **Monthly Income:**
   - The majority of customers earn between **$6000-$7000** monthly, offering a guide for **pricing strategies**.
 ![Distribution of Monthly Income](https://github.com/user-attachments/assets/b64e2ec8-d86f-4737-9c3e-88b81492d5d0)

5. **Age Distribution:**
   - Most customers are between **20-40** years old, with notable groups in the **50-60** and **70-80** age ranges.
   ![Distribution of Age](https://github.com/user-attachments/assets/8eaa98fd-a02d-49ef-81d0-f44da8e05e0a)

6. **Credit Score Distribution:**
   - Most customers have credit scores between **600-750**, indicating opportunities for **financing options**.
   ![Credit Score Distribution](https://github.com/user-attachments/assets/23d3fcae-981c-4871-82ed-f30b882d1fc5)

7. **Country Distribution:**
   - **Canada** has the largest customer base, followed by **India**, **Australia**, and **China**, highlighting a need for **region-specific marketing**.
  ![country distribution](https://github.com/user-attachments/assets/99ae940f-51a3-44fa-b389-a40ce04207cd)

8. **Conversion by Gender:**
   - Both genders have similar conversion rates, with males slightly outperforming females during the **cart-to-order** stage.
   ![Conversion Rates by Gender](https://github.com/user-attachments/assets/d8c09963-b9d8-47f2-b9d9-802bee920dc4)


9. **Campaign Effectiveness:**
   - **Instagram Ads** perform the best, followed by **Google Ads** and **Facebook Ads**, suggesting an opportunity to **optimize ad spend**.
   ![category distibution](https://github.com/user-attachments/assets/65b54b5f-2006-459c-a020-7420ef9425cd)

---

## Share

### Key Findings:
- **Product & Category Focus:** Prioritize marketing for **home appliances** and **toys**, which are the highest-performing categories.
- **Gender & Income Insights:** Tailor marketing campaigns based on **gender** and **income demographics**.
- **Geographic Strategy:** Focus on **Canada** for region-specific marketing initiatives.

![Dashboard](https://github.com/user-attachments/assets/53bc5106-1a89-4db2-bdc6-2919f6e23120)

[View the Tableau Dashboard](https://public.tableau.com/views/ecommercefunnelanalysis/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  
---

## Act

### Actionable Recommendations:

1. **Simplify the Checkout Process:**
   - Streamline the checkout flow to reduce abandonment. Implement **guest checkout**, add **security badges**, and optimize the number of steps.

2. **Improve Product Pages:**
   - Enhance **product descriptions**, include **high-quality images**, and add **customer reviews** to reduce decision fatigue.

3. **Target Canada Market:**
   - Run **targeted marketing campaigns** in Canada, potentially offering **bilingual options** for a more inclusive experience.

4. **Test Different Checkout Flows:**
   - Conduct **A/B testing** to experiment with different checkout flows and identify the most efficient design.

---

## Next Steps & Impact

### Next Steps:
1. **Investigate Product Returns:** Analyze reasons for high return rates and improve product descriptions and quality.
2. **User Testing:** Conduct user testing on the checkout process to pinpoint pain points and improve conversion rates.
3. **Run A/B Tests:** Try different designs for the checkout flow and product pages to determine what works best for customers.

### Impact:
By addressing issues such as **cart abandonment** and improving **product descriptions**, businesses can increase conversions, reduce drop-offs, and ultimately enhance profitability. This analysis highlights the value of data-driven decisions for improving both the customer journey and the business outcome.

---

## Acknowledgments

I would like to thank the following for their support:

- **Kaggle** for providing the **Customer360 Insights** dataset, which served as the foundation of this analysis.
- **Google Sheets** for its easy-to-use functionality, enabling quick data preparation and calculations.
- **Tableau** for offering powerful visualization tools that allowed me to present the data in an engaging, interactive format.
- **R** for providing statistical capabilities that helped deepen the analysis and uncover critical insights.
