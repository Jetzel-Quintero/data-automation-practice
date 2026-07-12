# Inventory Management Automation

This project is a collection of SQL scripts designed to automate stock management processes. It tracks product levels and handles sales and restock operations efficiently.

## Project Structure

- `/schema` : Database schema and table definitions.
- `/data` : Initial data population scripts.
- `/procedures` : Stored procedures for sales and restock operations.
- `/views` : Views for complex query simplification.
- `/triggers` : Automation logic for inventory alerts.

## Challenges Faced

During the development of this project, I encountered the following challenges:

- **Managing Atomicity**: Ensuring that stock updates and transaction logging happen simultaneously to maintain data integrity.
- **Proactive Monitoring**: Developing tools to identify low-stock items before they impact operations, ensuring continuous availability of products.

## Future Improvements

- **Alerting System**: Implement a trigger to notify when stock levels fall below a specific threshold.
- **Reporting**: Develop additional stored procedures to generate monthly sales reports.
- **Web Interface**: Build a front-end application to interact with the database, allowing for easier inventory management.

## How to use

1. Execute files in `/schema` first.
2. Run data population scripts in `/data`.
3. Apply logic from `/procedures`, `/views`, and `/triggers`.

## Technologies

- SQL Server
- Git / GitHub

## Contact

- Creado por: Jetzel Quintero
