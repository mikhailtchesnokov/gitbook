
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>

```mermaid
stateDiagram-v2
    Generating --> Error : errors |
    Queued --> Consolidating : add-child : Operations
    Consolidating --> Generated : remove-child |
```