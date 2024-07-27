# Ebay_Perfume
### Introduction
The eBay perfume dataset is obtained from the eBay e-commerce site showing the male and female categories of the perfumes sold. The dataset comprised 65,000 rows and 5 columns
### Data Processing 
- Changing of data type: 
- Filling the null: Filling up the empty rows with zero
- Removing invalid texts
### Exploratory Data Analysis
- Highlighted the products with the highest sales
### Data Analysis
This includes SQL queries that were used to run the analysis
```sql
select brand, itemLocation, count (availableText)
  from [dbo].['ebay_womens_perfume(1)$'] 
  where availableText like '%Out of Stock%'
  group by brand, itemLocation
```
### Result and Findings
