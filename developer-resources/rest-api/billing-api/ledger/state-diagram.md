
## State diagram



```mermaid
stateDiagram-v2
    Review --> Error
    Generating --> Review : system, statement failure
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
      <td>Review</td>
      <td>Charges rated with no errors; the Ledger is awaiting Operations acceptance.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Error</td>
      <td>Rating completed with one or more charge errors, or a critical rating/processing failure occurred. Recalculate can re-run rating from here.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Rating</td>
      <td>The rating function is (re)computing the Ledger&#39;s rated charges and pricing roll-ups. Transient; reached via recalculate.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Generating</td>
      <td>Accepted; Statements are being created (one per Agreement). Transient.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Generated</td>
      <td>All Statements created; the Ledger is awaiting queue for ERP integration.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Queued</td>
      <td>Queued for ERP integration; the Ledger&#39;s Statements have been pushed to the ERP.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Completed</td>
      <td>All of the Ledger&#39;s Statements reached a final status; the Ledger is finalised.</td>
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
      <td>Review</td>
      <td>Create (rated, no errors)</td>
      <td>system (via Journal `accept`)</td>
      <td>Operations</td>
      <td>Parent Journal accepted; the Seller has charges in the Journal; the Seller&#39;s charges rated with no errors.</td>
      <td>One Ledger is created per distinct Seller in the Journal. No dedicated Ledger creation endpoint.</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>—</td>
      <td>Error</td>
      <td>Create (rating errors)</td>
      <td>system (via Journal `accept`)</td>
      <td>Operations</td>
      <td>Parent Journal accepted; the Seller has charges in the Journal; rating produced one or more charge errors.</td>
      <td>Same creation event as T1; the outcome state depends on whether any charge failed rating.</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>Review</td>
      <td>Rating</td>
      <td>Recalculate</td>
      <td>`recalculate`</td>
      <td>Operations</td>
      <td>Ledger in Review.</td>
      <td>Re-runs the rating function over the Ledger&#39;s charges; clears the current error.</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>Error</td>
      <td>Rating</td>
      <td>Recalculate</td>
      <td>`recalculate`</td>
      <td>Operations</td>
      <td>Ledger in Error.</td>
      <td>Re-runs the rating function; clears the current error.</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Rating</td>
      <td>Review</td>
      <td>Rating completed, no errors</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>No charge rating errors.</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T6</td>
      <td>Rating</td>
      <td>Error</td>
      <td>Rating completed with errors</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>One or more charges failed rating, or a critical rating failure.</td>
      <td>—</td>
    </tr>
    <tr>
      <td>T7</td>
      <td>Review</td>
      <td>Generating</td>
      <td>Accept</td>
      <td>`accept`</td>
      <td>Operations</td>
      <td>Ledger in Review.</td>
      <td>Creates the Ledger&#39;s Statements (one per Agreement); clears the current error.</td>
    </tr>
    <tr>
      <td>T8</td>
      <td>Generating</td>
      <td>Generated</td>
      <td>Statement creation succeeded</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>All Statements created.</td>
      <td>Also rolls the parent Journal to its Accepted state once all its Ledgers are Generated.</td>
    </tr>
    <tr>
      <td>T9</td>
      <td>Generating</td>
      <td>Review</td>
      <td>Statement creation failed</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>One or more Statements failed to generate, or a critical failure.</td>
      <td>Returns to Review with an error recorded.</td>
    </tr>
    <tr>
      <td>T10</td>
      <td>Generated</td>
      <td>Queued</td>
      <td>Queue</td>
      <td>`queue`</td>
      <td>Operations</td>
      <td>Ledger in Generated.</td>
      <td>Pushes the Ledger&#39;s Statements to the ERP; also sets the parent Journal to its Queued state.</td>
    </tr>
    <tr>
      <td>T11</td>
      <td>Queued</td>
      <td>Completed</td>
      <td>All Statements completed</td>
      <td>system (automatic)</td>
      <td>—</td>
      <td>Every Statement in the Ledger reached a final status (issued or cancelled).</td>
      <td>Terminal roll-up; completing all of a Journal&#39;s Ledgers completes the Journal.</td>
    </tr>
  </tbody>
</table>

