SELECT title,replacement_cost
    FROM film
    WHERE replacement_cost = (SELECT MAX(replacement_cost) FROM film);