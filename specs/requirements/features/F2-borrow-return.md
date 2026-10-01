# Borrow &amp; Return

## Purpose

Let staff check equipment out and back in, recording who has what and when it is due back.

Needs: F1.

## User Stories

- F2.1 As staff, I borrow an available item immediately, choosing a return date, with no approval step.
- F2.2 As staff, I mark a borrowed item as returned.
- F2.3 As staff, I see my own current and past loans.

## Decisions

- Borrowing is immediate and self-service; the office manager does not approve individual borrows.
- Staff choose the return (due) date themselves when they borrow an item.
- A staff member may have more than one item on loan at the same time; there is no limit.
- While an item is on loan it is shown as unavailable in the inventory (F1.4); it becomes available again once returned.

## Out of Scope

- An approval workflow for borrow requests.

