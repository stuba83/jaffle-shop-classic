with payments as (
    select * from {{ ref('stg_payments') }}
)

select
    payment_id,
    order_id,
    payment_method,
    amount
from payments
