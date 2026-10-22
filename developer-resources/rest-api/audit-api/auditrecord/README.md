
## AuditRecord


### IdPrefix 
AUD



### Description
An Audit Record is a single, immutable log entry capturing a significant change or action on a platform object. The Audit namespace is platform-wide (preamble §4): records are produced for objects across every namespace — an [[Agreement]] update, a [[User]] login, an [[Account]] module change, and so on. Most records are generated automatically by the platform when an object event occurs, but the record can also be submitted through the API by an automation or extension that needs to log a business-critical action, including actions on objects the platform does not itself persist. Each record identifies what happened, which object it concerned, who did it, and — for public records — which accounts are permitted to see it. Every record belongs to exactly one [[Event Type]], which classifies the kind of event it represents.


{% include "../../../../.gitbook/includes/api-table-header.md" %}

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
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
            <td></td>
        </tr>
        <tr>
            <td><code>event</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>summary</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>details</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>object</code></td>
            <td>EventObject</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>timestamp</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>actor</code></td>
            <td>EventActor</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>documents</code></td>
            <td>object</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>viewers</code></td>
            <td>array</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>request</code></td>
            <td>AuditRecordRequest</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>AuditRecordType</td>
	        <td></td>
	        <td></td>
            <td>. Allowed values: Private,Public</td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr></tbody>
</table>


Downstream models here
## AuditRecordApiRequest



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>ip</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>geolocation</code></td>
            <td>GeolocationData</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>userAgent</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

## AuditRecordLogInfo



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>requestId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>operationId</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

## AuditRecordMessageInfo



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
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
            <td></td>
        </tr>
    </tbody>
</table>

## AuditRecordRequest



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>api</code></td>
            <td>AuditRecordApiRequest</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>worker</code></td>
            <td>AuditRecordWorkerRequest</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>log</code></td>
            <td>AuditRecordLogInfo</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>message</code></td>
            <td>AuditRecordMessageInfo</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## AuditRecordWorkerRequest



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>workerName</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

## EventActor



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
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
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>EventActorAccount</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## EventActorAccount



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
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
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>accountType</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

## EventObject



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
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
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>objectType</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

## EventViewer



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
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
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

## GeolocationData



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>countryCode</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>countryName</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
        <tr>
            <td><code>region</code></td>
            <td>string</td>
	        <td></td>
	        <td>client,vendor,ops</td>
            <td></td>
        </tr>
    </tbody>
</table>

## JsonNode



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>options</code></td>
            <td>JsonNodeOptions</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>parent</code></td>
            <td>JsonNode</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
        <tr>
            <td><code>root</code></td>
            <td>JsonNode</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>

## JsonNodeOptions



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
	        <th>Core</th>
	        <th>Access</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>propertyNameCaseInsensitive</code></td>
            <td>boolean</td>
	        <td></td>
	        <td></td>
            <td></td>
        </tr>
    </tbody>
</table>
