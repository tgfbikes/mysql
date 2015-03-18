

select
	title_id,
	titles.pub_id,
	pub_name
from
	titles,
	publishers
where
	titles.pub_id = publishers.pub_id;

(select
	title_id,
	titles.pub_id,
	pub_name
from
	titles
left join
	publishers
		on titles.pub_id = publishers.pub_id)
union
(select
	title_id,
	titles.pub_id,
	pub_name
from
	titles
right join
	publishers
		on titles.pub_id = publishers.pub_id);


#problem 1
select
	t.title_id,
  a.au_id	
from
	title_authors as ta
join
	titles as t
		on ta.title_id = t.title_id
join
	authors as a
		on ta.au_id = a.au_id;
