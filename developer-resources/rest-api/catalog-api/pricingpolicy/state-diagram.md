
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>



```mermaid
stateDiagram-v2
    state "Active | Inactive" as Active_Inactive
    [*] --> Active : Create : Operations
    Active --> Inactive : Disable : Operations
    Inactive --> Active : Activate : Operations
    Active_Inactive --> Deleted : Delete : Operations
```

