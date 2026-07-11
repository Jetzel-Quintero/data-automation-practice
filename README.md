# Inventory Management Automation

This project is a collection of SQL scripts designed to automate stock management processes. It tracks product levels and handles sales and restock operations efficiently.

## Project Structure

- `01_create_tables.sql`: Initial setup of the database schema.
- `02_insert_products.sql`: Script to populate the database with initial products.
- `03_inventory_alerts.sql`: Implementation of logic to identify low-stock products.
- `04_create_views.sql`: Custom views to simplify complex inventory queries.
- `05_sell_product.sql`: Stored procedure to process sales and update stock.
- `06_restock_product.sql`: Stored procedure to manage inventory replenishment.

## Challenges Faced

During the development of this project, I encountered the following challenges:

- **Managing Atomicity**: Ensuring that stock updates and transaction logging happen simultaneously to maintain data integrity.
- **Proactive Monitoring**: Developing tools to identify low-stock items before they impact operations, ensuring continuous availability of products.

## Future Improvements

- **Alerting System**: Implement a trigger to notify when stock levels fall below a specific threshold.
- **Reporting**: Develop additional stored procedures to generate monthly sales reports.
- **Web Interface**: Build a front-end application to interact with the database, allowing for easier inventory management.

## How to use

1. Run the scripts in order in SQL Server Management Studio (SSMS).
2. Execute the stored procedures to manage your inventory.

## Technologies

- SQL Server
- Git / GitHub

## Contact

- Creado por: Jetzel Quintero
