-- Looking at NYBio Table
select * from NYBio

-- Looking at all Dragonflies in Taxonomic Subgroup
select distinct [Common Name], [Scientific Name], [Taxonomic Subgroup], County, [Year Last Documented]
from NYBio
where [Taxonomic Subgroup] = 'Dragonflies' 
order by [Common Name], [Year Last Documented] asc

-- Looking at distict common names of dragonflies and how many counties each one is in
select COUNT(*) as DFCounty, [Common Name]
from NYBio
where [Taxonomic Subgroup] = 'Dragonflies' 
group by [Common Name]
order by 1 desc

-- After picking the Spatterdock Darner Dragonfly, creating a information table to output to Tableau
select distinct [Common Name], [Scientific Name], [Taxonomic Subgroup], County, [Year Last Documented]
from NYBio
where [Common Name] = 'Spatterdock Darner'
order by [Common Name] asc







