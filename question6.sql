--Q6
select exhibition_id, title, start_date, end_date, curator_id, (end_date - start_date) as min_duration
from MC_EXHIBITION;
