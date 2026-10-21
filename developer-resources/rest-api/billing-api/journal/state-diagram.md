
## State diagram



```mermaid
stateDiagram-v2
    Draft --> Deleted : delete : Vendor
    Validating --> Error : system, errors
    Error --> Validating : upload
    Validated --> Deleted : delete : Vendor
    Review --> Generating : accept : Operations
    Accepted --> Resetting : reset : Operations
    Resetting --> Review : system
    Resetting --> Queued : system
```






## States

<table>
  <thead>
    <tr>
      <th>State</th>
      <th>Description</th>
      <th>Initial State?</th>
      <th>Terminal State?</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Draft</td>
      <td>Journal created; awaiting a charge-data upload.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Validating</td>
      <td>Uploaded charges are being processed, enriched, and validated. Transient.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Validated</td>
      <td>All charges processed with no upload errors; ready for the Vendor to submit to SoftwareOne.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Error</td>
      <td>Charge processing finished with one or more errors, or a critical processing failure occurred.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Review</td>
      <td>Submitted to SoftwareOne; awaiting Operations adjudication.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Enquiring</td>
      <td>Returned to the Vendor for clarification or correction.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Reconciling</td>
      <td>An Operations reconciliation action on one or more charges is in progress; awaiting recalculate.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Generating</td>
      <td>Accepted; Ledgers are being created (one per Seller). Transient.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Generated</td>
      <td>All Ledgers created; awaiting per-Ledger review and acceptance.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Accepted</td>
      <td>All Ledgers generated.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Queued</td>
      <td>Ledgers queued for downstream statement issuance.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Resetting</td>
      <td>A reset is removing generated Ledgers and their Statements. Transient.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Completed</td>
      <td>All Ledgers completed; the Journal is finalised.</td>
      <td>No</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Deleted</td>
      <td>Permanently removed — no longer retrievable via the API.</td>
      <td>No</td>
      <td>Yes</td>
    </tr>
  </tbody>
</table>






