

SELECT DISTINCT DIAGNOSIS.id_physician, DIAGNOSIS.id_patient AS id_patient,U.name, U.photo, PHYSICIAN.practice_document, U.id_user   FROM DIAGNOSIS
INNER JOIN PHYSICIAN ON PHYSICIAN.id_physician = DIAGNOSIS.id_physician
INNER JOIN (select  name, id_physician, country, photo, USER_HEALTH.id_user from PHYSICIAN INNER JOIN USER_HEALTH  
ON USER_HEALTH.id_user = PHYSICIAN.id_user) AS U ON PHYSICIAN.id_physician = U.id_physician
WHERE id_patient = 'F8313B58-F807-4098-A74B-64BF456FA838'
UNION
SELECT DISTINCT EXAM.id_physician, EXAM.id_patient, U.name, U.photo, PHYSICIAN.practice_document, U.id_user FROM EXAM
INNER JOIN PHYSICIAN ON PHYSICIAN.id_physician = EXAM.id_physician
INNER JOIN (select  name, id_physician, country, photo, USER_HEALTH.id_user from PHYSICIAN INNER JOIN USER_HEALTH  
ON USER_HEALTH.id_user = PHYSICIAN.id_user) AS U ON PHYSICIAN.id_physician = U.id_physician
WHERE id_patient = 'F8313B58-F807-4098-A74B-64BF456FA838';