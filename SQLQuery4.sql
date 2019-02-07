CREATE TABLE DIAGNOSIS_PROCEDURE(
	id_diagnosis_procedure CHAR(36) PRIMARY KEY,
	date_procedure datetime NOT NULL DEFAULT current_timestamp,
	anotation TEXT,
	status CHAR(01) NOT NULL, /* P - PROGRESS, D - DONE**/
	id_diagnosis CHAR(36) NOT NULL CONSTRAINT FK_diagnosis_procedure_diagnosis FOREIGN KEY REFERENCES DIAGNOSIS(id_diagnosis) UNIQUE,
	id_nurse CHAR(36) NOT NULL CONSTRAINT FK_nurse_procedure_nurse  FOREIGN KEY REFERENCES NURSE(id_nurse),
	);


	drop table diagnosis_procedure;



	insert into diagnosis_procedure values(newid(), '2018-10-07', 'diagnosis_procedure', 'P', '00df52bd-f7f6-41cf-a54d-14e0a66f975b', '3e30c930-04b2-494d-a859-04b7c18bedea');
	select * from diagnosis_procedure;



	SELECT * FROM user_health inner join nurse on user_health.id_user = nurse.id_user
	/*

*/

