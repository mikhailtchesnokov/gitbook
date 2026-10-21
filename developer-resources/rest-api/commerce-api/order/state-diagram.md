
## State diagram

<figure><img src="" alt=""><figcaption><p>The state transition diagram of a client account.</p></figcaption></figure>

```mermaid
stateDiagram-v2
    Draft --> Draft : Update Order : Client, Operations
    Draft --> Quoted : Quote Order : Client
    Draft --> Quoted : Operations updates a Draft Order : Operations
    Draft --> Processing : Place Order : Client
    Draft --> Deleted : Delete Order : Client, Vendor, Operations
    Quoted --> Processing : Place Order : Client
    Quoted --> Deleted : Delete Order : Client, Vendor, Operations
    Processing --> Completed : Complete Order : Vendor
    Processing --> Failed : Fail Order : Vendor, Operations
    Processing --> Querying : Move to Querying : Vendor
    Querying --> Processing : Return to Processing : Client, Vendor, Operations
    Querying --> Failed : Fail Order : Operations
```