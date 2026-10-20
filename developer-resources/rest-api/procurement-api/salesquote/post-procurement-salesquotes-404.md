# Retry a sales quote will try to finalize or accept the quote again if the quote is in an error status

{% openapi-operation spec="marketplace-exchange-v5" path="/public/v1/procurement/sales-quotes/{id}/retry" method="post" %}
[OpenAPI marketplace-exchange-v5](https://api.s1.show/public/v1/exchange/openapi.json)
{% endopenapi-operation %}