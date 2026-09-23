
## Enrollment



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
            <td>EnrollmentAudit</td>
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
            <td><code>certificate</code></td>
            <td>CertificateRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>program</code></td>
            <td>ProgramRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>vendor</code></td>
            <td>AccountRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>applicableTo</code></td>
            <td>ProgramApplicableTo</td>
            <td>Allowed values: Buyer,Licensee</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>EnrollmentType</td>
            <td>Allowed values: Change,New</td>
        </tr>
        <tr>
            <td><code>buyer</code></td>
            <td>BuyerRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>licensee</code></td>
            <td>LicenseeRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>eligibility</code></td>
            <td>ProgramEligibility</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>EnrollmentStatus</td>
            <td>Allowed values: Draft,Processing,Querying,Completed,Failed,Deleted</td>
        </tr>
        <tr>
            <td><code>notes</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statusNotes</code></td>
            <td>ParametrisedMessage</td>
            <td></td>
        </tr>
        <tr>
            <td><code>assignee</code></td>
            <td>UserRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>ProgramParameterBag</td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ParametrisedMessage</td>
            <td></td>
        </tr>
        <tr>
            <td><code>template</code></td>
            <td>ProgramTemplateRef</td>
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
            <td>Allowed values: Client,Vendor,Operations</td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>AccountStatus</td>
            <td>Allowed values: Active,Enabled,Disabled</td>
        </tr>
    </tbody>
</table>

## BuyerRef



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

## CapacitySettings



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
            <td><code>min</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>max</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>

## CertificateRef



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
    </tbody>
</table>

## Constraints



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
            <td><code>hidden</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>readonly</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>required</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>capacity</code></td>
            <td>CapacitySettings</td>
            <td></td>
        </tr>
    </tbody>
</table>

## EnrollmentAudit



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
            <td><code>processing</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>querying</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>completed</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
        <tr>
            <td><code>failed</code></td>
            <td>PlatformObjectEvent</td>
            <td></td>
        </tr>
    </tbody>
</table>

## LicenseeRef



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
            <td><code>externalId</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ParametrisedMessage



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
            <td><code>message</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>parameters</code></td>
            <td>object</td>
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

## ProgramParameter



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
            <td><code>externalId</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>name</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>ParameterType</td>
            <td>Allowed values: SingleLineText,MultiLineText,Address,Contact,Checkbox,Choice,Subdomain,Heading,DropDown,Email,DataObject,Date,DateAndTime,Collection</td>
        </tr>
        <tr>
            <td><code>phase</code></td>
            <td>ProgramParameterPhase</td>
            <td>Allowed values: Order,Fulfillment</td>
        </tr>
        <tr>
            <td><code>multiple</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>ParametrisedMessage</td>
            <td></td>
        </tr>
        <tr>
            <td><code>constraints</code></td>
            <td>Constraints</td>
            <td></td>
        </tr>
        <tr>
            <td><code>displayValue</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>object</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProgramParameterBag



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
            <td><code>ordering</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>fulfillment</code></td>
            <td>array</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProgramRef



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
            <td><code>status</code></td>
            <td>ProgramStatus</td>
            <td>Allowed values: None,Draft,Published,Unpublished,Deleted</td>
        </tr>
        <tr>
            <td><code>applicableTo</code></td>
            <td>ProgramApplicableTo</td>
            <td>Allowed values: Buyer,Licensee</td>
        </tr>
        <tr>
            <td><code>products</code></td>
            <td>array</td>
            <td></td>
        </tr>
    </tbody>
</table>

## ProgramTemplateRef



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
            <td><code>type</code></td>
            <td>ProgramTemplateType</td>
            <td>Allowed values: EnrollmentProcessing,EnrollmentQuerying,EnrollmentCompleted</td>
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

## UserRef



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
