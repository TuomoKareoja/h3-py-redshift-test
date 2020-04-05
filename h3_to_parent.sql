CREATE FUNCTION geo_to_h3(h3_hash str, res int) RETURNS str IMMUTABLE as $$

    from h3.h3 import h3_to_parent
 
    return h3_to_parent(h3_hash, res)
    
$$ LANGUAGE plpythonu;
