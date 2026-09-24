
## Rate

Record of rate for specific day

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>ExchangeAudit</td>
            <td>Exchange Entity Audit properties bag</td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>pair</code></td>
            <td>PairRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>recordDate</code></td>
            <td>string</td>
            <td>Date and time of rate</td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>number</td>
            <td>Rate from source to destination currency</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>External id of rate</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>RateStatus</td>
            <td>Record status. Allowed values: Active,Deleted</td>
        </tr>
        <tr>
            <td><code>reverseRate</code></td>
            <td>RateRef</td>
            <td></td>
        </tr></tbody>
</table>

## ExchangeAudit

Exchange Entity Audit properties bag

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>created</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>updated</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>deleted</code></td>
            <td>PlatformObjectEvent</td>
            <td>Delete event details</td>
        </tr>
    </tbody>
</table>

## PairRef

Represents a pair of currencies in exchange module.

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the pair</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>The name of the pair</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>The external id of the pair</td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td>string</td>
            <td>Notes for the pair</td>
        </tr>
        <tr>
            <td><code>primary</code></td>
            <td>boolean</td>
            <td>If the pair is primary</td>
        </tr>
        <tr>
            <td><code>latestRate</code></td>
            <td>Rate</td>
            <td>Latest pair rate</td>
        </tr>
    </tbody>
</table>

## PlatformIdentityRef



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PlatformMetadata



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>omitted</code></td>
            <td>array</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PlatformObjectEvent



<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>at</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>by</code></td>
            <td>PlatformIdentityRef</td>
            <td></td>
        </tr>
    </tbody>
</table>

## RateRef

Record of rate for specific day

<table data-search="false">
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>number</td>
            <td>Rate from source to destination currency</td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>External id of rate</td>
        </tr>
    </tbody>
</table>
