--Q4 !
select full_name, title
from mc_artist
inner join mc_artwork on mc_artist.artist_id = mc_artwork.artist_id
inner join mc_artwork_exh on mc_artwork.artwork_id = mc_artwork_exh.artwork_id
--inner join mc_artwork_exh on mc_artwork_exh.exhibition_id = MC_EXHIBITION.EXHIBITION_ID
--where title = 'Modern Voices';
