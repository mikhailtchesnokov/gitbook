
## State diagram



```mermaid
stateDiagram-v2
    Draft --> Provisioning : Purchase Order placed : Platform
    Draft --> Deleted : Purchase Order deleted : Platform
    Provisioning --> Active : Purchase Order completed : Platform
    Provisioning --> Failed : Purchase Order failed : Platform
    Active --> Updating : Change/Configuration/Termination Order placed : Platform
    Updating --> Active : Order completed or failed : Platform
    Active --> Terminated : All Subscriptions terminated : Platform
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
      <td>The Agreement has been co-created with a Purchase Order that has not yet been placed. It has no active Subscriptions or Assets, and no parameters yet.</td>
      <td>Yes (co-creation)</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Provisioning</td>
      <td>The Purchase Order against this Agreement has been placed and is being processed by the Vendor.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Updating</td>
      <td>A Change, Configuration, Termination, Suspend, or Resume Order against this Agreement has been placed and is being processed.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>The Agreement is active with at least one live Subscription or Asset. It returns to Active when a Change, Configuration, or Termination Order completes or fails.</td>
      <td>Yes (Operations direct create)</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Terminated</td>
      <td>Every Subscription on the Agreement is Terminated or Expired. Terminal — no outbound transitions.</td>
      <td>Yes (Operations direct create)</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Failed</td>
      <td>The Purchase Order against this Agreement failed. The Agreement cannot be transacted against and cannot be recovered. Terminal — no outbound transitions.</td>
      <td>No</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Deleted</td>
      <td>The Agreement has been soft-deleted — moves to Deleted status and remains retrievable via the API including in standard list responses. Only reachable from Draft when the co-created Purchase Order is deleted. Terminal — no outbound transitions. Deviates from Platform Invariant 7.</td>
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
      <td>Co-created with Purchase Order</td>
      <td>(no dedicated Agreement endpoint — co-created when a Purchase Order is persisted via `POST /commerce/orders`)</td>
      <td>Platform (Client token)</td>
      <td>Purchase Order created by Client</td>
      <td>Automated. The Agreement cannot be created this way independently of an Order.</td>
    </tr>
    <tr>
      <td>T2</td>
      <td>—</td>
      <td>Provisioning</td>
      <td>Co-created and placed in one call</td>
      <td>(no dedicated Agreement endpoint — Purchase Order created directly in Processing)</td>
      <td>Platform (Client token)</td>
      <td>Purchase Order created and placed without saving as Draft</td>
      <td>Automated.</td>
    </tr>
    <tr>
      <td>T3</td>
      <td>—</td>
      <td>Active</td>
      <td>Operations direct create</td>
      <td>`POST /commerce/agreements`</td>
      <td>Operations</td>
      <td>Request body `status` = Active</td>
      <td>Standalone create (Operations only). Built as Draft then advanced straight to Active, bypassing Order provisioning — see BR-001.</td>
    </tr>
    <tr>
      <td>T4</td>
      <td>—</td>
      <td>Terminated</td>
      <td>Operations direct create (terminated)</td>
      <td>`POST /commerce/agreements`</td>
      <td>Operations</td>
      <td>Request body `status` = Terminated</td>
      <td>As T3, then advanced to Terminated.</td>
    </tr>
    <tr>
      <td>T5</td>
      <td>Draft</td>
      <td>Provisioning</td>
      <td>Purchase Order placed</td>
      <td>(no dedicated Agreement endpoint — Purchase Order → Processing)</td>
      <td>Platform (Client token)</td>
      <td>Purchase Order transitions to Processing</td>
      <td>Automated.</td>
    </tr>
    <tr>
      <td>T6</td>
      <td>Draft</td>
      <td>Deleted</td>
      <td>Purchase Order deleted</td>
      <td>(no dedicated Agreement endpoint — Draft/Quoted Purchase Order deleted)</td>
      <td>Platform (deleting Actor&#39;s token)</td>
      <td>Co-created Purchase Order deleted</td>
      <td>Soft-delete — remains retrievable via the API.</td>
    </tr>
    <tr>
      <td>T7</td>
      <td>Provisioning</td>
      <td>Active</td>
      <td>Purchase Order completed</td>
      <td>(no dedicated Agreement endpoint — Purchase Order → Completed)</td>
      <td>Platform (Vendor token)</td>
      <td>Purchase Order transitions to Completed</td>
      <td>Draft Subscriptions and Assets become Active. Only the Vendor can complete an Order.</td>
    </tr>
    <tr>
      <td>T8</td>
      <td>Provisioning</td>
      <td>Failed</td>
      <td>Purchase Order failed</td>
      <td>(no dedicated Agreement endpoint — Purchase Order → Failed)</td>
      <td>Platform (Vendor or Operations token)</td>
      <td>Purchase Order transitions to Failed</td>
      <td>Terminal — cannot be recovered.</td>
    </tr>
    <tr>
      <td>T9</td>
      <td>Active</td>
      <td>Updating</td>
      <td>Change, Configuration, Termination, Suspend, or Resume Order placed</td>
      <td>(no dedicated Agreement endpoint — non-Purchase Order → Processing)</td>
      <td>Platform (Client token)</td>
      <td>A non-Purchase Order transitions to Processing</td>
      <td>Automated.</td>
    </tr>
    <tr>
      <td>T10</td>
      <td>Updating</td>
      <td>Active</td>
      <td>Order completed, or non-Purchase Order failed</td>
      <td>(no dedicated Agreement endpoint — Order → Completed/Failed)</td>
      <td>Platform (Vendor or Operations token)</td>
      <td>The Processing Order completes, or a non-Purchase Order fails (revert)</td>
      <td>On failure of a non-Purchase Order, the Agreement and its Subscriptions revert to Active unchanged.</td>
    </tr>
    <tr>
      <td>T11</td>
      <td>Active</td>
      <td>Terminated</td>
      <td>Final Subscription terminated</td>
      <td>(no dedicated Agreement endpoint — driven by Subscription state / Termination Order completion)</td>
      <td>Platform</td>
      <td>Every Subscription on the Agreement is Terminated or Expired</td>
      <td>Triggered whether via a Termination Order, direct Vendor action on the last Subscription, or expiry — see BR-006. Direct action transits Updating internally.</td>
    </tr>
  </tbody>
</table>

