
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>



```mermaid
stateDiagram-v2
    %% Creation (status derived from Account + ERP identifiers):
    [*] --> Unassigned : Create, no Account
    [*] --> Enabled : Create, Account, no ERP IDs
    [*] --> Active : Create, Account + ERP IDs
    %% Action-driven transitions:
    Unassigned --> Active : Assign Account (→ Enabled if no ERP IDs)
    Active --> Unassigned : Unassign Account
    Disabled --> Unassigned : Unassign Account
    Mismatch --> Unassigned : Unassign Account
    Enabled --> Active : Activate
    Active --> Disabled : Disable
    Enabled --> Disabled : Disable
    Disabled --> Active : Enable (re-derived: Active / Enabled / Unassigned)
    Unassigned --> Deleted : Delete, soft
    Enabled --> Deleted : Delete, soft
    Active --> Deleted : Delete, soft
    Disabled --> Deleted : Delete, soft
    Mismatch --> Deleted : Delete, soft
    Conflict --> Deleted : Delete, soft
    Deleted --> [*]
    %% Error overlays (automatic, not action-driven — see 3.1 note and Section 7.2):
    Unassigned --> Conflict : errors
    Conflict --> Unassigned : errors cleared
    Active --> Mismatch : errors
    Mismatch --> Active : errors cleared
    Disabled --> Mismatch : errors
    Mismatch --> Disabled : errors cleared
```

