select * from active_cal;
--jan cals
select round(avg(active_cal),2) 
as jan_2020_cals
from active_cal
where full_date > '2020-01-01'
and full_date < '2020-02-01';

--extracting dates
select extract(month from full_date)
from active_cal;

--monthly avg cal for 2020
select round(avg(active_cal)) as avg_cal, extract(month from full_date) as mo_2020
from active_cal
where full_date < '2020-12-31' and full_date > '2020-01-01'
group by extract(month from full_date)
order by extract(month from full_date);

--monthly avg cal for all years, organized by year then by month 
select round(avg(active_cal)) as avg_cal,  extract(year from full_date) as yr, extract(month from full_date) as mo
from active_cal
group by extract(year from full_date), extract(month from full_date)
order by extract(year from full_date), extract(month from full_date);

