# EURIS Academy 2022
## Database Exam Part 4

### Database design
Design and create a DB that reflects the following situation, using the right relationships and constraints correctly.

- #### Context
  A well-known sporting goods chain company asks you to create a database to manage the warehouse and orders placed in the various branches by the various employees.

- #### Entities involved
  - **BRANCH** (code, address, country)
  - **EMPLOYEE** (serial number, branch, name, surname)
  - **PRODUCT** (code, description, net price, gross price)
  - **AVAILABILITY** (product, branch, quantity)
  - **ORDER** (code, employee, product, date)

- #### Constraints
  - For each branch there can be N employees, and an employee will always work for one and only one branch.
  - In each branch there is a defined availability of products.
  - Each order of a given product is handled by a certain employee.

### Before starting some advice:

- The scheme of the DB to be designed is a suggestion, you can follow it, but if you have other ideas you can implement them (watch out for time though);
- Google is the best tool to find a solution to a problem, knowing how to use it well is essential to solve unexpected issues every day;