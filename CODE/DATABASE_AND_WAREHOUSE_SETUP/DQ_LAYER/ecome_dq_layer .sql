-- #######################################################################################
-- ####   DQ TABLE CREATION   ##########################################################
-- #######################################################################################

CREATE OR REPLACE TABLE ECOM_DEV_DB.DQ.DQ_ERROR_LOG (
    DQ_ERROR_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    PIPELINE_NAME VARCHAR,
    LAYER_NAME VARCHAR,
    TABLE_NAME VARCHAR,
    BUSINESS_KEY VARCHAR,
    COLUMN_NAME VARCHAR,
    ERROR_TYPE VARCHAR,
    ERROR_MESSAGE VARCHAR,
    FAILED_VALUE VARCHAR,
    RULE_NAME VARCHAR,
    RULE_DESCRIPTION VARCHAR,
    SEVERITY VARCHAR,
    LOAD_TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    RAW_RECORD VARIANT
);