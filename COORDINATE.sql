
CREATE PROCEDURE SELECT_HEALTH_INSTITUTIONS_BY_COORDINATE
(
	@latitute1 FLOAT,
	@longitute1 FLOAT,
	@distance INT
	)
AS   
	SELECT * FROM HEALTH_INSTITUTION WHERE 111.045 * dbo.haversine(@latitute1, @longitute1, latitute, longitute) <= @distance;
		
