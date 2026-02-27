--Q8
select mc_artwork.title, mc_artwork_exh.label_text
from mc_artwork
left join mc_artwork_exh on mc_artwork.artwork_id = mc_artwork_exh.artwork_id
inner join mc_exhibition on mc_artwork_exh.exhibition_id = mc_exhibition.exhibition_id
inner join mc_curator on mc_exhibition.curator_id = mc_curator.curator_id
where label_text is not null and mc_curator.full_name like '%Maria'or mc_curator.full_name like '%Pappas'
order by title;