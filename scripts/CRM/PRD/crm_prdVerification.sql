-- CHECK FOR NULLS OR DUPLICATES IN PRIMARY KEY
-- EXPECTATION: NO RESULTS

SELECT 
prd_id,
COUNT(*)
FROM bronze.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL

-- CHECK FOR UNWANTED SPACES
-- EXPECTATION: NO RESULTS
SELECT 
prd_nm,
COUNT(*)
FROM bronze.crm_prd_info
GROUP BY prd_nm
HAVING prd_nm != TRIM(prd_nm)

-- CHECK FOR NULL OR NEGATIVE NUMBERS
-- EXPECTATION: NO RESULTS
SELECT 
prd_cost
FROM bronze.crm_prd_info
WHERE prd_cost < 0 OR prd_cost  IS NULL

-- Standarizarion & Consistency
-- EXPECTATION: NO RESULTS
SELECT 
DISTINCT prd_line
from bronze.crm_prd_info

--Check for invalid date orders
SELECT * FROM bronze.crm_prd_info WHERE prd_end_dt < prd_start_dt

