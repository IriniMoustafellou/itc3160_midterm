--Q7
select title, mc_location.name
from mc_artwork
inner join mc_location on mc_location.location_id = mc_artwork.CURRENT_LOC
inner join MC_ARTWORK_EXH on MC_ARTWORK_EXH.artwork_id = mc_artwork.artwork_id
where exhibition_id = 3001;