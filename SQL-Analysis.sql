#  SQL Queries for analyze the data

#### How many lines are there?

SELECT COUNT(*) FROM grocery

**Results:**
  
Lines|
-----|
2404|

#### 10 brands with the most products?

SELECT TOP 10 Brand, COUNT(Brand) AS Brand_Number FROM grocery GROUP BY Brand ORDER BY Brand_Number DESC

**Results:**
  
Brand|Brand_Number|
-----|------------|
Twinings|69|
Clipper|52|
Pukka Herbs|45|
Lavazza|	42|
Tea Pigs|34|
Lindt|25|
T2 Tea|25|
VAHDAM|25|
Valley of Tea|25|
Taylors of Harrogate|23|

#### Top 10 seller most have buy boxes 

SELECT TOP 10  Buy_Box, COUNT(Buy_Box) AS Buy_Boxes FROM grocery GROUP BY Buy_Box ORDER BY Buy_Boxes DESC

**Results:**
  
Buy_Box|Buy_Boxes|
-------|---------|
Amazon|947|
FoodServiceDirect|55|
SuperfoodUK|41|
Vahdam Teas|25|
Valley of Tea|25|
Superfood Market|23|
Welari|20|
Choice Masters|20|
Coffee Masters UK|20|
Universal Product Solutions|19|

#### Show the Monin Special Product

SELECT  Product_Details, Brand, Price, Sales, Revenue, FBA_Fees, Active_Sellers_, Review_Count, Buy_Box, Category FROM grocery WHERE Product_Details LIKE '%Monin Special%'

**Results:**

Product_Details|Brand|Price|Sales|Revenue|FBA_Fees|Active_Sellers_|Review_Count|Buy_Box|Category|
---------------|-----|-----|-----|-------|--------|---------------|------------|-------|--------|
Monin Special Occasion Coffee Syrups Gift Set, Gingerbread, Salted Caramel, Honeycomb, 150 millilitre|Monin|749.00|37460.0|280580.0|282.00|30.0|57650.0|Universal Product Solutions|Drinks

#### Which product has the most price?

SELECT  Product_Details, Brand, Price, Sales, Revenue, FBA_Fees, Active_Sellers_, Review_Count, Buy_Box, Category FROM grocery WHERE Price = (SELECT MAX(Price) from grocery)

**Results:**
  
Product_Details|Brand	Price|Sales|Revenue|FBA_Fees|Active_Sellers_|Review_Count|Buy_Box|Category|
---------------|-----------|-----|-------|--------|---------------|------------|-------|--------|
illy Intenso Dark Roast Iperespresso Capsules, 141g (Pack of 2, Total 42 Capsules), Packaging may vary|illy|6498.00|80.0|5200.0|126.00|10.0|1520.0|Amazon|Drinks|

#### Most Fba fees product?
  
SELECT  Product_Details, Brand, Price, Sales, Revenue, FBA_Fees, Active_Sellers_, Review_Count, Buy_Box, Category FROM grocery WHERE FBA_Fees = (SELECT MAX(FBA_Fees) from grocery  )

**Results:**

Product_Details|Brand|Price	|Sales|Revenue|FBA_Fees|Active_Sellers_|Review_Count|Buy_Box|Category|
---------------|-----|------|-----|-------|--------|---------------|------------|-------|--------|
Ella's Kitchen Organic Smoothie Multipack Fruits Mixed Case Selection The Red, Green, Orange, Yellow, Purple, Pink One (6 x 5 x 90 g)	Ella's Kitchen|2899.00|200.0|5800.0|998.00|10.0|440.0|Free From Direct|Drinks

#### How many delivery companies

SELECT Delivery,COUNT(*) Delivery FROM grocery GROUP BY Delivery

**Results:**

Delivery|Delivery|
--------|-------|
AMZ	|935|
FBA	|1058
MFN	|411|

### Average prices of Twinings products over 100

SELECT Product_Details, AVG(Price) AS Avarage_Price
FROM grocery WHERE Brand = 'Twinings'
GROUP BY Product_Details, Price, Brand 
HAVING AVG(Price) > 100
ORDER BY Avarage_Price  DESC

**Results:**

