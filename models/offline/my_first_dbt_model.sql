
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with source_data_credit_history as (
    select * from credit_history
)

select *
from source_data_credit_history

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
