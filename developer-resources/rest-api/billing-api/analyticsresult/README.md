
## AnalyticsResult


### Description
Represents analytics result data with date-based buckets and aggregated values.



### Attributes

{% include "../../../../.gitbook/includes/api-table-header.md" %}

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>range</code></td>
            <td>DateRange</td>
	        <td></td>
	        <td></td>
            <td>Date range for the analytics data</td>
        </tr>
        <tr>
            <td><code>buckets</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Buckets of grouped data</td>
        </tr></tbody>
</table>


## Downstream models
### Bucket

Represents a bucket for grouping analytics data.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Bucket identifier</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Bucket name</td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Bucket icon</td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>number</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Aggregated monetary value</td>
        </tr>
        <tr>
            <td><code>conversion</code></td>
            <td>CurrencyConversion</td>
	        <td></td>
	        <td></td>
            <td>Type of currency conversion applied to this bucket. Allowed values: None,Historical,Current</td>
        </tr>
    </tbody>
</table>

### DateRange

Represents a date range with from and to dates.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Rql</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>from</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>Start date of the range</td>
        </tr>
        <tr>
            <td><code>to</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td>End date of the range</td>
        </tr>
    </tbody>
</table>
