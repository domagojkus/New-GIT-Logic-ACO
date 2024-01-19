report 38024076 "ACO Sales - Quote"
{
    // version NAVW111.00.00.24232

    DefaultLayout = RDLC;
    RDLCLayout = './ACO Sales - Quote.rdlc';
    CaptionML = ENU='ACO Sales - Quote',
                ESP='ACO Ventas - Oferta';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Header";"Sales Header")
        {
            DataItemTableView = SORTING("Document Type","No.")
                                WHERE("Document Type"=CONST(Quote));
            RequestFilterFields = "No.","Sell-to Customer No.","No. Printed";
            RequestFilterHeadingML = ENU='ACO Sales Quote',
                                     ESP='ACO Oferta venta';
            column(DocType_SalesHeader;"Document Type")
            {
            }
            column(No_SalesHeader;"No.")
            {
            }
            column(PaymentTermsDescriptionCaption;PaymentTermsDescriptionCaptionLbl)
            {
            }
            column(ShipmentMethodDescriptionCaption;ShipmentMethodDescriptionCaptionLbl)
            {
            }
            column(CompanyInfoEmailCaption;CompanyInfoEmailCaptionLbl)
            {
            }
            column(DocumentDateCaption;DocumentDateCaptionLbl)
            {
            }
            column(CompanyInfoPhoneNoCaption;CompanyInfoPhoneNoCaptionLbl)
            {
            }
            column(CompanyInfoVATRegNoCaption;CompanyInfoVATRegNoCaptionLbl)
            {
            }
            column(CompanyInfoBankNameCaption;CompanyInfoBankNameCaptionLbl)
            {
            }
            column(CompanyInfoBankAccountNoCaption;CompanyInfoBankAccountNoCaptionLbl)
            {
            }
            column(BilltoCustNo_SalesHeaderCaption;"Sales Header".FIELDCAPTION("Bill-to Customer No."))
            {
            }
            column(PricesIncludingVAT_SalesHdrCaption;"Sales Header".FIELDCAPTION("Prices Including VAT"))
            {
            }
            column(PageCaption;Text005)
            {
            }
            column(SalesHeaderShipmentDateCaption;SalesHeaderShipmentDateCaptionLbl)
            {
            }
            column(SalesHeaderNoCaption;SalesHeaderNoCaptionLbl)
            {
            }
            column(SupplierCaption;SupplierCaption)
            {
            }
            column(CustomerCaption;CustomerCaption)
            {
            }
            column(ContactCaption;ContactCaption)
            {
            }
            dataitem(CopyLoop;Integer)
            {
                dataitem(PageLoop;Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number=CONST(1));
                    column(PaymentTermsDescription;PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDescription;ShipmentMethod.Description)
                    {
                    }
                    column(SalesCopyText;STRSUBSTNO(Text004,CopyText))
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(CustAddr1;CustAddr[1])
                    {
                    }
                    column(CustAddr2;CustAddr[2])
                    {
                    }
                    column(CustAddr3;CustAddr[3])
                    {
                    }
                    column(CustAddr4;CustAddr[4])
                    {
                    }
                    column(CustAddr5;CustAddr[5])
                    {
                    }
                    column(CustAddr6;CustAddr[6])
                    {
                    }
                    column(CustAddr7;CustAddr[7])
                    {
                    }
                    column(CustAddr8;CustAddr[8])
                    {
                    }
                    column(CompanyInfoPicture;CompanyInfo.Picture)
                    {
                    }
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoHomePage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(CompanyInfoVATRegNo;CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo;CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName;CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo;CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesHeader;"Sales Header"."Bill-to Customer No.")
                    {
                    }
                    column(DocDate_SalesHeader;FORMAT("Sales Header"."Document Date",0,4))
                    {
                    }
                    column(VATRegNo_SalesHeader;"Sales Header"."VAT Registration No.")
                    {
                    }
                    column(SalesPersonText;SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(YourReference_SalesHeader;"Sales Header"."Your Reference")
                    {
                    }
                    column(SellToContactSalesHeader;"Sales Header"."Sell-to Contact")
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(VATNoText;VATNoText)
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    dataitem("Sales Line";"Sales Line")
                    {
                        DataItemLink = "Document Type"=FIELD("Document Type"),
                                       "Document No."=FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING("Document Type","Document No.","Line No.");
                        //Discount 1,2,3 - START
                        column(DiscDescription;varDiscDescription)
                        {
                        }
                        column(Disc2Description;varDisc2Description)
                        {
                        }
                        column(Disc3Description;varDisc3Description)
                        {
                        }
                        column(ShowThirdTable;varShowThirdTable)
                        {
                        }
                        column(ShowSecondTable;varShowSecondTable)
                        {
                        }
                        column(ShowFirstTable;varShowFirstTable)
                        {
                        }
                        column(lblDescPercentage;lblDescPercentage)
                        {
                        }
                        column(lblDesc2Percentages;lblDesc2Percentage)
                        {
                        }
                        column(lblDesc3Percentage;lblDesc3Percentage)
                        {
                        }
                        column(lblDiscAmount;lblDiscAmount)
                        {
                        }
                        column(lblDisc3Amount;lblDisc3Amount)
                        {
                        }
                        column(lblPriceWithDisc;lblPriceWithDisc)
                        {
                        }
                        column(PriceExclDisc;varPriceExclDisc)
                        {
                        }
                        column(DiscTotal;varDiscTotal)
                        {
                        }
                        column(DiscAmount;varDiscAmount)
                        {
                        }
                        column(Disc3;varDisc3)
                        {
                        }
                        column(Disc12;varDisc12)
                        {
                        }
                        column(Price;varPrice)
                        {
                        }
                        column(varNo;varNo)
                        {
                        }
                        column(DiscPercentage;"Sales Line"."Line Discount %")
                        {
                        }
                        column(Disc2Percentage;"Sales Line"."Line Discount 2 %")
                        {
                        }
                        column(Disc3Percentage;"Sales Line"."Line Discount 3 %")
                        {
                        }
                        //Discount 1,2,3 - END
                        column(LineAmt_SalesLine;"Sales Line"."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(No_SalesLine;"Sales Line"."No.")
                        {
                        }
                        column(No1_SalesLine;"Sales Line"."No.")
                        {
                        }
                        column(Desc_SalesLine;"Sales Line".Description)
                        {
                        }
                        column(Quantity_SalesLine;"Sales Line".Quantity)
                        {
                        }
                        column(LineAmt1_SalesLine;"Sales Line"."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(UnitPrice_SalesLine;"Sales Line"."Unit Price")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDiscount_SalesLine;"Sales Line"."Line Discount %")
                        {
                        }
                        column(AllowInvoiceDisc_SalesLine;"Sales Line"."Allow Invoice Disc.")
                        {
                            IncludeCaption = false;
                        }
                        column(Type_SalesLine;FORMAT("Sales Line".Type))
                        {
                        }
                        column(InvDiscountAmount_SalesLine;-"Sales Line"."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText;TotalText)
                        {
                        }
                        column(DiscountAmt_SalesLine;"Sales Line"."Line Amount" - "Sales Line"."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtTxt;VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText;TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText;TotalInclVATText)
                        {
                        }
                        column(VATAmount;VATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountInclVAT;TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseAmount;VATBaseAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(UnitPriceCaption;UnitPriceCaptionLbl)
                        {
                        }
                        column(SalesLineLineDiscCaption;SalesLineLineDiscCaptionLbl)
                        {
                        }
                        column(AmountCaption;AmountCaptionLbl)
                        {
                        }
                        column(SalesLineInvDiscAmtCaption;SalesLineInvDiscAmtCaptionLbl)
                        {
                        }
                        column(SubtotalCaption;SubtotalCaptionLbl)
                        {
                        }
                        column(No_SalesLineCaption;NoCaption)
                        {
                        }
                        column(Desc_SalesLineCaption;DescriptionCaption)
                        {
                        }
                        column(Quantity_SalesLineCaption;QuantityCaption)
                        {
                        }
                        column(PositionAtTheBillValue; PositionAtTheBill)
                        {
                        }
                        column(PositionAtTheBill; "Position at the Bill")
                        {
                        }
                        column(TotalForPositionAtTheBillLbl;TotalForPositionAtTheBillLbl)
                        {
                        }
                        column(PositionAtTheBillLbl;PositionAtTheBillLbl)
                        {
                        }
                        trigger OnAfterGetRecord();
                        begin
                            if not "Print Line" then
                                CurrReport.Skip;
                            
                            if ("No." <> '') and (Type = Type::" ") then
                              CurrReport.Skip;

                            if "Position at the Bill" <> '' then
                              PositionAtTheBill := StrSubstNo(PositionAtTheBillLbl, "Position at the Bill")
                            else
                              PositionAtTheBill := '';

                            //Discount 1,2,3 - START
                            IF "Sales Line" .Type <> "Sales Line".Type::" " THEN
                              varNo += 1;

                            varPriceExclDisc := 0;
                            varDiscTotal := 0;
                            varDiscAmount := 0;
                            varDisc1 := 0;
                            varDisc12  := 0;
                            varDisc2 := 0;
                            varDisc3 := 0;

                            rcdSalesLine.RESET;
                            rcdSalesLine.SETRANGE("Document No.","Sales Header"."No.");
                            IF rcdSalesLine.FINDFIRST THEN
                              REPEAT
                                varPriceExclDisc += rcdSalesLine."Unit Price"*rcdSalesLine.Quantity;
                                IF rcdSalesLine."Line Discount %" <> 0 THEN BEGIN

                                  varPrice  := rcdSalesLine."Unit Price"*rcdSalesLine.Quantity;
                                  //varIznos += rcdSalesLine.Amount;

                                  IF rcdSalesLine."Line Discount %" <> 0 THEN BEGIN
                                    varDisc1 += varPrice*(rcdSalesLine."Line Discount %"/100);
                                  END;
                                  IF rcdSalesLine."Line Discount 2 %" <> 0 THEN BEGIN
                                    varDisc2 += (varPrice-varPrice*(rcdSalesLine."Line Discount %"/100))*(rcdSalesLine."Line Discount 2 %"/100);
                                  END;
                                  IF rcdSalesLine."Line Discount 3 %" <> 0 THEN BEGIN
                                    varDisc3 += (varPrice-varPrice*(rcdSalesLine."Line Discount %"/100)-(varPrice-varPrice*(rcdSalesLine."Line Discount %"/100))*(rcdSalesLine."Line Discount 2 %"/100))*(rcdSalesLine."Line Discount 3 %"/100);
                                  END;
                                END;
                              UNTIL rcdSalesLine.NEXT = 0;
                            varDisc12 := varDisc1 + varDisc2;
                            //Discount 1,2,3 - END
                        end;
                    }
                    dataitem(Total;Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                    }
                    dataitem(Total2;Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                        column(SelltoCustNo_SalesHeader;"Sales Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1;ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2;ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3;ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4;ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5;ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6;ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7;ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8;ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddressCaption;ShiptoAddressCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_SalesHeaderCaption;"Sales Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowShippingAddr THEN
                              CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                var
                    SalesPost : Codeunit "Sales-Post";
                begin
                    CLEAR("Sales Line");
                    CLEAR(SalesPost);
                    VATAmountLine.DELETEALL;
                    "Sales Line".CalcVATAmountLines(0,"Sales Header","Sales Line",VATAmountLine);
                    "Sales Line".UpdateVATOnLines(0,"Sales Header","Sales Line",VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Sales Header"."Currency Code","Sales Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    IF Number > 1 THEN BEGIN
                      CopyText := FormatDocument.GetCOPYText;
                      OutputNo += 1;
                    END;
                end;

                trigger OnPostDataItem();
                begin
                    IF Print THEN
                      CODEUNIT.RUN(CODEUNIT::"Sales-Printed","Sales Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                if "Language Code" = '' then
                  CurrReport.LANGUAGE := Language.GetLanguageID(GLSetup."Local Language Code")
                else
                  CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                //Discount 1,2,3 - START
                IF "Sales Header"."Discount Description 1" = '' THEN
                  varDiscDescription := lblDescPercentage
                ELSE
                  varDiscDescription := "Sales Header"."Discount Description 1";
                IF "Sales Header"."Discount Description 2" = '' THEN
                  varDisc2Description := lblDesc2Percentage
                ELSE
                  varDisc2Description := "Sales Header"."Discount Description 2";
                IF "Sales Header"."Discount Description 3" = '' THEN
                  varDisc3Description := lblDesc3Percentage
                ELSE
                  varDisc3Description := "Sales Header"."Discount Description 3";

                rcdSalesLine.RESET;
                rcdSalesLine.SETRANGE("Document No.","Sales Header"."No.");

                disc2 := FALSE;
                disc3 := FALSE;

                IF rcdSalesLine.FINDFIRST THEN
                  REPEAT
                    IF (rcdSalesLine."Line Discount 3 %" <> 0) AND (rcdSalesLine."Print Line" = true) THEN
                      disc3 := TRUE;
                    IF (rcdSalesLine."Line Discount 2 %" <> 0) AND (rcdSalesLine."Print Line" = true) THEN
                      disc2 := TRUE;
                  UNTIL rcdSalesLine.NEXT = 0;

                varShowThirdTable := FALSE;
                varShowSecondTable := FALSE;
                varShowFirstTable := FALSE;

                IF disc3 THEN BEGIN
                  varShowThirdTable := TRUE;
                END ELSE IF disc2 THEN BEGIN
                  varShowSecondTable := TRUE;
                END ELSE BEGIN
                  varShowFirstTable  := TRUE;
                END;
              //Discount 1,2,3 - END

                FormatAddressFields("Sales Header");
                FormatDocumentFields("Sales Header");

                IF Print THEN BEGIN
                  IF CurrReport.USEREQUESTPAGE AND ArchiveDocument OR
                     NOT CurrReport.USEREQUESTPAGE AND SalesSetup."Archive Quotes and Orders"
                  THEN
                    ArchiveManagement.StoreSalesDocument("Sales Header",FALSE);
                END;
                MARK(TRUE);
            end;

            trigger OnPostDataItem();
            var
                FileManagement : Codeunit "File Management";
            begin
                MARKEDONLY := TRUE;
                COMMIT;
                CurrReport.LANGUAGE := GLOBALLANGUAGE;
            end;

            trigger OnPreDataItem();
            begin
                NoOfRecords := COUNT;
                Print := Print OR NOT IsReportInPreviewMode;
                CompanyInfo.CALCFIELDS(Picture);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    CaptionML = ENU='Options';
                    field(NoOfCopies;NoOfCopies)
                    {
                        ApplicationArea = Advanced;
                        CaptionML = ENU='No. of Copies';
                        ToolTipML = ENU='Specifies how many copies of the document to print.';
                    }
                    field(ArchiveDocument;ArchiveDocument)
                    {
                        ApplicationArea = Advanced;
                        CaptionML = ENU='Archive Document';
                        ToolTipML = ENU='Specifies if the document is archived after you print it.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            ArchiveDocument := SalesSetup."Archive Quotes and Orders";
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        SalesSetup.GET;
    end;

    var 
        //Discount 1,2,3 - START
        varDiscDescription : Text[30];
        varDisc2Description : Text[30];
        varDisc3Description : Text[30];
        disc2 : Boolean;
        disc3 : Boolean;
        varShowThirdTable : Boolean;
        varShowSecondTable : Boolean;
        varShowFirstTable : Boolean;
        lblDescPercentage : TextConst ENU='Discount %';
        lblDesc2Percentage : TextConst ENU='Discount2 %';
        lblDesc3Percentage : TextConst ENU='Discount3 %';
        lblDiscAmount : TextConst ENU='- Discount';
        lblDisc3Amount : TextConst ENU='- Discount 3';
        lblPriceWithDisc : TextConst ENU='Price with discount';
        varNo : Integer;
        varPriceExclDisc : Decimal;
        varDiscTotal : Decimal;
        varDiscAmount : Decimal;
        varDisc1 : Decimal;
        varDisc2 : Decimal;
        varDisc3 : Decimal;
        varDisc12 : Decimal;
        varPrice : Decimal;
        rcdSalesLine : Record "Sales Line";
        //Discount 1,2,3 - END
        PositionAtTheBill : Text;
        TotalForPositionAtTheBillLbl : TextConst ENU='Total for position';
        PositionAtTheBillLbl : TextConst ENU='Position at the bill %1';
        Text004 : TextConst Comment='%1 = Document No.',ENU='Sales - Quote',ESP='Ventas - Oferta %1';
        Text005 : TextConst ENU='Page',ESP='Pág. %1';
        GLSetup : Record "General Ledger Setup";
        ShipmentMethod : Record "Shipment Method";
        PaymentTerms : Record "Payment Terms";
        SalesPurchPerson : Record "Salesperson/Purchaser";
        CompanyInfo : Record "Company Information";
        SalesSetup : Record "Sales & Receivables Setup";
        VATAmountLine : Record "VAT Amount Line" temporary;
        Language : Record Language;
        FormatAddr : Codeunit "Format Address";
        ArchiveManagement : Codeunit ArchiveManagement;
        FormatDocument : Codeunit "Format Document";
        CustAddr : array [8] of Text[50];
        ShipToAddr : array [8] of Text[50];
        CompanyAddr : array [8] of Text[50];
        SalesPersonText : Text[30];
        VATNoText : Text[80];
        ReferenceText : Text[80];
        TotalText : Text[50];
        TotalExclVATText : Text[50];
        TotalInclVATText : Text[50];
        NoOfCopies : Integer;
        NoOfLoops : Integer;
        CopyText : Text[30];
        ShowShippingAddr : Boolean;
        Continue : Boolean;
        ArchiveDocument : Boolean;
        VATAmount : Decimal;
        VATBaseAmount : Decimal;
        VATDiscountAmount : Decimal;
        TotalAmountInclVAT : Decimal;
        NoOfRecords : Integer;
        VALVATBaseLCY : Decimal;
        VALVATAmountLCY : Decimal;
        VALSpecLCYHeader : Text[80];
        VALExchRate : Text[50];
        Text009 : TextConst ENU='Local Currency',ESP='Divisa local';
        Text010 : TextConst ENU='Exchange rate: %1/%2',ESP='Tipo cambio: %1/%2';
        OutputNo : Integer;
        Print : Boolean;
        [InDataSet]
        ArchiveDocumentEnable : Boolean;
        CompanyInfoPhoneNoCaptionLbl : Label 'Phone No.';
        CompanyInfoVATRegNoCaptionLbl : Label 'VAT Registration No.';
        CompanyInfoBankNameCaptionLbl : Label 'Bank';
        CompanyInfoBankAccountNoCaptionLbl : Label 'Account No.';
        CompanyInfoEmailCaptionLbl : Label 'E-mail';
        SalesHeaderShipmentDateCaptionLbl : Label 'Shipment Date';
        SalesHeaderNoCaptionLbl : Label 'Quote No.';
        UnitPriceCaptionLbl : TextConst ENU='Unit Price',ESP='Precio venta';
        SalesLineLineDiscCaptionLbl : Label 'Discount %';
        AmountCaptionLbl : TextConst ENU='Amount',ESP='Importe';
        SalesLineInvDiscAmtCaptionLbl : Label 'Invoice Discount Amount';
        SubtotalCaptionLbl : TextConst ENU='Subtotal',ESP='Subtotal';
        LineAmtCaptionLbl : TextConst ENU='Line Amount',ESP='Importe línea';
        InvoiceDiscBaseAmtCaptionLbl : Label 'Invoice Discount Base Amount';
        InvoiceDiscAmtCaptionLbl : Label 'Invoice Discount Amount';
        TotalCaptionLbl : TextConst ENU='Total',ESP='Total';
        ShiptoAddressCaptionLbl : TextConst ENU='Ship-to Address',ESP='Dirección de envío';
        PaymentTermsDescriptionCaptionLbl : Label 'Payment Terms';
        ShipmentMethodDescriptionCaptionLbl : Label 'Shipment Method';
        DocumentDateCaptionLbl : Label 'Document Date';
        NoCaption : Label 'No.';
        DescriptionCaption : Label 'Description';
        QuantityCaption : Label 'Quantity';
        SupplierCaption : Label 'Supplier:';
        CustomerCaption : Label 'Customer:';
        ContactCaption : Label 'Contact:';

    procedure InitializeRequest(NoOfCopiesFrom : Integer;ShowInternalInfoFrom : Boolean;ArchiveDocumentFrom : Boolean;LogInteractionFrom : Boolean;PrintFrom : Boolean);
    begin
        NoOfCopies := NoOfCopiesFrom;
        ArchiveDocument := ArchiveDocumentFrom;
        Print := PrintFrom;
    end;

    local procedure IsReportInPreviewMode() : Boolean;
    var
        MailManagement : Codeunit "Mail Management";
    begin
        EXIT(CurrReport.PREVIEW OR MailManagement.IsHandlingGetEmailBody);
    end;

    local procedure FormatDocumentFields(SalesHeader : Record "Sales Header");
    begin
        WITH SalesHeader DO BEGIN
          FormatDocument.SetTotalLabels("Currency Code",TotalText,TotalInclVATText,TotalExclVATText);
          FormatDocument.SetSalesPerson(SalesPurchPerson,"Salesperson Code",SalesPersonText);
          FormatDocument.SetPaymentTerms(PaymentTerms,"Payment Terms Code","Language Code");
          FormatDocument.SetShipmentMethod(ShipmentMethod,"Shipment Method Code","Language Code");

          ReferenceText := FormatDocument.SetText("Your Reference" <> '',FIELDCAPTION("Your Reference"));
          VATNoText := FormatDocument.SetText("VAT Registration No." <> '',FIELDCAPTION("VAT Registration No."));
        END;
    end;

    local procedure FormatAddressFields(var SalesHeader : Record "Sales Header");
    var
        RespCenter : Record "Responsibility Center";
    begin
        FormatAddr.GetCompanyAddr(SalesHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.SalesHeaderBillTo(CustAddr,SalesHeader);
        ShowShippingAddr := FormatAddr.SalesHeaderShipTo(ShipToAddr,CustAddr,SalesHeader);
    end;
}

