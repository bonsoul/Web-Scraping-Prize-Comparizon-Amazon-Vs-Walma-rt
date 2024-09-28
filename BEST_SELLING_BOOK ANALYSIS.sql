--Reading the dataset
SELECT *
FROM Amazon_Best_Selling_Books

--Number of Rating_Count on StarRating
SELECT StarRating, COUNT(*) Rating_Count
FROM Amazon_Best_Selling_Books
GROUP BY StarRating

-- Average Price
SELECT ROUND(AVG(Price),2 ) Average_Price
FROM Amazon_Best_Selling_Books

--Most Expensive Book in Amazon
SELECT Top 1 Title,ROUND(price,2)
FROM Amazon_Best_Selling_Books
ORDER BY Price DESC

-- Most Cheapest Book in Amazon
SELECT Top 1 Title,ROUND(price,2) Price
FROM Amazon_Best_Selling_Books
ORDER BY Price ASC

-- Group Books by Star Rating and Show Average Price per Group
SELECT StarRating, ROUND(AVG(Price),2) AS AvgPrice
FROM Amazon_Best_Selling_Books
GROUP BY StarRating

-- Total Cost for Amazon Books and Number Books
SELECT 
    ROUND(SUM(Price),2) AS TotalPrice,
    COUNT(*) AS NumberOfBooks
FROM Amazon_Best_Selling_Books

-- Walmart Analysis

SELECT *
FROM walmart_best_selling_books

--Number of Rating_Count on StarRating
SELECT StarRating, COUNT(*) Rating_Count
FROM walmart_best_selling_books
GROUP BY StarRating

-- Average Price
SELECT ROUND(AVG(Price),2 ) Average_Price
FROM walmart_best_selling_books

--Most Expensive Book in Amazon
SELECT Top 1 Title,ROUND(price,2)
FROM walmart_best_selling_books
ORDER BY Price DESC

-- Most Cheapest Book in Amazon
SELECT Top 1 Title,ROUND(price,2) Price
FROM Amazon_Best_Selling_Books
ORDER BY Price ASC

-- Group Books by Star Rating and Show Average Price per Group
SELECT StarRating, ROUND(AVG(Price),2) AS AvgPrice
FROM walmart_best_selling_books
GROUP BY StarRating

-- Total Cost for Amazon Books and Number Books
SELECT 
    ROUND(SUM(Price),2) AS TotalPrice,
    COUNT(*) AS NumberOfBooks
FROM walmart_best_selling_books

-- END---

