SELECT city
    FROM city
    LEFT JOIN address ON city.city_id = address.city_id
    WHERE address.address_id IS NULL;