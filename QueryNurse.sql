SELECT d_p.id_diagnosis, d_p.anotation, d_p.id_nurse, d_p.status, d_p.date_procedure, d_p.id_diagnosis_procedure,
d.date_diagnosis, d.anotation, u.name as patient_name, u.photo as patient_photo,
h.name as institution_name, u_h.name as physician_name, u_h.photo as physician_photo,
u_h_n.name as nurse_name, u_h_n.photo as nurse_photo, h.id_health_institution
FROM DIAGNOSIS_PROCEDURE AS d_p INNER JOIN diagnosis as d ON d_p.id_diagnosis = d.id_diagnosis 
INNER JOIN PATIENT AS p ON p.id_patient = d.id_patient
INNER JOIN USER_HEALTH as u ON u.id_user = p.id_user
INNER JOIN HEALTH_INSTITUTION as h ON h.id_health_institution = d.id_health_institution
INNER JOIN PHYSICIAN as ph ON ph.id_physician = d.id_physician
INNER JOIN USER_HEALTH as u_h ON u_h.id_user = ph.id_user 
INNER JOIN NURSE AS n ON d_p.id_nurse = n.id_nurse 
INNER JOIN USER_HEALTH as u_h_n ON u_h_n.id_user = n.id_user 
WHERE h.id_health_institution = '' AND n.id_nurse = '' AND d_p.status = '';



select * from DIAGNOSIS where DIAGNOSIS.id_diagnosis = '00df52bd-f7f6-41cf-a54d-14e0a66f975b';

SELECT * FROM HEALTH_INSTITUTION where HEALTH_INSTITUTION.id_health_institution = '138a2cc4-0b02-4a14-89b2-a318bbf7e34a';


select * from physician inner join USER_HEALTH ON USER_HEALTH.id_user = physician.id_user
where PHYSICIAN.id_physician = '2b55c8c6-8ac1-435b-9fa8-189df6bc2dad'