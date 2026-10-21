
## State diagram



```mermaid
stateDiagram-v2
```






| State | Description | Initial State? | Terminal State? |
| --- | --- | --- | --- |

| Active | The tenant is enabled for cloud-spend management. Mirrors the enabled state of the mapped consumption-management tenant. | Yes | No |

| Disabled | The tenant is disabled for cloud-spend management. Mirrors the disabled state of the mapped consumption-management tenant. | Yes | No |

| Deleted | The tenant has been removed. It is no longer retrievable via the API (see BR-009 and Section 8). | No | Yes |


