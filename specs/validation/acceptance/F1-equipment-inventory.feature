Feature: F1 Equipment Inventory

  @story-F1.1
  Rule: The office manager adds equipment with a name, category and identifier

    Scenario: Adding a new laptop to the catalog
      Given the office manager Priya is signed in
      When Priya adds equipment named "Dell Laptop #4" in category "Laptop" with identifier "AT-1050"
      Then "Dell Laptop #4" appears in the equipment catalog as available

    @negative
    Scenario: A category outside the fixed list is refused
      Given the office manager Priya is signed in
      When Priya tries to add equipment named "Drone #1" in category "Drone" with identifier "AT-9000"
      Then the equipment catalog still has no item named "Drone #1"

  @story-F1.2
  Rule: The office manager edits an equipment item's details

    Scenario: Correcting an equipment item's identifier
      Given "Dell Laptop #3" is in the catalog with identifier "AT-1042"
      When the office manager Priya edits "Dell Laptop #3" to identifier "AT-1042B"
      Then "Dell Laptop #3" shows identifier "AT-1042B"

  @story-F1.3
  Rule: Retiring an item removes it from what can be borrowed but keeps its loan history

    Scenario: Retiring a broken projector
      Given "Epson Projector #1" is in the catalog and available
      When the office manager Priya retires "Epson Projector #1"
      Then "Epson Projector #1" is no longer available to borrow

  @story-F1.4
  Rule: Staff browse the inventory and see what is available

    Scenario: A staff member sees the catalog
      Given the catalog has "Canon Camera #2" marked available and "Epson Projector #1" marked on-loan
      When the staff member Jane browses the equipment catalog
      Then Jane sees "Canon Camera #2" as available and "Epson Projector #1" as on-loan
