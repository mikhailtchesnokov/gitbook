# REST API

The Marketplace Platform REST API allows you to interact with the platform programmatically.&#x20;

The APIs are organized around REST principles, use predictable resource-oriented URLs, [JSON-encoded](http://www.json.org/) representations, and standard HTTP methods and status codes.

Each API works similarly, whether you access it directly over HTTP or through helper libraries in various programming languages.

### Common use cases

Use Marketplace APIs to:

* Manage accounts, users, and groups.
* Automate order processing and fulfillment workflows.
* Manage orders, subscriptions, and assets.
* Retrieve billing and financial data.
* Synchronize Marketplace data with external business systems.
* Integrate and manage notification workflows.

### Getting started

Follow [API Quickstart](../api-quickstart.md) to generate an API token, authenticate requests, and make your first API call.

### Authentication

Marketplace Platform uses [API tokens](../../modules-and-features/settings/api-tokens/) for authentication.

Include your API token in the `Authorization` HTTP header with the `Bearer` scheme.&#x20;

Your API keys have permissions assigned to them, so keep them secure. Don't share your secret API keys in public areas, like GitHub or client-side code.

### HTTPS requirements

All API requests must be made over HTTPS.&#x20;

Requests sent over HTTP are not supported. API requests without authentication will fail.

### Content-type requirements

Most Marketplace API endpoints expect requests to use the `application/json` content type. Endpoints that support file uploads may require `multipart/form-data` instead.

```http
GET https://api.platform.softwareone.com/public/v1/accounts/buyers
Authorization: Bearer {TOKEN_VALUE}
Content-Type: application/json
```

To communicate successfully with the APIs, ensure your API requests are formatted using the `application/json` content type.&#x20;

Using the wrong content type may result in unexpected behavior or errors.

### Browse APIs

{% include "README.GENERATED.md" %}