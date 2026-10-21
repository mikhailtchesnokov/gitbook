
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>



```mermaid
stateDiagram-v2
    Draft --> Pending : review : Vendor
    Draft --> Deleted : DELETE /{id} : Vendor
    Pending --> Published : publish : Operations
    Published --> Unpublished : unpublish : Vendor, Operations
    Unpublished --> Published : publish : Operations
    Unpublished --> Pending : review : Vendor
```

