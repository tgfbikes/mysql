

use books;

# List the title id, title name, and primary author of all books

select
  distinct titles.title_id,
	titles.title_name,
	authors.au_lname
from
  titles
inner join title_authors on
	titles.title_id = title_authors.title_id
inner join authors on
	title_authors.au_id = authors.au_id;


# List the title id, title name, publisher id, ad publisher name of all books

select
	titles.title_id,
	titles.title_name,
	publishers.pub_id,
	publishers.pub_name
from
	titles
inner join publishers on
	titles.pub_id = publishers.pub_id
order by
	titles.title_id;


# Same as above except books published only in CA

select
	titles.title_id,
	titles.title_name,
	publishers.pub_id,
	publishers.pub_name
from
	titles
inner join publishers on
	titles.pub_id = publishers.pub_id
where
	publishers.state = 'CA'
order by
  titles.title_id;	


# List type and number of books published in CA

select
	titles.type,
	title_authors.au_order as 'Number'
from
	titles
inner join title_authors on
	titles.title_id = title_authors.title_id
inner join publishers on
	titles.pub_id = publishers.pub_id
where
	publishers.state = 'CA'
group by
	titles.type;









