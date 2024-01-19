query 38024078 "Items ACO"
{
    Caption = 'Items ACO';
    QueryType = Normal;
    
    elements
    {
        dataitem(Item; Item)
        {
            column(AllowOnlineAdjustment; "Allow Online Adjustment")
            {
            }
            column(BaseUnitofMeasure; "Base Unit of Measure")
            {
            }
            column(CostingMethod; "Costing Method")
            {
            }
            column(CountryRegionPurchasedCode; "Country/Region Purchased Code")
            {
            }
            column(COGSLCY; "COGS (LCY)")
            {
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}
