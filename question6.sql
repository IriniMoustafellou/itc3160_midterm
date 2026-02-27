--Q6
select MC_EXHIBITION.exhibition_id, MC_EXHIBITION.title, MC_EXHIBITION.start_date, MC_EXHIBITION.end_date, MC_EXHIBITION.curator_id, (MC_EXHIBITION.end_date - MC_EXHIBITION.start_date) as min_duration
from MC_EXHIBITION;

