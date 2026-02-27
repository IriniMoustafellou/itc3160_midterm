--Q9
create view view_exhibition as
select mc_exhibition.exhibition_id, mc_exhibition.title as exhibition_title, mc_artwork.artwork_id, mc_artwork.title as artwork_title
from mc_exhibition
inner join mc_artwork_exh 
  on mc_exhibition.exhibition_id = mc_artwork_exh.exhibition_id
inner join mc_artwork
  on mc_artwork_exh.artwork_id = mc_artwork.artwork_id;
