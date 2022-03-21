-- Looking at the NYBio table
select * from NYBio

-- Looking at distict common names of crows and jays and how many counties each one is in
select count(*) as birdcounty, [Common Name]
from NYBio
where [Taxonomic Subgroup] = 'Crows and Jays'
group by [Common Name]
order by 1 desc

-- After picking the Common Raven, creating a information table to output to Tableau
select distinct [Common Name], [Scientific Name], [Taxonomic Subgroup], County, [Year Last Documented]
from NYBio
where [Common Name] = 'Common Raven'
order by County asc