## Transitions

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>From State</th>
      <th>To State</th>
      <th>Action</th>
      <th>Endpoint / Verb</th>
      <th>Actor</th>
      <th>Precondition</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>T1</td>
      <td>—</td>
      <td>Draft</td>
      <td>Create</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Vendor</td>
      <td>None</td>
      <td>Name and Authorization required.</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>Draft</td>
      <td>Validating</td>
      <td>Upload charge data</td>
      <td>`upload`</td>
      <td>Vendor / Operations</td>
      <td>A charge file has been registered on the Journal.</td>
      <td>XLSX or JSONL.</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Validated</td>
      <td>Validating</td>
      <td>Re-upload charge data</td>
      <td>`upload`</td>
      <td>Vendor / Operations</td>
      <td>—</td>
      <td>Replaces prior charges.</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>Error</td>
      <td>Validating</td>
      <td>Re-upload charge data</td>
      <td>`upload`</td>
      <td>Vendor / Operations</td>
      <td>—</td>
      <td>Replaces prior charges.</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Enquiring</td>
      <td>Validating</td>
      <td>Re-upload charge data</td>
      <td>`upload`</td>
      <td>Vendor / Operations</td>
      <td>—</td>
      <td>Replaces prior charges.</td>
    </tr>
    <tr>
      <td>T6</td>
      <td>Validating</td>
      <td>Validated</td>
      <td>Validation completed, no errors</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>No charge upload errors.</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T7</td>
      <td>Validating</td>
      <td>Error</td>
      <td>Validation completed with errors</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>One or more charges failed processing, or a critical failure.</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T8</td>
      <td>Validating</td>
      <td>Review</td>
      <td>Re-processing completed</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>Reached via regenerate or recalculate (re-process straight to Review).</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T9</td>
      <td>Validated</td>
      <td>Review</td>
      <td>Submit to SoftwareOne</td>
      <td>`submit`</td>
      <td>Vendor</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T10</td>
      <td>Enquiring</td>
      <td>Review</td>
      <td>Submit to SoftwareOne</td>
      <td>`submit`</td>
      <td>Vendor</td>
      <td>—</td>
      <td>Re-submission after clarification.</td>
    </tr>
    <tr>
      <td>T11</td>
      <td>Review</td>
      <td>Enquiring</td>
      <td>Return to vendor</td>
      <td>`enquiry`</td>
      <td>Operations</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T12</td>
      <td>Review</td>
      <td>Reconciling</td>
      <td>Reconcile a charge</td>
      <td>charge match / ignore / reset action (no dedicated Journal endpoint)</td>
      <td>Operations</td>
      <td>A reconciliation action is performed on a child Charge.</td>
      <td>Journal must be in Review or Reconciling.</td>
    </tr>
    <tr>
      <td>T13</td>
      <td>Reconciling</td>
      <td>Validating</td>
      <td>Recalculate charges</td>
      <td>`recalculate`</td>
      <td>Operations</td>
      <td>—</td>
      <td>Re-processes reconciled charges, then to Review (T8).</td>
    </tr>
    <tr>
      <td>T14</td>
      <td>Review</td>
      <td>Validating</td>
      <td>Regenerate charges</td>
      <td>`regenerate`</td>
      <td>Operations</td>
      <td>—</td>
      <td>Re-processes charges, then to Review (T8).</td>
    </tr>
    <tr>
      <td>T15</td>
      <td>Generated</td>
      <td>Validating</td>
      <td>Regenerate charges</td>
      <td>`regenerate`</td>
      <td>Operations</td>
      <td>—</td>
      <td>Re-processes charges, then to Review (T8).</td>
    </tr>
    <tr>
      <td>T16</td>
      <td>Review</td>
      <td>Generating</td>
      <td>Accept</td>
      <td>`accept`</td>
      <td>Operations</td>
      <td>—</td>
      <td>Creates one Ledger per Seller.</td>
    </tr>
    <tr>
      <td>T17</td>
      <td>Generating</td>
      <td>Generated</td>
      <td>Ledger creation succeeded</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>All Ledgers created.</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T18</td>
      <td>Generating</td>
      <td>Review</td>
      <td>Ledger creation failed</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>Returns to Review with an error.</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T19</td>
      <td>Generated</td>
      <td>Accepted</td>
      <td>All Ledgers generated</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>Driven by the Ledger lifecycle.</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T20</td>
      <td>Generated</td>
      <td>Queued</td>
      <td>Ledgers queued</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>Queueing a Ledger sets the Journal to Queued directly, without requiring Accepted first (intended).</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T21</td>
      <td>Accepted</td>
      <td>Queued</td>
      <td>Ledgers queued</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>Driven by the Ledger lifecycle.</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T22</td>
      <td>Queued</td>
      <td>Completed</td>
      <td>All Ledgers completed</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>Terminal roll-up.</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T23</td>
      <td>Generated</td>
      <td>Resetting</td>
      <td>Reset</td>
      <td>`reset`</td>
      <td>Operations</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T24</td>
      <td>Accepted</td>
      <td>Resetting</td>
      <td>Reset</td>
      <td>`reset`</td>
      <td>Operations</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T25</td>
      <td>Resetting</td>
      <td>Review</td>
      <td>Reset completed</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>Ledgers and their Statements removed.</td>
      <td>On failure the Journal reverts to its pre-reset state (Generated or Accepted).</td>
    </tr>
    <tr>
      <td>T26</td>
      <td>Draft</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`delete`</td>
      <td>Vendor</td>
      <td>—</td>
      <td>Also removes child Charges and Attachments (BR-011).</td>
    </tr>
    <tr>
      <td>T27</td>
      <td>Validated</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`delete`</td>
      <td>Vendor</td>
      <td>—</td>
      <td>Also removes child Charges and Attachments (BR-011).</td>
    </tr>
    <tr>
      <td>T28</td>
      <td>Error</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`delete`</td>
      <td>Vendor</td>
      <td>—</td>
      <td>Also removes child Charges and Attachments (BR-011).</td>
    </tr>
    <tr>
      <td>T29</td>
      <td>Enquiring</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`delete`</td>
      <td>Vendor</td>
      <td>—</td>
      <td>Also removes child Charges and Attachments (BR-011).</td>
    </tr>
  </tbody>
</table>

