-- ============================================================
-- VIEW NAME: VW_BUSINESS_ANALYTICS_ADVANCED_EDA _REPORT
-- PURPOSE: Advanced unified EDA-style report
-- STRUCTURE: Each row = Metric Name | Value | Domain | Description
-- ============================================================

CREATE OR REPLACE VIEW ECOM_DEV_DB.ANALYTICS.VW_BUSINESS_ANALYTICS_ADVANCED_EDA_REPORT AS
-- =========================
-- Sales & Revenue
-- =========================
SELECT 'Top Products Revenue' AS METRIC_NAME,
       (SELECT SUM(TOTAL_REVENUE) FROM VW_TOP_PRODUCTS_ANALYTICS) AS METRIC_VALUE,
       'Sales & Revenue' AS DOMAIN,
       'Revenue contribution from top-selling products' AS DESCRIPTION
UNION ALL
SELECT 'Monthly Revenue',
       (SELECT SUM(TOTAL_REVENUE) FROM VW_MONTHLY_REVENUE_ANALYTICS),
       'Sales & Revenue',
       'Total revenue aggregated across months'
UNION ALL
SELECT 'Revenue by Category',
       (SELECT SUM(TOTAL_REVENUE) FROM VW_REVENUE_BY_CATEGORY_ANALYTICS),
       'Sales & Revenue',
       'Revenue contribution grouped by product category'
UNION ALL
SELECT 'Average Order Value',
       (SELECT AVG_ORDER_VALUE FROM VW_AVG_ORDER_VALUE_ANALYTICS),
       'Sales & Revenue',
       'Average spend per order'
UNION ALL
SELECT 'Promotion Impact',
       (SELECT SUM(TOTAL_REVENUE) FROM VW_PROMOTION_IMPACT_ANALYTICS),
       'Sales & Revenue',
       'Revenue uplift from promotions'

-- =========================
-- Customers
-- =========================
UNION ALL
SELECT 'Top Customers',
       (SELECT SUM(TOTAL_SPEND) FROM VW_TOP_CUSTOMERS_ANALYTICS),
       'Customers',
       'Total spend of highest-value customers'
UNION ALL
SELECT 'New Customers Monthly',
       (SELECT SUM(NEW_CUSTOMERS) FROM VW_NEW_CUSTOMERS_MONTHLY_ANALYTICS),
       'Customers',
       'Monthly acquisition trend'
UNION ALL
SELECT 'Repeat Purchase Rate',
       (SELECT REPEAT_PURCHASE_RATE_PERCENT FROM VW_REPEAT_PURCHASE_RATE_ANALYTICS),
       'Customers',
       'Percentage of customers making more than one purchase'
UNION ALL
SELECT 'Customer Churn',
       (SELECT COUNT(*) FROM VW_CUSTOMER_CHURN_ANALYTICS),
       'Customers',
       'Number of customers inactive for 6+ months'
UNION ALL
SELECT 'Customer Lifetime Value',
       (SELECT SUM(TOTAL_SPEND) FROM VW_CUSTOMER_LIFETIME_VALUE_ANALYTICS),
       'Customers',
       'Estimated lifetime value across customers'

-- =========================
-- Orders & Fulfillment
-- =========================
UNION ALL
SELECT 'Order Cancellations',
       (SELECT COUNT(*) FROM VW_ORDER_CANCELLATION_ANALYTICS),
       'Orders & Fulfillment',
       'Total cancelled orders'
UNION ALL
SELECT 'Late Deliveries',
       (SELECT COUNT(*) FROM VW_LATE_DELIVERIES_ANALYTICS),
       'Orders & Fulfillment',
       'Shipments delivered beyond SLA'
UNION ALL
SELECT 'Payment Mismatches',
       (SELECT COUNT(*) FROM VW_PAYMENT_MISMATCH_ANALYTICS),
       'Orders & Fulfillment',
       'Orders with mismatched payment totals'
UNION ALL
SELECT 'Return Reasons',
       (SELECT COUNT(*) FROM VW_RETURN_REASON_ANALYTICS),
       'Orders & Fulfillment',
       'Total returns categorized by reason'

-- =========================
-- Inventory & Suppliers
-- =========================
UNION ALL
SELECT 'Out of Stock Products',
       (SELECT COUNT(*) FROM VW_OUT_OF_STOCK_PRODUCTS_ANALYTICS),
       'Inventory & Suppliers',
       'Products currently unavailable in stock'
UNION ALL
SELECT 'High Margin Products',
       (SELECT COUNT(*) FROM VW_HIGH_MARGIN_PRODUCTS_ANALYTICS),
       'Inventory & Suppliers',
       'Products with highest profit margins'
UNION ALL
SELECT 'Stock Turnover Ratio',
       (SELECT AVG(STOCK_TURNOVER_RATIO) FROM VW_STOCK_TURNOVER_ANALYTICS),
       'Inventory & Suppliers',
       'Efficiency of inventory turnover'
UNION ALL
SELECT 'Supplier Performance',
       (SELECT AVG(AVG_DELIVERY_DAYS) FROM VW_SUPPLIER_PERFORMANCE_ANALYTICS),
       'Inventory & Suppliers',
       'Average supplier delivery speed'

-- =========================
-- Finance & Risk
-- =========================
UNION ALL
SELECT 'Payment Success Rate',
       (SELECT AVG(SUCCESS_RATE_PERCENT) FROM VW_PAYMENT_SUCCESS_RATE_ANALYTICS),
       'Finance & Risk',
       'Percentage of successful payments across methods'
UNION ALL
SELECT 'Currency Exchange Impact',
       (SELECT SUM(REVENUE_IN_BASE_CURRENCY) FROM VW_CURRENCY_EXCHANGE_IMPACT_ANALYTICS),
       'Finance & Risk',
       'Revenue adjusted for FX impact'
UNION ALL
SELECT 'Fraud Flags',
       (SELECT COUNT(*) FROM VW_FRAUD_DETECTION_ANALYTICS),
       'Finance & Risk',
       'Orders flagged for potential fraud'
UNION ALL
SELECT 'Logistics Cost',
       (SELECT SUM(TOTAL_LOGISTICS_COST) FROM VW_LOGISTICS_COST_ANALYTICS),
       'Finance & Risk',
       'Total shipping and logistics costs'
UNION ALL
SELECT 'Campaign ROI',
       (SELECT AVG(ROI_PERCENT) FROM VW_CAMPAIGN_ROI_ANALYTICS),
       'Finance & Risk',
       'Return on investment for marketing campaigns'
UNION ALL
SELECT 'Refund Processing Time',
       (SELECT AVG(PROCESSING_DAYS) FROM VW_REFUND_PROCESSING_TIME_ANALYTICS),
       'Finance & Risk',
       'Average time taken to process refunds'
UNION ALL
SELECT 'Compliance Issues',
       (SELECT COUNT(*) FROM VW_COMPLIANCE_CHECKS_ANALYTICS WHERE COMPLIANCE_STATUS <> 'Compliant'),
       'Finance & Risk',
       'Orders failing compliance checks';
