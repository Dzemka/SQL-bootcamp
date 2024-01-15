UPDATE menu
SET price=round(price - price * 10 /100)
WHERE pizza_name = 'greek pizza'
