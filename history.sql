SELECT E.id_patient, COALESCE(E.date_exam, '') AS exam_date FROM EXAM AS E INNER JOIN DIAGNOSIS AS D
ON D.id_patient = E.id_patient
WHERE E.id_patient = 'F8313B58-F807-4098-A74B-64BF456FA838'
;


SELECT * FROM diagnosis ORDER BY date_diagnosis DESC;

  select E.id_exam AS id, e.id_patient, E.anotation, E.date_exam as date, E.id_physician, E.id_health_institution, U.name as physician_name, U.photo AS physician_photo, H.name as health_institution_name, H.latitute, H.longitute, H.photo as health_institution_photo, 1 AS type
  FROM EXAM as E
  INNER JOIN HEALTH_INSTITUTION AS H ON h.id_health_institution = E.id_health_institution
  INNER JOIN PHYSICIAN AS P ON P.id_physician = E.id_physician
  INNER JOIN (select  name, id_physician, country, photo from PHYSICIAN INNER JOIN USER_HEALTH 
  ON USER_HEALTH.id_user = PHYSICIAN.id_user) AS U ON P.id_physician = U.id_physician
  UNION ALL 
  select D.id_diagnosis, D.id_patient, D.anotation, D.date_diagnosis, D.id_physician, D.id_health_institution , U.name, U.photo, H.name, H.latitute, H.longitute, H.photo, 2 AS type
  FROM DIAGNOSIS  as D
  INNER JOIN HEALTH_INSTITUTION AS H ON h.id_health_institution = d.id_health_institution
  INNER JOIN PHYSICIAN AS P ON P.id_physician = d.id_physician
  INNER JOIN (select  name, id_physician, country, photo from PHYSICIAN INNER JOIN USER_HEALTH 
  ON USER_HEALTH.id_user = PHYSICIAN.id_user) AS U ON P.id_physician = U.id_physician
  WHERE id_patient = 'F8313B58-F807-4098-A74B-64BF456FA838'
  ORDER BY date DESC



  SELECT * FROM exam order by EXAM.date_exam DESC;

select* from patient where id_user= 'd4a26958-d04a-45f2-a04a-11d9d6590c6d';