

CREATE FUNCTION haversine(
        @lat1 FLOAT, @lon1 FLOAT,
        @lat2 FLOAT, @lon2 FLOAT
     ) RETURNS FLOAT
  
BEGIN
    RETURN DEGREES(ACOS(
              COS(RADIANS(@lat1)) *
              COS(RADIANS(@lat2)) *
              COS(RADIANS(@lon2) - RADIANS(@lon1)) +
              SIN(RADIANS(@lat1)) * SIN(RADIANS(@lat2))
            ));
END


