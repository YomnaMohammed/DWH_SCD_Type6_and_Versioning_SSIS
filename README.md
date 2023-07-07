# Implementation of SCD Type 6 and Versioning in Data Warehouse using SSIS

This repository demonstrates the utilization of SQL Server Integration Services (SSIS) to implement Slowly Changing Dimensions (SCD) Type 6 and versioning in a data warehouse.

*Objective*
The project aims to overcome the challenges associated with managing changing data in a data warehouse. It focuses on two specific scenarios:

1) Slowly Changing Dimension Type 6

This involves capturing and preserving historical changes in dimension attributes to enable analysis at different points in time. The project specifically considers the City and Email fields as SCD attributes. The package is designed to employ the Incremental Load approach, which ensures efficient data retrieval and processing by loading only the changed or new records since the last load.

2) Versioning

This entails tracking and managing different versions of data within the data warehouse for historical analysis and comparisons.

Versioning follows these rules:

- Each execution of the SSIS packages represents a new version of the data.

- The SSIS packages can be executed multiple times within the same day, with each run constituting a new version. All previous records for that day will be closed (Active_flag = 0), and a new version will be created (Active_flag = 1).

- On the next day (or any subsequent day), the version numbering restarts from 1.

- The SSIS packages do not perform any comparison or change detection on the source data. They load the data as is.

*Contents*

SSIS Packages: This directory contains the SSIS packages that implement the logic for SCD Type 6 and versioning.

SQL Scripts: This directory includes scripts for creating or modifying the necessary database objects (such as tables) to support the functionality of SCD Type 6 and versioning.

*Note: Each SQL script provides examples of the expected output for its corresponding problem.*
