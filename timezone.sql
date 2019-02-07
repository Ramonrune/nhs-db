SELECT CONVERT(datetime2(0), '2015-03-29T03:01:00', 126)   
AT TIME ZONE 'America/Sao_Paulo'; 

select CONVERT(datetime, SWITCHOFFSET('2015-03-29T03:01:00', DATEPART(TZOFFSET, 
dateTimeField AT TIME ZONE 'Eastern Standard Time')))



SELECT  CONVERT(datetime, SWITCHOFFSET(event_date, DATEPART(TZOFFSET, 
event_date AT TIME ZONE 'E. South America Standard Time'))) FROM ERROR_LOG ORDER BY event_date DESC;

SELECT CONVERT(DATE,  CONVERT(datetime, SWITCHOFFSET(event_date, DATEPART(TZOFFSET, 
event_date AT TIME ZONE 'E. South America Standard Time')))) AS postedDate, COUNT(*) as quantity FROM ERROR_LOG WHERE  CONVERT(datetime, SWITCHOFFSET(event_date, DATEPART(TZOFFSET, 
event_date AT TIME ZONE 'E. South America Standard Time'))) >= '2018-09-01' AND  CONVERT(datetime, SWITCHOFFSET(event_date, DATEPART(TZOFFSET, 
event_date AT TIME ZONE 'E. South America Standard Time'))) <= '2018-09-30' GROUP BY CONVERT(DATE,  CONVERT(datetime, SWITCHOFFSET(event_date, DATEPART(TZOFFSET, 
event_date AT TIME ZONE 'E. South America Standard Time'))))



SELECT
E.additional_info, E.class_name, 
CONVERT(datetime, SWITCHOFFSET(e.event_date, DATEPART(TZOFFSET, 
e.event_date AT TIME ZONE 'E. South America Standard Time'))),
e.id_error, e.id_user, e.line_number, e.message,
e.method_name, e.name_of_file,
u.id_user, u.login, u.name, u.photo FROM ERROR_LOG AS E LEFT JOIN USER_HEALTH AS U ON U.id_user = E.id_user WHERE CONVERT(DATE,  CONVERT(datetime, SWITCHOFFSET(event_date, DATEPART(TZOFFSET, 
event_date AT TIME ZONE 'E. South America Standard Time'))))= ?;


SELECT A.additional_info, A.category, CONVERT(datetime, SWITCHOFFSET(A.event_date, DATEPART(TZOFFSET, 
A.event_date AT TIME ZONE 'E. South America Standard Time'))), A.event_name, A.id_audit_trail, A.id_user
, U.login, U.name, U.photo
 FROM AUDIT_TRAIL AS A LEFT JOIN USER_HEALTH AS U 
 ON U.id_user = A.id_user WHERE CONVERT(DATE,  CONVERT(datetime, SWITCHOFFSET(A.event_date, DATEPART(TZOFFSET, 
A.event_date AT TIME ZONE 'E. South America Standard Time'))))= '2018-09-15';

