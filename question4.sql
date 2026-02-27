--Q4
select mc_artist.full_name, mc_artwork.title
from mc_artist
inner join mc_artwork 
  on mc_artist.artist_id = mc_artwork.artist_id
inner join mc_artwork_exh 
  on mc_artwork.artwork_id = mc_artwork_exh.artwork_id
inner join mc_exhibition 
  on  mc_exhibition.exhibition_id = mc_artwork_exh.exhibition_id 
where mc_exhibiton.title = 'Modern Voices'
order by mc_artist.full_name;

