 CREATE OR REPLACE STORAGE INTEGRATION tableau_integration
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = 'S3'
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::755095992551:role/tableau.role'
    STORAGE_ALLOWED_LOCATIONS = ('s3://tableau.project.personal/')
    COMMENT = 'Optional Comment';

// description Integration Object
desc integration tableau_integration;

CREATE database tableau;

create schema tableau_Data;

create table tableau_dataset (
    Household_ID         string,
    Region               string,
    Country              string,
    Energy_Source        string,
    Monthly_Usage_kWh    float,
    Year                 int,
    Household_Size       int,
    Income_Level         string,
    Urban_Rural          string,
    Adoption_Year        int,
    Subsidy_Received     string,
    Cost_Savings_USD     float
);


create stage tableau.tableau_data.tableau_stage
    url = 's3://tableau.project.personal'
    storage_integration = tableau_Integration;


copy into tableau_dataset
from @tableau_stage
file_format = (type = csv field_delimiter=',' skip_header = 1)
on_error = 'continue'

select * from tableau_dataset;

select region, count(*) from tableau_dataset group by region

create table energy_consumtion as
select * from tableau_dataset

select * from energy_consumtion

// Updating MONTHLY_USAGE_KWH value dependent on Income level column

update energy_consumtion
set monthly_usage_kwh = monthly_usage_kwh*1.1
where income_level = 'Low'

update energy_consumtion
set monthly_usage_kwh = monthly_usage_kwh*1.2
where income_level = 'Middle'

update energy_consumtion
set monthly_usage_kwh = monthly_usage_kwh*1.3
where income_level = 'High'

select * from energy_consumtion



