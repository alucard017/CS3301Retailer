# RETAILER Database Project

**Name:** Apurba Sundar Nayak  
**Roll Number:** 2023PGCSCSA027

This project creates a _Retailer Database_ to manage essential retail operations, including customer information, inventory, sales data, and vendor partnerships. The schema allows querying for sales trends, product popularity, and store performance.

## ER Diagram

![ER Diagram](./ERD%20Retailer_DB.png)

## Database Schema

### Tables

- **Customer:** Stores customer details and loyalty program status.
- **Store:** Maintains store information, including address and operating hours.
- **Product_Type:** Defines different product categories (e.g., Groceries, Electronics).
- **Vendor:** Information on vendors supplying products to the stores.
- **Brand:** Tracks brands associated with vendors.
- **Product:** Catalog of products with pricing, size, and brand.
- **Inventory:** Tracks inventory levels of products in each store.
- **Purchase_Cart:** Stores customer purchase history with timestamps.
- **Order_Product:** Links products with purchase orders.
- **Customer_Store:** Tracks customer visits to different stores.
- **Vendor_Store:** Links vendors with stores they supply.
- **Brand_Product_Type:** Associates brands with product types.

## Detailed SQL Queries

![SQL Queries](./Retailer_DB-Document.pdf)

### Features

The database supports the following features:

- **Customer and Store Management:** Maintains essential information on customers, stores, vendors, brands, and products to streamline retail operations.
- **Inventory Tracking:** Manages product inventory across various store locations.
- **Purchase History:** Records each customer’s purchases, enabling analysis of shopping patterns and trends.
- **Product Categorization:** Supports organization of products by brand and type, making it easy to retrieve specific information.
- **Vendor Relationships:** Tracks vendor-store associations, including the brands they supply to each store.

## Key Queries

1. **Top Selling Products in Each Store**  
   Identifies the top 20 products sold in each store based on sales volume.

2. **Top Selling Products in Each State**  
   Lists the top 20 products sold across different states, enabling region-specific analysis.

3. **Stores with the Most Sales This Year**  
   Displays the top 5 stores by total sales volume within the current year.

4. **Stores Where Coke Outsells Pepsi**  
   Highlights stores where sales of Coke exceed those of Pepsi.

5. **Popular Products Bought Alongside Milk**  
   Analyzes which product categories are most frequently bought along with milk, displaying the top 3 product types.

---
