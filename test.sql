table user:
fields
user_id | age
wildan  | 27
zaki    | 25

table asset:
fields
item         | user_id
notebook     | wildan
bag          | wildan
notebook     | zaki
bag          | zaki
mobile phone | zaki

-- Jawaban soal 3


SELECT DISTINCT item FROM asset;

SELECT u.user_id, GROUP_CONCAT(a.item ORDER BY a.item ASC) 
FROM user u JOIN asset a ON u.user_id = a.user_id GROUP BY u.user_id;