Feature: F2 Borrow & Return

  @story-F2.1
  Rule: Staff borrow an available item immediately, with no approval step

    Scenario: Borrowing an available camera
      Given "Canon Camera #2" is in the catalog and available
      When the staff member Jane borrows "Canon Camera #2" with a return date of "2026-10-15"
      Then "Canon Camera #2" is shown as on-loan to Jane with a due date of "2026-10-15"

    @negative
    Scenario: An item already on loan cannot be borrowed again
      Given "Epson Projector #1" is already on loan to Sam
      When the staff member Jane tries to borrow "Epson Projector #1"
      Then "Epson Projector #1" is still shown as on loan to Sam

  @story-F2.2
  Rule: Staff mark their own borrowed item as returned

    Scenario: Returning a borrowed laptop
      Given the staff member Jane has "Dell Laptop #3" on loan
      When Jane marks "Dell Laptop #3" returned
      Then "Dell Laptop #3" is shown as available again

  @story-F2.3
  Rule: Staff see their own current and past loans

    Scenario: Jane reviews her loans
      Given the staff member Jane has borrowed "Canon Camera #2" and previously returned "Dell Laptop #3"
      When Jane views her loans
      Then she sees "Canon Camera #2" as current and "Dell Laptop #3" as a past loan

  Rule: A staff member may have more than one item on loan at the same time

    @story-F2.1
    Scenario: Jane borrows a second item while one is still out
      Given the staff member Jane already has "Canon Camera #2" on loan
      When Jane borrows "Dell Laptop #3" with a return date of "2026-10-20"
      Then Jane has both "Canon Camera #2" and "Dell Laptop #3" on loan
