-- =======================================================================================
-- CSV FILE FORMAT
-- =======================================================================================
CREATE OR REPLACE FILE FORMAT ECOM_DEV_DB.RAW.CSV_FILE_FORMAT
  TYPE = 'CSV'
  FIELD_DELIMITER = ','
  SKIP_HEADER = 1
  FIELD_OPTIONALLY_ENCLOSED_BY = '"'
  TRIM_SPACE = TRUE
  EMPTY_FIELD_AS_NULL = TRUE
  NULL_IF = ('NULL', 'null', '');

-- =======================================================================================
-- TSV FILE FORMAT
-- =======================================================================================
CREATE OR REPLACE FILE FORMAT ECOM_DEV_DB.RAW.TSV_FILE_FORMAT
  TYPE = 'CSV'
  FIELD_DELIMITER = '\t'
  SKIP_HEADER = 1
  FIELD_OPTIONALLY_ENCLOSED_BY = '"'
  TRIM_SPACE = TRUE
  EMPTY_FIELD_AS_NULL = TRUE
  NULL_IF = ('NULL', 'null', '');

-- =======================================================================================
-- SIMPLE JSON FILE FORMAT
-- =======================================================================================
CREATE OR REPLACE FILE FORMAT ECOM_DEV_DB.RAW.JSON_SIMPLE_FILE_FORMAT
  TYPE = 'JSON';

-- =======================================================================================
-- CUSTOMIZED JSON FILE FORMAT
-- =======================================================================================
CREATE OR REPLACE FILE FORMAT ECOM_DEV_DB.RAW.JSON_CUSTOM_FILE_FORMAT
  TYPE = 'JSON'
  STRIP_OUTER_ARRAY = TRUE
  STRIP_NULL_VALUES = TRUE
  IGNORE_UTF8_ERRORS = FALSE
  COMPRESSION = 'AUTO'
  NULL_IF = ('NULL', 'null', '');
