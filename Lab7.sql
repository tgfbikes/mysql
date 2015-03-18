use books;

# What is the average price of books

SELECT
	ROUND(AVG(price),2) AS "Average Price"
FROM
	titles;


# How many books are in the table

SELECT
	COUNT(title_id) AS 'Qty'
FROM
	titles;


# What is the total sales volume (price * sales) of the books

SELECT
	SUM(price)*SUM(sales) AS 'Volume'
FROM
	titles;


# What is the average number of pages by book type

SELECT
	type,
	ROUND(AVG(pages),0) AS 'Average Pages'
FROM
	titles
GROUP BY type;



# Display all book types and the average number of pages if the average is greater than 500

SELECT
	type,
	ROUND(AVG(pages),0) AS 'Average Pages'
FROM
	titles
GROUP BY type
HAVING
	AVG(pages) > 500;


# Same as above but sort by average number of pages

SELECT
	type,
	ROUND(AVG(pages),0) AS 'Average Pages'
FROM
	titles
GROUP BY type
HAVING
	AVG(pages) > 500
ORDER BY pages ASC;


# How many states are in the authors table

SELECT
	COUNT(DISTINCT state) AS 'Number of States'
FROM
	authors;


# Subtotal the number of authors from each state

SELECT
	state,
	COUNT(*) AS '# of Authors'
FROM
	authors
GROUP BY state;


# Subtotal the number of books in each type except children

SELECT
	type,
	COUNT(*) AS '# of Books'
FROM
	titles	
WHERE
	type <> 'children'
GROUP BY type;

# Same as above but having count greater than 1

SELECT
	type,
	COUNT(*) AS '# of Books'
FROM
	titles	
WHERE
	type <> 'children'
GROUP BY type
HAVING COUNT(*) > 1;

