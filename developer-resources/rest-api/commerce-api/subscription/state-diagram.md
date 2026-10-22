
## Diagram



```mermaid
stateDiagram-v2
    Active --> Updating : Change/Configuration Order placed : Platform
    Active --> Terminating : Termination Order placed : Platform
    Active --> Suspended : Vendor suspends directly : Vendor
    Active --> Suspending : Suspend Order placed : Platform
    Active --> Expired : Renewal service, not renewed : Platform
    Active --> Active : Renewal service, renewed : Platform
    Active --> Terminated : Vendor terminates directly : Vendor
    Updating --> Active : Order completed or failed : Platform
    Terminating --> Terminated : Termination Order completed : Platform
    Terminating --> Active : Termination Order failed : Platform )
    Terminating --> Suspended : Termination Order failed : Platform )
    Suspending --> Suspended : Suspend Order completed : Platform
    Suspending --> Active : Suspend Order failed : Platform
    Suspended --> Active : Vendor resumes directly : Vendor
    Suspended --> Resuming : Resume Order placed : Platform
    Suspended --> Terminating : Termination Order placed : Platform
    Suspended --> Terminated : Vendor terminates directly : Vendor
    Suspended --> Expired : Renewal service, not renewed : Platform
    Resuming --> Active : Resume Order completed : Platform
    Resuming --> Suspended : Resume Order failed : Platform
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
      <td>Active</td>
      <td>The Subscription is live and fulfilling. It is evaluated daily by the platform&#39;s renewal service and may be renewed, expired, suspended, updated, or terminated.</td>
      <td>Yes</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Updating</td>
      <td>A Change or Configuration Order affecting this Subscription is being processed. The Subscription returns to Active when the Order completes or fails.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Terminating</td>
      <td>A Termination Order affecting this Subscription is being processed. The Subscription transitions to Terminated when the Order completes, or reverts when it fails.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Suspending</td>
      <td>A Suspend Order affecting this Subscription is being processed. The Subscription transitions to Suspended when the Order completes, or reverts to Active when it fails.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Suspended</td>
      <td>Fulfilment is paused. The Subscription can be resumed, terminated, or expired.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Resuming</td>
      <td>A Resume Order affecting this Subscription is being processed. The Subscription transitions to Active when the Order completes, or reverts to Suspended when it fails.</td>
      <td>No</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Terminated</td>
      <td>The Subscription has been permanently ended — by a completed Termination Order or by direct Vendor action. Terminal — no outbound transitions.</td>
      <td>No</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Expired</td>
      <td>The Subscription&#39;s `commitmentDate` passed without renewal and the platform&#39;s daily service moved it to Expired. Terminal — no outbound transitions.</td>
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
      <td>Active</td>
      <td>Order completed — promoted from the Order-scoped representation</td>
      <td>No dedicated endpoint — driven by Purchase/Change Order completion</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>—</td>
      <td>Active</td>
      <td>Vendor creates directly</td>
      <td>`POST` (base collection endpoint)</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Updating</td>
      <td>Change or Configuration Order placed</td>
      <td>No dedicated endpoint — driven by Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Terminating</td>
      <td>Termination Order placed</td>
      <td>No dedicated endpoint — driven by Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Terminated</td>
      <td>Vendor terminates directly</td>
      <td>`terminate`</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Suspended</td>
      <td>Vendor suspends directly</td>
      <td>`suspend`</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Suspending</td>
      <td>Suspend Order placed</td>
      <td>No dedicated endpoint — driven by Suspend Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Expired</td>
      <td>Renewal service — not renewed</td>
      <td>No dedicated endpoint — daily renewal service</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Active</td>
      <td>Active</td>
      <td>Renewal service — renewed</td>
      <td>No dedicated endpoint — daily renewal service</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Updating</td>
      <td>Active</td>
      <td>Change or Configuration Order completed or failed</td>
      <td>No dedicated endpoint — driven by Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Terminating</td>
      <td>Terminated</td>
      <td>Termination Order completed</td>
      <td>No dedicated endpoint — driven by Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Terminating</td>
      <td>Active</td>
      <td>Termination Order failed</td>
      <td>No dedicated endpoint — driven by Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Suspending</td>
      <td>Suspended</td>
      <td>Suspend Order completed</td>
      <td>No dedicated endpoint — driven by Suspend Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Suspending</td>
      <td>Active</td>
      <td>Suspend Order failed</td>
      <td>No dedicated endpoint — driven by Suspend Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Suspended</td>
      <td>Active</td>
      <td>Vendor resumes directly</td>
      <td>`resume`</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Suspended</td>
      <td>Resuming</td>
      <td>Resume Order placed</td>
      <td>No dedicated endpoint — driven by Resume Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Suspended</td>
      <td>Terminating</td>
      <td>Termination Order placed</td>
      <td>No dedicated endpoint — driven by Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Suspended</td>
      <td>Terminated</td>
      <td>Vendor terminates directly</td>
      <td>`terminate`</td>
      <td>Vendor</td>
    </tr>
    <tr>
      <td>Suspended</td>
      <td>Expired</td>
      <td>Renewal service — not renewed</td>
      <td>No dedicated endpoint — daily renewal service</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Resuming</td>
      <td>Active</td>
      <td>Resume Order completed</td>
      <td>No dedicated endpoint — driven by Resume Order state</td>
      <td>Platform</td>
    </tr>
    <tr>
      <td>Resuming</td>
      <td>Suspended</td>
      <td>Resume Order failed</td>
      <td>No dedicated endpoint — driven by Resume Order state</td>
      <td>Platform</td>
    </tr>
  </tbody>
</table>

