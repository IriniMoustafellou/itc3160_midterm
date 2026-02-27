--Q3
select mc_artwork.artwork_id, mc_artwork.title, round(mc_artwork.est_value/5,2) as annual_insured_value
from mc_artwork;

