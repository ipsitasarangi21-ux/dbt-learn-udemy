--Singular Tests are defined on tests folder and that return rows would be considered as fail
select * FROM
{{ref('dim_listings_cleansed')}}
where minimum_nights < 1