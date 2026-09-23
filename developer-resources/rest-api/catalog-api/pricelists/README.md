
# PriceList



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
            <td>
            </td>
        </tr>
        <tr>
            <td><code>audit</code></td>
            <td>PlatformObjectAudit</td>
            <td>
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
            <td><code>currency</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>precision</code></td>
            <td>integer</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>defaultMarkup</code></td>
            <td>number</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>defaultMargin</code></td>
            <td>number</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td>string</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>PriceListExternalIdBag</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>PriceListStatistics</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>product</code></td>
            <td>object</td>
            <td>
            </td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>object</td>
            <td>
            </td>
        </tr></tbody>
</table>







## AccountRef



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
        <tr>
            <td><code>type</code></td>
            <td>AccountType</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
            <td></td>
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


## PlatformObjectAudit



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


## PriceListExternalIdBag



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
            <td><code>vendor</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>


## PriceListStatistics



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
            <td><code>sellers</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>listings</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>priceListItems</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>purchasePriceItems</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>purchasePriceCompleteness</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>salesPriceItems</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>salesPriceCompleteness</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>averageMarkup</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>averageMargin</code></td>
            <td>number</td>
            <td></td>
        </tr>
    </tbody>
</table>


## ProductExternalIdBag



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
            <td><code>operations</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>defaultErpItem</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>


## ProductRef



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
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductExternalIdBag</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>
