# Domain Model

The system tracks two core entities: the equipment catalog and the loans against it. Each equipment item has at most one open loan at a time.

```mermaid
erDiagram
    EQUIPMENT {
        string id PK
        string name
        string category
        string identifier
        string status
    }
    LOAN {
        string id PK
        string equipmentId FK
        string borrowerId
        string borrowedAt
        string dueAt
        string returnedAt
    }

    EQUIPMENT ||--o{ LOAN : "is loaned via"
```

- `EQUIPMENT.category` is one of the fixed list: Laptop, Projector, Camera, Other.
- `EQUIPMENT.status` is `available`, `on-loan`, or `retired`.
- `LOAN.returnedAt` is null while the loan is open; a loan is overdue when `returnedAt` is null and `dueAt` has passed.
- `LOAN.borrowerId` references the signed-in staff member who borrowed the item.