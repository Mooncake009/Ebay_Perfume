SELECT TOP (1000) [brand]
      ,[title]
      ,[type]
      ,[price]
      ,[priceWithCurrency]
      ,[available]
      ,[availableText]
      ,[sold]
      ,[lastUpdated]
      ,[itemLocation]
  FROM [All Assignments ].[dbo].['ebay_womens_perfume(1)$']

  select *
  From [dbo].['ebay_womens_perfume(1)$']

  --AGGREGATE FUNCTIONS (COUNT, MAX, MIN, AVG, SUM) // REMEMBER TO ALWAYS USE THE GROUPBY FUNCTION WHEN USING ANY OF THE AGG FUNCTIONS 
  --Using Sum;
  select brand, SUM(available) Total_Available 
  from [dbo].['ebay_womens_perfume(1)$']
  group by brand 
  order by Total_Available desc

  ---Using AVG
  select brand, type, AVG(price) Average_Total_Price 
  from [dbo].['ebay_womens_perfume(1)$']
  group by brand, type

  ---Using COUNT //  Count of brand and thier respective location having out of stock
  select brand, itemLocation, count (availableText)
  from [dbo].['ebay_womens_perfume(1)$'] 
  where availableText like '%Out of Stock%'
  group by brand, itemLocation
  
  ---Using WHERE and HAVING show brand and type with sales above 50 in locations having united states 
  select brand, type, itemLocation, sum(price) Price_above50
  from [dbo].['ebay_womens_perfume(1)$']
  where itemLocation like '%United States%'
  group by brand, type, itemLocation
  having sum(price) >50
  order by Price_above50 desc

  ---Window Function (OVER and PARTITION)
  select brand, title, price, type, AVG(price) over(Partition by type) AS Avg_price
  from [dbo].['ebay_womens_perfume(1)$']

  ---ROW NUMBER 
  select brand, type, price, ROW_NUMBER() over(order by price desc) as ROW_N 
  from [dbo].['ebay_womens_perfume(1)$']

  --Dense Rank 
   select brand, type, price, dense_Rank() over(order by price desc) as Most_Pricey
   from [dbo].['ebay_womens_perfume(1)$']




