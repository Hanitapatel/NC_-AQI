SELECT aq._c0, 
	aq.cbsa_code,
    aq.date,
    site.number_of_sites_reporting,
    site.city_ascii,
    site.state_id,
    site.state_name,
	site.lat,
	site.lng,
	pop.population,
	pop.density
INTO site_info_table
FROM air_quality_table AS aq
LEFT JOIN site_reporting_table AS site
ON aq._c0 = site._c0
LEFT JOIN population_table AS pop
ON aq._c0 = pop._c0
ORDER BY _c0;


