tableextension 38024076 "Contact ACO" extends Contact
{
    fields
    {
        field(38024076; "New Test Field"; Text[100])
        {
            Caption = 'New Test Field';
        }
        field(38024077; "Extra Field 1"; Text[100])
        {
            Caption = 'Extra Field 1';
            DataClassification = ToBeClassified;
        }
        field(38024078; "Extra Field 2"; Text[100])
        {
            Caption = 'Extra Field 2';
            DataClassification = ToBeClassified;
        }
    }
}
