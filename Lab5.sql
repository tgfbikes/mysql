# 1
show databases;
show tables;

use books;

# 2
select * from authors;

# 3
select au_id, au_fname from authors;

# 4
select distinct state from authors;

# 5
select title_id, title_name, price from titles order by price;

# 6
select title_id, title_name from titles where type = 'children';

# 7
select title_id, title_name from titles where type not in ('history', 'biography');

# 8
select au_id, au_fname, au_lname, phone from authors where phone like '%549%';

# 9
select au_id, au_fname, au_lname, zip from authors where zip between '90000' and '99999';

#10
select au_id, au_fname, au_lname, state from authors where state = 'NY' or state = 'CA';

