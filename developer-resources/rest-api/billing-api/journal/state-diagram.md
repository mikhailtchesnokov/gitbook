
## Diagram



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
      <th>From State</th>
      <th>To State</th>
      <th>Action</th>
      <th>Endpoint / Verb</th>
      <th>Actor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>—</td>
      <td>Draft</td>
      <td>Create</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Draft</td>
      <td>Validating</td>
      <td>Upload charge data</td>
      <td>`upload`</td>
      <td>Vendor / Operations</td>
    </tr>
    <tr>
      <td>Validated</td>
      <td>Validating</td>
      <td>Re-upload charge data</td>
      <td>`upload`</td>
      <td>Vendor / Operations</td>
    </tr>
    <tr>
      <td>Error</td>
      <td>Validating</td>
      <td>Re-upload charge data</td>
      <td>`upload`</td>
      <td>Vendor / Operations</td>
    </tr>
    <tr>
      <td>Enquiring</td>
      <td>Validating</td>
      <td>Re-upload charge data</td>
      <td>`upload`</td>
      <td>Vendor / Operations</td>
    </tr>
    <tr>
      <td>Validating</td>
      <td>Validated</td>
      <td>Validation completed, no errors</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Validating</td>
      <td>Error</td>
      <td>Validation completed with errors</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Validating</td>
      <td>Review</td>
      <td>Re-processing completed</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Validated</td>
      <td>Review</td>
      <td>Submit to SoftwareOne</td>
      <td>`submit`</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Enquiring</td>
      <td>Review</td>
      <td>Submit to SoftwareOne</td>
      <td>`submit`</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Review</td>
      <td>Enquiring</td>
      <td>Return to vendor</td>
      <td>`enquiry`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Review</td>
      <td>Reconciling</td>
      <td>Reconcile a charge</td>
      <td>charge match / ignore / reset action (no dedicated Journal endpoint)</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Reconciling</td>
      <td>Validating</td>
      <td>Recalculate charges</td>
      <td>`recalculate`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Review</td>
      <td>Validating</td>
      <td>Regenerate charges</td>
      <td>`regenerate`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Generated</td>
      <td>Validating</td>
      <td>Regenerate charges</td>
      <td>`regenerate`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Review</td>
      <td>Generating</td>
      <td>Accept</td>
      <td>`accept`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Generating</td>
      <td>Generated</td>
      <td>Ledger creation succeeded</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Generating</td>
      <td>Review</td>
      <td>Ledger creation failed</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Generated</td>
      <td>Accepted</td>
      <td>All Ledgers generated</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Generated</td>
      <td>Queued</td>
      <td>Ledgers queued</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Accepted</td>
      <td>Queued</td>
      <td>Ledgers queued</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Queued</td>
      <td>Completed</td>
      <td>All Ledgers completed</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Generated</td>
      <td>Resetting</td>
      <td>Reset</td>
      <td>`reset`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Accepted</td>
      <td>Resetting</td>
      <td>Reset</td>
      <td>`reset`</td>
      <td>Operations</td>
    </tr>
    <tr>
      <td>Resetting</td>
      <td>Review</td>
      <td>Reset completed</td>
      <td>system (automatic)</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Draft</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`delete`</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Validated</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`delete`</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Error</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`delete`</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Enquiring</td>
      <td>Deleted</td>
      <td>Delete</td>
      <td>`delete`</td>
      <td>Vendor</td>
    </tr>
  </tbody>
</table>

