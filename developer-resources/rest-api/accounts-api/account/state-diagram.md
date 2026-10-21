
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>

```mermaid
stateDiagram-v2
    Enabled --> Active : Activate : Operations (Client Accounts only — CDG ERP-validated)
    Active --> Enabled : Deactivate : Operations (Client Accounts only)
    Active --> Disabled : Disable : Operations (Vendor and Client Accounts only)
    Enabled --> Disabled : Disable : Operations (Vendor and Client Accounts only)
    Disabled --> Active : Enable : Operations (reversal)
    Disabled --> Enabled : Enable : Operations (reversal)
```