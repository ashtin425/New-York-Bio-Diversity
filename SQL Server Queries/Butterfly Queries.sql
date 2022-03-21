-- Looking at the NYBio table
select * from NYBio

-- Looking at distict common names of butterflies and skippers and how many counties each one is in
select count(*) as Butterflycounty, [Common Name]
from NYBio
where [Taxonomic Subgroup] = 'Butterflies and Skippers'
group by [Common Name]
order by 1 desc

-- After picking the Karner Blue Butterfly, creating a information table to output to Tableau
select distinct [Common Name], [Scientific Name], [Taxonomic Subgroup], County, [Year Last Documented]
from NYBio
where [Common Name] = 'Karner Blue'
order by County asc