
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>



```mermaid
stateDiagram-v2
    state "Active | Enabled | Disabled" as Active_Enabled_Disabled
    [*] --> Active : create, Buyer Active : Client/Operations
    [*] --> Enabled : create, Buyer Enabled : Client/Operations
    Enabled --> Active : Buyer becomes Active : Platform
    Active --> Enabled : Buyer becomes Enabled : Platform
    Active --> Disabled : disable : Client/Operations/Platform
    Enabled --> Disabled : disable : Client/Operations/Platform
    Disabled --> Active : enable, Buyer Active : Client/Operations
    Disabled --> Enabled : enable, Buyer Enabled : Client/Operations
    Active_Enabled_Disabled --> Deleted : delete : Client/Operations
    Deleted --> [*]
```

