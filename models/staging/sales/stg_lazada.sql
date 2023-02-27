with lazada as (
    select 
        Transaction_Date as order_date,
        Transaction_Type as order_type,
        Transaction_Number as order_id,
        Lazada_SKU as product_id
    from {{source('pieza_data','lnd_lazada')}}
    where Transaction_Date is not null AND Transaction_Type = 'Orders-Sales'
)

select * from lazada