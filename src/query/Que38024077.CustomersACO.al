query 38024077 "Customers ACO"
{
    Caption = 'Customers ACO';
    QueryType = Normal;
    
    elements
    {
        dataitem(Customer; Customer)
        {
            column(ACOBlocked; "ACO Blocked")
            {
            }
            column(Address; Address)
            {
            }
            column(Amount; Amount)
            {
            }
            column(Balance; Balance)
            {
            }
            column(BalanceDueLCY; "Balance Due (LCY)")
            {
            }
            column(BillToNoofInvoices; "Bill-To No. of Invoices")
            {
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}
