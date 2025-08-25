# Market Basket Analysis for UK Retail using FP-Growth

## Project Overview
This project applies advanced Market Basket Analysis techniques on an extensive UK retail dataset to discover meaningful product associations, enabling data-driven cross-selling, bundling, and inventory optimization strategies. The analysis uses FP-Growth, a scalable frequent pattern mining algorithm, and generates actionable association rules.

## Dataset
- Online retail transactions from the United Kingdom.
- Includes Invoice IDs, product descriptions, quantities, dates, and customer information.
- Cleaned to remove incomplete records.

## Key Objectives
- Identify frequent product itemsets using the FP-Growth algorithm.
- Generate and analyze association rules focusing on support, confidence, and lift.
- Visualize product relationships and rule metrics to extract business insights.
- Examine temporal sales trends for top-selling products.
- Provide recommendations for marketing, inventory, and customer segmentation.

## Methodology
1. **Data Preprocessing:** Clean dataset, remove negative transactions, filter by UK country.
2. **Basket Construction:** Transform transaction data into a binary item presence matrix.
3. **Frequent Itemsets Mining:** Run FP-Growth with a minimum support threshold.
4. **Association Rule Generation:** Select rules based on lift and confidence metrics.
5. **Visualization:** Utilize scatter plots, network graphs, bar charts, and trend lines for insights.
6. **Temporal Analysis:** Analyze monthly sales trends for high-volume products.

## Tools & Libraries
- Python 3.7+
- pandas, numpy for data manipulation
- mlxtend for FP-Growth and association rules
- matplotlib, seaborn for visualization
- networkx for graph visualization

## Results & Insights
- Discovered strong product clusters (e.g., "POPPY'S PLAYHOUSE" series, "KEY FOB" sets).
- Identified high-lift item pairs valuable for bundling and targeted promotions.
- Uncovered seasonal sales patterns, aiding inventory and marketing planning.
- Provided actionable business recommendations based on rule strengths.
  
## How to Run
1. Clone the repository.
2. Install dependencies: `pip install -r requirements.txt`
3. Run `market_basket_analysis.ipynb` Jupyter Notebook to reproduce the analysis.



