SELECT CONCAT(name, ' (age:', age, ',gender:''', gender, '''address:''', address, ''')' )
AS person_info
FROM person
GROUP BY id
ORDER BY person_info;