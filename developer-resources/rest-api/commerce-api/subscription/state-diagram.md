
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>



```mermaid
stateDiagram-v2
    Active --> Updating : Change/Configuration Order placed : Platform
    Active --> Terminating : Termination Order placed : Platform
    Active --> Suspended : Vendor suspends directly : Vendor
    Active --> Suspending : Suspend Order placed : Platform
    Active --> Expired : Renewal service, not renewed : Platform
    Active --> Active : Renewal service, renewed : Platform (commitmentDate advanced)
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

