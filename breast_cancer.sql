select * from data limit 10;

select count(*) from data;

-- benign vs malignant
select diagnosis, count(*) / (357.0+212.0) * 100.0 as persentase from data
group by diagnosis;

-- radius
select diagnosis, AVG(radius_mean) as AVG_radius_mean, AVG(radius_se) as AVG_radius_se, AVG(radius_worst) as AVG_radius_worst from data 
group by diagnosis
order by diagnosis asc;

-- texture
select diagnosis, AVG(texture_mean) as AVG_texture_mean, AVG(texture_se) as AVG_texture_se, AVG(texture_worst) as AVG_texture_worst, sqrt((count(symmetry_mean)*sum(symmetry_mean*symmetry_mean) - (sum(symmetry_mean)*sum(symmetry_mean)))/((count(symmetry_mean)-1)*(count(symmetry_mean)))) as stdev
from data 
group by diagnosis
order by diagnosis asc;

-- perimeter
select diagnosis, AVG(perimeter_mean) as AVG_perimeter_mean, AVG(perimeter_se) as AVG_perimeter_se, AVG(perimeter_worst) as AVG_perimeter_worst from data 
group by diagnosis
order by diagnosis asc;

-- area
select diagnosis, AVG(area_mean) as AVG_area_mean, AVG(area_se) as AVG_area_se, AVG(area_worst) as AVG_area_worst from data 
group by diagnosis
order by diagnosis asc;

-- smoothness
select diagnosis, AVG(smoothness_mean) as AVG_smoothness_mean, AVG(smoothness_se) as AVG_smoothness_se, AVG(smoothness_worst) as AVG_smoothness_worst from data 
group by diagnosis
order by diagnosis asc;

-- compactness
select diagnosis, AVG(compactness_mean) as AVG_compactness_mean, AVG(compactness_se) as AVG_compactness_se, AVG(compactness_worst) as AVG_compactness_worst from data 
group by diagnosis
order by diagnosis asc;

-- concavity
select diagnosis, AVG(concavity_mean) as AVG_concavity_mean, AVG(concavity_se) as AVG_concavity_se, AVG(concavity_worst) as AVG_concavity_worst from data 
group by diagnosis
order by diagnosis asc;

-- concave points
select diagnosis, AVG("concave points_mean") as "AVG_concave points_mean", AVG("concave points_se") as "AVG_concave points_se", AVG("concave points_worst") as "AVG_concave points_worst" from data 
group by diagnosis
order by diagnosis asc;

-- symmetry
select diagnosis, AVG(symmetry_mean) as AVG_symmetry_mean, AVG(symmetry_se) as AVG_symmetry_se, AVG(symmetry_worst) as AVG_symmetry_worst from data 
group by diagnosis
order by diagnosis asc;

-- fractal_dimension
select diagnosis, AVG(fractal_dimension_mean) as AVG_fractal_dimension_mean, AVG(fractal_dimension_se) as AVG_fractal_dimension_se, AVG(fractal_dimension_worst) as AVG_fractal_dimension_worst from data 
group by diagnosis
order by diagnosis asc;