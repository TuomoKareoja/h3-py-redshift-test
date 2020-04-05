CREATE FUNCTION geo_to_h3(lat float, lng float, res int) RETURNS string IMMUTABLE as $$

    from h3.h3 import geo_to_h3
 
    return geo_to_h3(lat, lng, res)
    
$$ LANGUAGE plpythonu;
