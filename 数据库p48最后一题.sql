SELECT l.country_id,sum(d.cc)
FROM locations l,(SELECT d.location_id,count(1) cc
									FROM departments d
									GROUP BY d.location_id
									) d
WHERE l.location_id = d.location_id
GROUP BY l.country_id
HAVING sum(d.cc) >= 2;
