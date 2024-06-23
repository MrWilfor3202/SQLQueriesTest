USE ProductsAndCategories;

SELECT Product.ProductName, Category.CategoryName FROM Product LEFT JOIN ProductCategories 
	ON Product.ProductId = ProductCategories.ProductId LEFT JOIN Category 
		ON Category.CategoryId = ProductCategories.CategoryId