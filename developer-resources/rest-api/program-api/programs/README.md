
## Program



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
            <td>ProgramAudit</td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
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
            <td><code>shortDescription</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>longDescription</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>icon</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>ProgramStatus</td>
            <td>. Allowed values: None,Draft,Published,Unpublished,Deleted</td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>ProgramEligibility</td>
            <td></td>
        </tr>
        <tr>
            <td><code>applicableTo</code></td>
            <td>ProgramApplicableTo</td>
            <td>. Allowed values: Buyer,Licensee</td>
        </tr>
        <tr>
            <td><code>products</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>settings</code></td>
            <td>ProgramSettings</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>ProgramStatistics</td>
            <td></td>
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
            <td>. Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
            <td>. Allowed values: Active,Enabled,Disabled</td>
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

## PreValidation



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
            <td><code>enrollmentDraft</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>enrollmentQuerying</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>reEnrollment</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>reEnrollmentDraft</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>reEnrollmentQuerying</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
    </tbody>
</table>

## PreValidationSettings



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
            <td><code>purchaseOrderDraft</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>purchaseOrderQuerying</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>changeOrderDraft</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>configurationOrderDraft</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminationOrder</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
    </tbody>
</table>

## Product



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
            <td>ProductAudit</td>
            <td></td>
        </tr>
        <tr>
            <td><code>$meta</code></td>
            <td>PlatformMetadata</td>
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
            <td><code>shortDescription</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>longDescription</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>externalIds</code></td>
            <td>ProductExternalIdBag</td>
            <td></td>
        </tr>
        <tr>
            <td><code>website</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>settings</code></td>
            <td>ProductSettings</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>ProductStatistics</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductAudit



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
            <td><code>pending</code></td>
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

## ProductRequestsSetting



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
            <td><code>enabled</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>label</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductSettings



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
            <td><code>productOrdering</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>productRequests</code></td>
            <td>ProductRequestsSetting</td>
            <td></td>
        </tr>
        <tr>
            <td><code>itemSelection</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>orderQueueChanges</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>preValidation</code></td>
            <td>PreValidationSettings</td>
            <td></td>
        </tr>
        <tr>
            <td><code>splitBilling</code></td>
            <td>ProductSplitBillingRequestsSetting</td>
            <td></td>
        </tr>
        <tr>
            <td><code>sendCostToErp</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptionCessation</code></td>
            <td>SubscriptionCessationSetting</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductSplitBillingRequestsSetting



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
            <td><code>enabled</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProductStatistics



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
            <td><code>itemCount</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>ordersPlacedCount</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>agreementCount</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>subscriptionCount</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProgramAudit



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

## ProgramEligibility



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
            <td><code>client</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>partner</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProgramSettings



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
            <td><code>newCertificateAutoapprove</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>programEnrollment</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>programLink</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>terminateOnExpiration</code></td>
            <td>TerminateOnExpiration</td>
            <td></td>
        </tr>
        <tr>
            <td><code>preValidation</code></td>
            <td>PreValidation</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProgramStatistics



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
            <td><code>certificates</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>

## SubscriptionCessationSetting



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
            <td><code>enabled</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>mode</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## TerminateOnExpiration



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
            <td><code>enabled</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>duration</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>
