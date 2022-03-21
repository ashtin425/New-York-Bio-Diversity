-- Looking at the NYBio table
select * from NYBio

-- Looking at distict common names of Bees and how many counties each one is in
select Count(*) as beescounty, [Common Name]
from NYBio
where [Taxonomic Subgroup] = 'Bees'
group by [Common Name]
order by 1 desc

-- After picking the Yellow Bumble Bee, creating a information table to output to Tableau
select distinct [Common Name], [Scientific Name], [Taxonomic Subgroup], County, [Year Last Documented]
from NYBio
where [Common Name] = 'Yellow Bumble Bee'
order by County asc