Product_Details|Avarage_Price|
---------------|-------------|
Twinings Variety Selection Superblends 42 Foil Wrapped Envelopes All 13 Delicious Flavours|	1699.000000	
Twinings Cold Infuse Blueberry Apple and Blackcurrant, New Improved Taste, 72 Teabags (Multipack of 6 x 12 Biodegradable Infusers)	|1505.000000	
Twinings English Strong Breakfast Tea, 320 Tea Bags (Multipack of 4 x 80 Tea Bags)|	1454.000000	
Twinings Cold Infuse Watermelon Strawberry and Lemon, New Improved Taste, 72 Teabags (Multipack of 6 x 12 Infusers)|	1377.000000	
Twinings Variety Selection Pack 25 Flavours. 30 Foil Wrapped Tea Bags. Green Tea,Herbal Teas,Superblends,Fruit Infusions and Classic Black Teas|	1299.000000	
Twinings Inner Peace Sweet Fig and Rooibos Tea with Ashwaganda , 72 Tea Bags (Multipack of 4 x 18 Teabags)	|1207.000000	
Twinings Chocolate Coconut Green Tea 80 Tea Bags (Multipack of 4 x 20 Envelopes)|	1076.000000	
Twinings Cold In fuse Waterbottle Plus 3 Infusers|	999.000000	
Twinings Gingerbread Green Tea, 80 Envelopes (Multipack of 4 x 20 Envelopes)|	918.000000	
Twinings Special Treats Collection Gift Set (40 Teabags), Perfect Alternative Birthday Present	|849.000000	
Twinings Pure Green Tea 80 Single Tea Bags, 200g	|845.000000	
Twinings Pure Peppermint 20 Tea Bags - Pack of 4 (Total of 80 tea bags)	|804.000000	
Twinings Green Tea Selection Variety Gift Set (40 Teabags), Perfect Alternative Birthday Present|753.000000	
Twinings | Fruit Selection | 1 x 20 Bags	|746.000000	
Twinings Lemon and Ginger Fruit Infusion Tea Bags (Pack of 20)	|649.000000	
Twinings Earl Grey 50 Enveloped Individually Wrapped Teabags Per Box	|625.000000	
Twinings Cranberry Green, 20 Tea Bags	|599.000000
50 x Twinings Everyday Teabags - Individual Enveloped & Tagged Tea Bags|	399.000000	
Twinings Tea Bags Individual Enveloped Tagged Classic and Flavoured Selections (15 Tea Envelopes)|	349.000000	
Twinings Superblends Digest Tea Bags, 20 each|	299.000000	
Twinings Superblends Focus Tea Bags, 20 each	|299.000000	
Twinings Superblends Glow Tea, 20 Tea Bags|	299.000000	
Twinings Pineapple and Lychee Herbal Tea bags, 20 Tea bags	|249.000000	
Twinings Camomile and Grapefruit Herbal Tea bags, 20 Tea bags	|212.000000	
25 x Twinings Everyday Teabags - Individual Enveloped & Tagged Tea Bags	|186.000000	
Twinings Blackcurrant & Blueberry Envelope Tea Bags - 4 x 20 (Total 80)	|150.000000	
Twinings Decaffeinated Everyday Tea 320 Tea Bags, (Multipack of 4 x 80 Tea Bags)	|140.000000	
Twinings English Afternoon Tea 400 Tea Bags (Multipack of 4 x 100 Tea Bags)	|140.000000	
Twinings Superblends Beetroot Tea with Ginger & Orange, 20 Teabags	|135.000000	
Twinings Superblends Heartea Tea Bags, 20 each	|135.000000	
Twinings Fruit Selection, Mixed Set of 80 Tea Bags (Multipack of 4 x 20 Tea Bags)	|108.000000	

### Max fee from Automotive category

SELECT Product_Details, Brand, Price, Sales, MAX(FBA_Fees) AS Max_Fee
FROM grocery
WHERE Category = 'Automotive'
GROUP BY FBA_Fees, Product_Details, Brand, Price, Sales

**Results:**

Product_Details|Brand|Price|Sales|Max_Fee|
---------------|-----|-----|-----|-------|
Dr Beckmann Carpet Stain Remover with Cleaning applicator/brush-650ml, White, 10 x 30 x 35 cm|Dr. Beckmann|279.00|37830.0|293.00











