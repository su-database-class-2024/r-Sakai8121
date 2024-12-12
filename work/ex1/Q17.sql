SELECT 
    category.name,
    AVG(DATE_PART('day', rental.return_date - rental.rental_date)) AS average_rental_days
    FROM category
    JOIN film_category ON category.category_id = film_category.category_id
    JOIN inventory ON film_category.film_id = inventory.film_id
    JOIN rental ON inventory.inventory_id = rental.inventory_id
    GROUP BY category.name
    ORDER BY average_rental_days DESC;