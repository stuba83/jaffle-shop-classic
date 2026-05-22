with payments as (
    select * from {{ ref('payments') }}
)

select
    id              as payment_id,
    orderid         as order_id,
    paymentmethod   as payment_method,
    amount / 100.0  as amount
from payments
