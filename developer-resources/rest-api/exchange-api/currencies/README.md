
## Currency

Represents currency in exchange module.

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
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the currency.</td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>The name of the currency.</td>
        </tr>
        <tr>
            <td><code>code</code></td>
            <td>string</td>
            <td>The ISO code of currency</td>
        </tr>
        <tr>
            <td><code>precision</code></td>
            <td>integer</td>
            <td>Precision of the currency</td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>CurrencyStatistics</td>
            <td>Currency statistics</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>CurrencyStatus</td>
            <td>The current status of the currency.Allowed values: Active,Deleted</td>
        </tr></tbody>
</table>

## CurrencyStatistics

Currency usage statistics

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
            <td><code>sellerCount</code></td>
            <td>integer</td>
            <td>Number of sellers using currency</td>
        </tr>
        <tr>
            <td><code>pairCount</code></td>
            <td>integer</td>
            <td>Number of pairs</td>
        </tr>
    </tbody>
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
            <td>object</td>
            <td></td>
        </tr>
    </tbody>
</table>
