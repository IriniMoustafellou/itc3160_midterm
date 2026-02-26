--Q5
select mc_artwork.title
from mc_artwork
inner join mc_collection on mc_collection.collection_id = mc_artwork.collection_id
where est_value >(select avg(est_value) from mc_artwork);
