-- Looking at the NYBio table
select * from NYBio

-- Looking at all frogs and toads in Taxonomic Subgroup
select distinct [Common Name], [Scientific Name], [Taxonomic Subgroup], County, [Year Last Documented]
from NYBio
where [Taxonomic Subgroup] = 'Frogs and Toads' 
order by [Common Name], [Year Last Documented] asc

-- Looking at distict common names of frogs and toads and how many counties each one is in
select COUNT(*) as frogcounty, [Common Name]
from NYBio
where [Taxonomic Subgroup] = 'Frogs and Toads' 
group by [Common Name]
order by 1 desc

-- After picking the Green Frog, creating a information table to output to Tableau
select distinct [Common Name], [Scientific Name], [Taxonomic Subgroup], County, [Year Last Documented]
from NYBio
where [Common Name] = 'Green Frog'
order by County asc