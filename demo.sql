# price list with discount
select
	title_name,
	price as "List Price",
	round (price*.10,2) as "You Saved",
	round (price*.90,2) as "Sales Price"
from
	titles;

# add fname and lname

select
	concat(au_fname," ", au_lname)
from
	authors;

# only 415 area codes

select
	au_lname,
	phone
from
	authors
where
	substr(phone from 1 for 3)='415';

# capitalize

select
	au_lname,
	upper(au_lname),
	lower(au_lname)
from
	authors;

# trim, takes away all white space

select
	trim(au_lname),
	character_length(trim(au_lname)),
	character_length(au_lname)
from
	authors;

# dates

select
	title_id,
	extract(year from pubdate) as "Year"
from 
	titles
where
	extract(year from pubdate) between 2001 and 2002;

select
	title_id,
	title_name,
	pubdate + interval 26 year as "Copyright Expire"
from
	titles;
