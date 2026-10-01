# Equipment Loans

## Problem Statement

Office staff borrow shared equipment such as laptops, projectors and cameras informally, often with no written record of who has what. Items go missing or sit unreturned for weeks, and the office manager has no reliable way to see what is currently out or overdue without asking around the office.

## Solution

A small web app where staff check equipment out and back in, and the office manager gets a clear view of what is currently out, who has it, and what is overdue.

## Actors

- Staff: borrow and return shared equipment, and see their own current and past loans.
- Office Manager: maintains the equipment inventory, and sees what is out and overdue across all staff. Staff accounts are created by the office manager.

## Features

- F1 [Equipment Inventory](features/F1-equipment-inventory.md)
- F2 [Borrow &amp; Return](features/F2-borrow-return.md)
- F3 [Overdue Tracking](features/F3-overdue-tracking.md)

## Product-wide

See [Product-wide](product-wide.md).

## Out of Scope

- Automatic reminder notifications (email, SMS, etc.) for overdue loans — the office manager checks a dashboard instead.
- Staff self-registration — accounts are created by the office manager.