
# Webhook



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
            <td>PlatformObjectAudit</td>
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
            <td><code>url</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>description</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>status</code></td>
            <td>WebhookStatus</td>
            <td>Allowed values: Enabled,Disabled</td>
        </tr>
        <tr>
            <td><code>type</code></td>
            <td>WebhookType</td>
            <td>Allowed values: ValidatePurchaseOrderDraft,ValidatePurchaseOrderQuerying,ValidateChangeOrderDraft,ValidateTerminateOrder,SelectOrderLines,ValidateEnrollmentDraft,ValidateEnrollmentQuerying,ValidateReEnrollment,ValidateReEnrollmentQuerying,ValidateConfigurationOrderDraft,ValidateAnswer</td>
        </tr>
        <tr>
            <td><code>secret</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>statistics</code></td>
            <td>WebhookStatistics</td>
            <td></td>
        </tr>
        <tr>
            <td><code>objectType</code></td>
            <td>WebhookObjectType</td>
            <td>Allowed values: Order,Request,Account,Enrollment,Answer</td>
        </tr>
        <tr>
            <td><code>account</code></td>
            <td>object</td>
            <td></td>
        </tr>
        <tr>
            <td><code>object</code></td>
            <td>WebhookObjectRef</td>
            <td></td>
        </tr>
        <tr>
            <td><code>criteria</code></td>
            <td>array</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lastSuccess</code></td>
            <td>WebhookCall</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lastFailure</code></td>
            <td>WebhookCall</td>
            <td></td>
        </tr>
        <tr>
            <td><code>lastCall</code></td>
            <td>WebhookCall</td>
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


## WebhookCall



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
            <td><code>success</code></td>
            <td>boolean</td>
            <td></td>
        </tr>
        <tr>
            <td><code>callTime</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>responseTime</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>headers</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>error</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>response</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>reasonPhrase</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>httpStatusCode</code></td>
            <td>HttpStatusCode</td>
            <td>Allowed values: Continue,SwitchingProtocols,Processing,EarlyHints,OK,Created,Accepted,NonAuthoritativeInformation,NoContent,ResetContent,PartialContent,MultiStatus,AlreadyReported,IMUsed,MultipleChoices,MovedPermanently,Found,SeeOther,NotModified,UseProxy,Unused,TemporaryRedirect,PermanentRedirect,BadRequest,Unauthorized,PaymentRequired,Forbidden,NotFound,MethodNotAllowed,NotAcceptable,ProxyAuthenticationRequired,RequestTimeout,Conflict,Gone,LengthRequired,PreconditionFailed,RequestEntityTooLarge,RequestUriTooLong,UnsupportedMediaType,RequestedRangeNotSatisfiable,ExpectationFailed,MisdirectedRequest,UnprocessableEntity,Locked,FailedDependency,UpgradeRequired,PreconditionRequired,TooManyRequests,RequestHeaderFieldsTooLarge,UnavailableForLegalReasons,InternalServerError,NotImplemented,BadGateway,ServiceUnavailable,GatewayTimeout,HttpVersionNotSupported,VariantAlsoNegotiates,InsufficientStorage,LoopDetected,NotExtended,NetworkAuthenticationRequired</td>
        </tr>
    </tbody>
</table>


## WebhookCriteria



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
            <td><code>key</code></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><code>value</code></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>


## WebhookObjectRef



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
    </tbody>
</table>


## WebhookStatistics



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
            <td><code>total</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>successes</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>failures</code></td>
            <td>integer</td>
            <td></td>
        </tr>
        <tr>
            <td><code>failuresSinceLastSuccess</code></td>
            <td>integer</td>
            <td></td>
        </tr>
    </tbody>
</table>
