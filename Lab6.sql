use books;

# Display all info
select
	title_id,
	title_name,
	price,
	round(price*.10,2) as "Discount",
	round(price*.90,2) as "New Price"
from
	titles;

# Display all authors names
select
	concat(au_lname,", ",au_fname) as "Name"
from
	authors;

# Display all search id and names of the authors
select
	concat(substr(upper(au_lname) from 1 for 3),"", substr(phone from 9 for 12)) as "Search ID",
	concat(au_lname,", ",au_fname) as "Name"
from
	authors;

# Display all the authors names and how long they are
select
	au_lname,
	character_length(au_lname) as "Length"
from
	authors;

# Display all the books IDs, titles, and year of publication
select
	title_id,
	title_name,
	extract(year from pubdate) as "year"
from
	titles;

# Display all the book ids, titles, publication date and copyright expire date(28 years).
select
	title_id,
	title_name,
	pubdate,
	pubdate + interval 28 year as "Copyright Date"
from
	titles;

# Display all book ids, titles, price, and new price (10% off history books 20% for everything else)
select
	title_id,
	title_name,
	price,
	CASE type
		WHEN 'history'
			THEN price - (price*.10)
		ELSE price - (price*.20)
	END
	AS "New Price"
from
	titles;
	
# Display all ids, names and price of books. (Note the priceless book)
select
	title_id,
	title_name,
	CASE type
		WHEN price IS NOT  NULL 
			THEN 'Priceless'
		ELSE price
	END
	AS "retail"
from
	titles;

# Display the current date and time.
select
	CURRENT_TIMESTAMP AS "Current Time";

# Display the current host machine.
select
	substr(CURRENT_USER from 6 for 12) AS "Server";





