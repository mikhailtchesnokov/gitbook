
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>



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

