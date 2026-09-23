
#Pair

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
            <td><code>audit</code></td>
            <td>ExchangeAudit</td>
            <td>Exchange Entity Audit properties bag
            </td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>id</code></td>
            <td>string</td>
            <td>The unique identifier of the pair.
            </td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td>The name of the pair.
            </td>
        </tr>
        <tr>
            <td><code>externalId</code></td>
            <td>string</td>
            <td>The external id of the pair
            </td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td>string</td>
            <td>Notes for the pair
            </td>
        </tr>
        <tr>
            <td><code>primary</code></td>
            <td>boolean</td>
            <td>If the pair is primary
            </td>
        </tr>
        <tr>
            <td><code>reverse</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>sourceCurrency</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>destinationCurrency</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>latestRate</code></td>
            <td>Rate</td>
            <td>Latest pair rate
            </td>
        </tr>
        <tr>
            <td><code>agreements</code></td>
            <td>integer</td>
            <td>Number of agreements
            </td>
        </tr>
        <tr>
            <td><code>rates</code></td>
            <td>integer</td>
            <td>Number of rates
            </td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>PairStatus</td>
            <td>The current status of the pair.            
            Allowed values:
            <ul>
                <li><code>Active</code></li>
                                <li><code>Deleted</code></li>
                                
            </ul>
            </td>
        </tr></tbody>
</table>

