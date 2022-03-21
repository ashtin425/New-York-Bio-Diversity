-- Looking at the NYBio table
select * from NYBio

-- Looking at distict common names of different plants and how many counties each one is in
select count(*) as plantcnty, [Common Name]
from NYBio
where Category = 'plant'
group by [Common Name]
order by 1 desc

-- After picking the Dragon's Mouth Orchid, creating a information table to output to Tableau
select distinct [Common Name], [Scientific Name], [Taxonomic Subgroup], County, [Year Last Documented]
from NYBio
where [Common Name] like 'Dragon%s Mouth Orchid'
order by County asc