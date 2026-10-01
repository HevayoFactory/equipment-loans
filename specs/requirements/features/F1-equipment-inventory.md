# Equipment Inventory

## Purpose

Maintain the catalog of shared equipment (laptops, projectors, cameras) that staff can borrow, kept up to date by the office manager.

## User Stories

- F1.1 As an office manager, I add equipment to the inventory with a name, category and identifier (asset tag or serial number).
- F1.2 As an office manager, I edit an equipment item's details.
- F1.3 As an office manager, I retire an equipment item so it is no longer available to borrow, keeping its loan history.
- F1.4 As staff, I browse the inventory to see what equipment exists and whether each item is currently available.

## Decisions

- Equipment categories are a fixed list: Laptop, Projector, Camera, Other.
- Retiring an item keeps its loan history but removes it from what can be borrowed; it is not deleted.

## Out of Scope

- Office-manager-defined (custom) categories.

