
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>



```mermaid
stateDiagram-v2
    [*] --> Active : created during Buyer sync : Platform
    Active --> Blocked : Block : Operations
    Blocked --> Active : Unblock : Operations
    Active --> Disabled : Seller Disabled : Platform
    Blocked --> Disabled : Seller Disabled : Platform
    Disabled --> Active : Seller no longer Disabled : Platform — restores prior status)
    Disabled --> Blocked : Seller no longer Disabled : Platform — restores prior status)
```

