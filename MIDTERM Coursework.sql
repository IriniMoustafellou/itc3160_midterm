--MIDTERM Coursework

--Q1
SELECT MC_ARTWORK.CURRENT_LOC, MC_ARTWORK.EST_VALUE
FROM MC_ARTWORK
INNER JOIN MC_LOCATION 
  ON MC_ARTWORK.CURRENT_LOC = MC_LOCATION.LOCATION_ID
WHERE MC_LOCATION.NAME = 'Gallery A'
  AND MC_ARTWORK.EST_VALUE > 1000000;

--Q2
SELECT *
FROM MC_ARTWORK
WHERE EST_VALUE >= 100000000;

--Q3
select mc_artwork.artwork_id, mc_artwork.title, round(mc_artwork.est_value/5,2) as annual_insured_value
from mc_artwork;

--Q4
select mc_artist.full_name, mc_artwork.title
from mc_artist
inner join mc_artwork 
  on mc_artist.artist_id = mc_artwork.artist_id
inner join mc_artwork_exh 
  on mc_artwork.artwork_id = mc_artwork_exh.artwork_id
inner join mc_exhibition 
  on  mc_exhibition.exhibition_id = mc_artwork_exh.exhibition_id 
where mc_exhibition.title = 'Modern Voices'
order by mc_artist.full_name;

--Q5
select mc_artwork.title
from mc_artwork
inner join mc_collection 
  on mc_collection.collection_id = mc_artwork.collection_id
where mc_artwork.est_value > 
  (select avg(mc_artwork.est_value) from mc_artwork);

--Q6
select MC_EXHIBITION.exhibition_id, MC_EXHIBITION.title, MC_EXHIBITION.start_date, MC_EXHIBITION.end_date, MC_EXHIBITION.curator_id, (MC_EXHIBITION.end_date - MC_EXHIBITION.start_date) as min_duration
from MC_EXHIBITION;

--Q7
select mc_artwork.title, mc_location.name
from mc_artwork
inner join mc_location 
  on mc_location.location_id = mc_artwork.current_loc
inner join mc_artwork_exh
  on mc_artwork_exh.artwork_id = mc_artwork.artwork_id
where exhibition_id = 3001;

--Q8
select mc_artwork.title, mc_artwork_exh.label_text
from mc_artwork
inner join mc_artwork_exh 
  on mc_artwork.artwork_id = mc_artwork_exh.artwork_id
inner join mc_exhibition 
  on mc_artwork_exh.exhibition_id = mc_exhibition.exhibition_id
inner join mc_curator 
  on mc_exhibition.curator_id = mc_curator.curator_id
where mc_artwork_exh.label_text is not null 
  and (mc_curator.full_name like '%Maria'
  or mc_curator.full_name like '%Pappas')
order by mc_artwork.title;

--Q9
create view view_exhibition as
select mc_exhibition.exhibition_id, mc_exhibition.title as exhibition_title, mc_artwork.artwork_id, mc_artwork.title as artwork_title
from mc_exhibition
inner join mc_artwork_exh 
  on mc_exhibition.exhibition_id = mc_artwork_exh.exhibition_id
inner join mc_artwork
  on mc_artwork_exh.artwork_id = mc_artwork.artwork_id;

--Q10
SELECT COUNT(DISTINCT exhibition_id) AS exhibition_count
FROM view_exhibition
WHERE artwork_id = 1001;