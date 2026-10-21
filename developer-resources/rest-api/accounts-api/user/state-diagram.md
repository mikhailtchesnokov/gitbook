
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>



```mermaid
stateDiagram-v2
    [*] --> New : Create identity
    New --> Invited : invited
    Invited --> Active : membership activated
    InvitationExpired --> Disabled
    Disabled --> Active : re-added
    Disabled --> Invited : re-added
    Invited --> Blocked : Block | (Delete, from Disabled only)
    InvitationExpired --> Blocked : Block | (Delete, from Disabled only)
    Active --> Blocked : Block | (Delete, from Disabled only)
    Disabled --> Blocked : Block | (Delete, from Disabled only)
    Blocked --> Active : Unblock: recalculated
    Blocked --> Invited : Unblock: recalculated
    Blocked --> InvitationExpired : Unblock: recalculated
    Blocked --> Disabled : Unblock: recalculated
```

