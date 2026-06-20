-- ============================================================
-- VIEW NAME: VW_BUSINESS_EDA_REPORT
-- PURPOSE: Advanced EDA-style unified business analytics report
-- STRUCTURE: Each row = Metric Name | Value | Domain | Description
-- ============================================================

CREATE OR REPLACE VIEW ECOM_DEV_DB.ANALYTICS.VW_BUSINESS_ANALYTICS_EDA_REPORT AS
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
SELECT 'Average Order Value',
       (SELECT AVG_ORDER_VALUE FROM VW_AVG_ORDER_VALUE_ANALYTICS),
       'Sales & Revenue',
       'Average spend per order'
UNION ALL
SELECT 'Top Customers',
       (SELECT SUM(TOTAL_SPEND) FROM VW_TOP_CUSTOMERS_ANALYTICS),
       'Customers',
       'Total spend of highest-value customers'
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
SELECT 'Order Cancellation Count',
       (SELECT COUNT(*) FROM VW_ORDER_CANCELLATION_ANALYTICS),
       'Orders & Fulfillment',
       'Total cancelled orders'
UNION ALL
SELECT 'Late Deliveries',
       (SELECT COUNT(*) FROM VW_LATE_DELIVERIES_ANALYTICS),
       'Orders & Fulfillment',
       'Shipments delivered beyond SLA'
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
SELECT 'Payment Success Rate',
       (SELECT AVG(SUCCESS_RATE_PERCENT) FROM VW_PAYMENT_SUCCESS_RATE_ANALYTICS),
       'Finance & Risk',
       'Percentage of successful payments across methods'
UNION ALL
SELECT 'Fraud Flags',
       (SELECT COUNT(*) FROM VW_FRAUD_DETECTION_ANALYTICS),
       'Finance & Risk',
       'Orders flagged for potential fraud';
