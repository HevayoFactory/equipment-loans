screen EquipmentCatalog "Browse shared equipment and borrow what's available"
  navbar "Equipment Loans"
  sidebar "Catalog -> EquipmentCatalog | My Loans -> MyLoans"
  row
    heading "Equipment Catalog"
    right
    select "Category: All"
    search "Search equipment"
  table "Name | Category | Identifier | Status"
    row "Dell Laptop #3 | Laptop | AT-1042 | Available"
    row "Epson Projector #1 | Projector | AT-2003 | On loan"
    row "Canon Camera #2 | Camera | AT-3100 | Available"
  button "Borrow selected item" primary -> BorrowForm

screen BorrowForm "Borrow an available item"
  navbar "Equipment Loans"
  sidebar "Catalog -> EquipmentCatalog | My Loans -> MyLoans"
  card "Dell Laptop #3"
    text "Laptop · AT-1042 · Available"
  input "Return date"
  row
    button "Cancel" -> EquipmentCatalog
    right
    button "Confirm borrow" primary -> MyLoans

screen MyLoans "The signed-in staff member's current and past loans"
  navbar "Equipment Loans"
  sidebar "Catalog -> EquipmentCatalog | My Loans -> MyLoans"
  heading "My Loans"
  table "Item | Borrowed | Due | Status"
    row "Epson Projector #1 | Sep 20 | Sep 27 | Overdue"
    row "Canon Camera #2 | Sep 25 | Oct 2 | On loan"
    row "Dell Laptop #1 | Aug 1 | Aug 8 | Returned"
  button "Mark returned"

screen LoansDashboard "What is currently out and what is overdue, across all staff"
  navbar "Equipment Loans"
  sidebar "Loans Dashboard -> LoansDashboard | Inventory -> EquipmentInventory"
  row
    heading "Loans Dashboard"
    right
    select "Show: All open loans"
  table "Item | Borrower | Due | Status"
    row "Epson Projector #1 | Jane Doe | Sep 27 | Overdue"
    row "Canon Camera #2 | Sam Lee | Oct 2 | On loan"
  row
    button "Extend due date" -> ExtendLoanForm
    button "Mark returned" primary

screen ExtendLoanForm "Extend a loan's due date"
  navbar "Equipment Loans"
  sidebar "Loans Dashboard -> LoansDashboard | Inventory -> EquipmentInventory"
  card "Epson Projector #1"
    text "Borrowed by Jane Doe · due Sep 27 · Overdue"
  input "New return date"
  row
    button "Cancel" -> LoansDashboard
    right
    button "Save new due date" primary -> LoansDashboard

screen EquipmentInventory "Maintain the equipment catalog"
  navbar "Equipment Loans"
  sidebar "Loans Dashboard -> LoansDashboard | Inventory -> EquipmentInventory"
  row
    heading "Equipment Inventory"
    right
    button "Add equipment" primary -> AddEditEquipment
  table "Name | Category | Identifier | Status"
    row "Dell Laptop #3 | Laptop | AT-1042 | Available"
    row "Epson Projector #1 | Projector | AT-2003 | On loan"
    row "Canon Camera #2 | Camera | AT-3100 | Available"
  button "Edit selected" -> AddEditEquipment
  button "Retire selected"

screen AddEditEquipment "Add or edit an equipment item"
  navbar "Equipment Loans"
  sidebar "Loans Dashboard -> LoansDashboard | Inventory -> EquipmentInventory"
  input "Name"
  select "Category: Laptop"
  input "Identifier (asset tag / serial number)"
  row
    button "Cancel" -> EquipmentInventory
    right
    button "Save" primary -> EquipmentInventory

flow "Borrow and return equipment"
  role "Staff"
  description "A staff member browses the catalog, borrows an item and tracks their own loans"
  EquipmentCatalog
  BorrowForm
  MyLoans

flow "Manage inventory and overdue loans"
  role "Office Manager"
  description "The office manager maintains the catalog and resolves what is out and overdue"
  LoansDashboard
  ExtendLoanForm
  EquipmentInventory
  AddEditEquipment
