SELECT 
    category.name,
    COUNT(rental.rental_id) AS total_number,
    SUM(payment.amount) AS total_amount
    FROM category
    JOIN film_category ON category.category_id = film_category.category_id
    JOIN inventory ON film_category.film_id = inventory.film_id
    JOIN rental ON inventory.inventory_id = rental.inventory_id
    JOIN payment ON rental.rental_id = payment.rental_id
    GROUP BY category.name
    ORDER BY total_number DESC;