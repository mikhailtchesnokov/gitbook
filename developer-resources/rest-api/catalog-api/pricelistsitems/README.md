
## PriceListItem



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
            <td>PriceListItemAudit</td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
            <td></td>
        </tr>
        <tr>
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>info</code></td>
            <td>PriceInfo</td>
            <td></td>
        </tr>
        <tr>
            <td><code>reasonForChange</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitLP</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitPP</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>markup</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>margin</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unitSP</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx1</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxM</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPxY</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>PPx3Y</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx1</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxM</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPxY</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>SPx3Y</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>LPx1</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>LPxM</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>LPxY</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>LPx3Y</code></td>
            <td>number</td>
            <td></td>
        </tr>
        <tr>
            <td><code>priceList</code></td>
            <td>object</td>
            <td></td>
        </tr>
        <tr>
            <td><code>item</code></td>
            <td>object</td>
            <td></td>
        </tr></tbody>
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

## PriceInfo



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
            <td><code>visible</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PriceListItemAudit



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
            <td><code>published</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>unpublished</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PriceListRef



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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>currency</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductItemExternalIdBag



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
        <tr>
            <td><code>operations</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductItemRef



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
            <td><code>revision</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductItemExternalIdBag</td>
            <td></td>
        </tr>
    </tbody>
</table>
