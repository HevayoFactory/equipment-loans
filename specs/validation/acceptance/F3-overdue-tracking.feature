Feature: F3 Overdue Tracking

  @story-F3.1
  Rule: The office manager sees every item currently out, with who has it and when it is due

    Scenario: Reviewing what is currently out
      Given "Canon Camera #2" is on loan to Jane due "2026-10-15" and "Dell Laptop #3" is on loan to Sam due "2026-10-20"
      When the office manager Priya opens the loans dashboard
      Then Priya sees "Canon Camera #2" out to Jane due "2026-10-15" and "Dell Laptop #3" out to Sam due "2026-10-20"

  @story-F3.2
  Rule: The office manager sees which loans are overdue

    Scenario: An overdue loan is flagged
      Given "Epson Projector #1" is on loan to Sam with a due date in the past
      When the office manager Priya opens the loans dashboard
      Then "Epson Projector #1" is flagged overdue

  @story-F3.3
  Rule: The office manager marks any loan as returned

    Scenario: Closing out a loan the borrower never closed
      Given "Epson Projector #1" is on loan to Sam
      When the office manager Priya marks "Epson Projector #1" returned
      Then "Epson Projector #1" is shown as available again

  @story-F3.4
  Rule: The office manager extends a loan's due date

    Scenario: Extending an overdue loan
      Given "Dell Laptop #3" is on loan to Sam due "2026-10-01"
      When the office manager Priya extends the due date of "Dell Laptop #3" to "2026-10-10"
      Then "Dell Laptop #3" is shown due "2026-10-10"

  Rule: The office manager's view covers current and overdue loans only, not the full loan history

    @story-F3.1
    Scenario: A returned loan does not appear on the dashboard
      Given "Dell Laptop #1" was borrowed by Jane and has already been returned
      When the office manager Priya opens the loans dashboard
      Then "Dell Laptop #1" does not appear in the dashboard
