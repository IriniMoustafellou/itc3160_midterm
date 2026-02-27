--Q7
select mc_artwork.title, mc_location.name
from mc_artwork
inner join mc_location 
  on mc_location.location_id = mc_artwork.current_loc
inner join mc_artwork_exh
  on mc_artwork_exh.artwork_id = mc_artwork.artwork_id
where exhibition_id = 3001;
