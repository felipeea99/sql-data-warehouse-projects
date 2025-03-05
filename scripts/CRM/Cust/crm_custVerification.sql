-- Check For Nulls or Duplicates in Primary Key
--Expectation: No results


SELECT 
cst_id, 
count(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL


-- Check for unwanted spaces
--Expectation: No results

SELECT cst_firstname FROM bronze.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname)


--Data standarization & consistency
SELECT DISTINCT cst_gndr 
FROM bronze.crm_cust_info

SELECT DISTINCT cst_marital_status 
FROM bronze.crm_cust_info
