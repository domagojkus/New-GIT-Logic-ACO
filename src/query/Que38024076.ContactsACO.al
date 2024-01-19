query 38024076 "Contacts ACO"
{
    Caption = 'Contacts ACO';
    QueryType = Normal;
    
    elements
    {
        dataitem(Contact; Contact)
        {
            column(ACOBlocked; "ACO Blocked")
            {
            }
            column(Address; Address)
            {
            }
            column(BankAccountNo; "Bank Account No.")
            {
            }
            column(CalcdCurrentValueLCY; "Calcd. Current Value (LCY)")
            {
            }
            column(CompanyName; "Company Name")
            {
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}
