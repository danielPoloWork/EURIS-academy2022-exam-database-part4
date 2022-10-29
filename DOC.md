# My Solution

Click [**here**](https://dbdiagram.io/d/635ced135170fb6441b97b8d) to directly view the project page.

### Images:
- UML schema dark theme. Click [**here**](resources/images/database.schema-uml.dark.png) to open.
- UML schema light theme. Click [**here**](resources/images/database.schema-uml.light.png) to open.

### PDF:
- UML schema dark theme. Click [**here**](resources/pdf/database.schema-uml.dark.pdf) to open.
- UML schema light theme. Click [**here**](resources/pdf/database.schema-uml.light.pdf) to open.

### SQL:
- Script MySQL to create tables. Click [**here**](resources/sql/mysql.database.create-tables.sql) to open.
- Script MySQL to populate tables with samples. Click [**here**](resources/sql/mysql.database.populate-tables.sql) to open.

### XML:

Taking into account that very often the Spring framework is used with Liquibase and Hibernate dependencies I also provided XML scripts for the automatic creation of tables with liquibase. Below I attach the XML and YAML files:
- change.log.xml Main file with all imports. Click [**here**](resources/xml/change.log.xml) to open.
- create.table.availability.xml Specific database table change log. Click [**here**](resources/xml/changeLogs/create.table.availability.xml) to open.
- create.table.branch.xml Specific database table change log. Click [**here**](resources/xml/changeLogs/create.table.branch.xml) to open.
- create.table.configuration.xml Specific database table change log. Click [**here**](resources/xml/changeLogs/create.table.configuration.xml) to open.
- create.table.employee.xml Specific database table change log. Click [**here**](resources/xml/changeLogs/create.table.employee.xml) to open.
- create.table.order.xml Specific database table change log. Click [**here**](resources/xml/changeLogs/create.table.order.xml) to open.
- create.table.product.xml Specific database table change log. Click [**here**](resources/xml/changeLogs/create.table.product.xml) to open.

## Remarks
- The CONFIGURATION table is a utility table to manage parameters in java that may change over time without necessarily edit the source code.
- The dateCreation and dateUpdate columns are for management purposes only to improve data consistency when performing CRUD operations. 
- I had also considered adding a column "isArchived" with datatype "BOOLEAN" set by default "FALSE" to keep track of deleted records. This way permanent deletion can be avoided to prevent human mistakes. The real deletion can occur for all records with the flag "isArchived" set to "TRUE".