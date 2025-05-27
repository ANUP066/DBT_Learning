with payments as (
    select * from {{ ref('stg_stripe__payments') }}
),

total_revenue as (
    select sum(amount) as total_revenue
    from payments
    where status = 'success'
)

select total_revenue
from total_revenue