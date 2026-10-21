
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>



```mermaid
stateDiagram-v2
    [*] --> Active : Create : Actor w/ Access Management
    Active --> Disabled : Disable
    Disabled --> Active : Enable
    Active --> Deleted : Delete
    Disabled --> Deleted : Delete
```

