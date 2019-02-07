drop table error_log;
CREATE TABLE ERROR_LOG(
	id_error CHAR(36) NOT NULL PRIMARY KEY,
	event_date datetime NOT NULL DEFAULT current_timestamp,
	message TEXT,
	name_of_file VARCHAR(100),
	class_name VARCHAR(100),
	method_name VARCHAR(200),
	line_number INT,
	additional_info TEXT,
	id_user CHAR(36)
);

ALTER TABLE ERROR_LOG
ADD CONSTRAINT FK_ERROR_LOG_USER
FOREIGN KEY (id_user) REFERENCES USER_HEALTH(id_user);

/**
CATEGORY
PATIENT
PHYSICIAN
HEALTH_INSTITUTION
NURSE
PARAMEDIC
*/


drop table audit_trail;
CREATE TABLE AUDIT_TRAIL(
	id_audit_trail CHAR(36) NOT NULL PRIMARY KEY,
	event_date datetime NOT NULL DEFAULT current_timestamp,
	category VARCHAR(100) NOT NULL,
	event_name VARCHAR(200) NOT NULL,
	additional_info TEXT,
	id_user CHAR(36)
);

ALTER TABLE AUDIT_TRAIL
ADD CONSTRAINT FK_AUDIT_TRAIL_USER
FOREIGN KEY (id_user) REFERENCES USER_HEALTH(id_user);


SELECT * FROM AUDIT_TRAIL;


SELECT CONVERT(DATE, event_date) AS postedDate, COUNT(*) AS quantity
FROM ERROR_LOG
WHERE event_date >= '2018-09-01' AND event_date <= '2018-09-30'
GROUP BY CONVERT(DATE, event_date)


SELECT * FROM ERROR_LOG WHERE CONVERT(DATE, event_date) = '2018-09-15' ORDER BY event_date DESC;



SELECT * FROM ERROR_LOG 
LEFT JOIN USER_HEALTH ON USER_HEALTH.id_user = ERROR_LOG.id_user
WHERE CONVERT(DATE, event_date)= '2018-09-01';


SELECT A.additional_info, A.category, CONVERT(datetime, SWITCHOFFSET(A.event_date, DATEPART(TZOFFSET, 
A.event_date AT TIME ZONE 'E. South America Standard Time'))) as event_date, A.event_name, A.id_audit_trail, A.id_user
, U.login, U.name, U.photo
 FROM AUDIT_TRAIL AS A LEFT JOIN USER_HEALTH AS U 
 ON U.id_user = A.id_user WHERE CONVERT(DATE,  CONVERT(datetime, SWITCHOFFSET(A.event_date, DATEPART(TZOFFSET, 
A.event_date AT TIME ZONE 'E. South America Standard Time'))))= '2018-09-15' ORDER BY event_date desc;

