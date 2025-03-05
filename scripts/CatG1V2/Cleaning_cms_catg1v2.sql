INSERT INTO silver.erp_px_cat_g1v2(id,cat,subcat,MAINTENANCE)
SELECT
id,cat,subcat,maintenance FROM bronze.erp_px_cat_g1v2
