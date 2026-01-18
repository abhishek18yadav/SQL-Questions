show DATABASEs;

use  college;
show TABLES;

select * from person;

-- select lastName from person where strftime('%J' , firstName) = 'John';
select lastName from person where firstName LIKE 'J%';