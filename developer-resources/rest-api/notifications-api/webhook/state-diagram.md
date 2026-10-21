
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>

```mermaid
stateDiagram-v2
    Enabled --> Disabled : disable : Vendor, Operations
    Disabled --> Enabled : enable : Vendor, Operations
    Enabled --> Deleted : DELETE /{id} : Vendor, Operations
    Disabled --> Deleted : DELETE /{id} : Vendor, Operations
```