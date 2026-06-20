-- ============================================================
-- Database Setup
-- ============================================================
CREATE OR REPLACE DATABASE ECOM_DEV_DB;

-- ============================================================
-- Schema Setup (Layered Architecture)
-- ============================================================
CREATE OR REPLACE SCHEMA ECOM_DEV_DB.RAW;
CREATE OR REPLACE SCHEMA ECOM_DEV_DB.STAGE;
CREATE OR REPLACE SCHEMA ECOM_DEV_DB.CLEAN;
CREATE OR REPLACE SCHEMA ECOM_DEV_DB.GOLD;
CREATE OR REPLACE SCHEMA ECOM_DEV_DB.ANALYTICS;
CREATE OR REPLACE SCHEMA ECOM_DEV_DB.DQ;
CREATE OR REPLACE SCHEMA ECOM_DEV_DB.AUDIT;
CREATE OR REPLACE SCHEMA ECOM_DEV_DB.REFERENCE;
-- ============================================================
-- Stage Setup (for file ingestion)
-- ============================================================
CREATE OR REPLACE STAGE ECOM_DEV_DB.RAW.RAW_DATA;
