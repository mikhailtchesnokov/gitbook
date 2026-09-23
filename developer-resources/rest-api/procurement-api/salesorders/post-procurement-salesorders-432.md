# Retry a sales order will try to finalize order again if the order is in an error status

{% openapi-operation spec="marketplace-exchange-v5" path="/public/v1/procurement/sales-orders/{id}/retry" method="post" %}
[OpenAPI marketplace-exchange-v5](https://api.s1.show/public/v1/exchange/openapi.json)
{% endopenapi-operation %}