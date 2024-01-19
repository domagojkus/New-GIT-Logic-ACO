report 38024079 "ACO Sales - Invoice"
{
    // version NAVW111.00.00.28629

    DefaultLayout = RDLC;
    RDLCLayout = './ACO Sales - Invoice.rdlc';
    CaptionML = ENU = 'ACO Sales - Invoice',
                ESP = 'ACO Ventas - Factura';
    EnableHyperlinks = true;
    Permissions = TableData 7190 = rimd;
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING ("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = ENU = 'Posted Sales Invoice',
                                     ESP = 'Histórico facturas venta';
            column(DocumentCaption; DocumentCaption)
            {
            }
            column(No_SalesInvHdr; "No.")
            {
            }
            column(InvDiscountAmtCaption; InvDiscountAmtCaptionLbl)
            {
            }
            column(DocumentDateCaption; DocumentDateCaptionLbl)
            {
            }
            column(PaymentTermsDescCaption; PaymentTermsDescCaptionLbl)
            {
            }
            column(ShptMethodDescCaption; ShptMethodDescCaptionLbl)
            {
            }
            column(VATPercentageCaption; VATPercentageCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(VATBaseCaption; VATBaseCaptionLbl)
            {
            }
            column(VATAmtCaption; VATAmtCaptionLbl)
            {
            }
            column(VATIdentifierCaption; VATIdentifierCaptionLbl)
            {
            }
            column(HomePageCaption; HomePageCaptionLbl)
            {
            }
            column(EMailCaption; EMailCaptionLbl)
            {
            }
            column(DisplayAdditionalFeeNote; DisplayAdditionalFeeNote)
            {
            }
            column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
            {
            }
            column(CompanyInfoVATRegNoCptn; CompanyInfoVATRegNoCptnLbl)
            {
            }
            column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
            {
            }
            column(CompanyInfoBankNameCptn; CompanyInfoBankNameCptnLbl)
            {
            }
            column(CompanyInfoBankAccNoCptn; CompanyInfoBankAccNoCptnLbl)
            {
            }
            column(SalesInvDueDateCaption; SalesInvDueDateCaptionLbl)
            {
            }
            column(InvNoCaption; InvNoCaptionLbl)
            {
            }
            column(SalesInvPostingDateCptn; SalesInvPostingDateCptnLbl)
            {
            }
            column(SupplierCaption; SupplierCaption)
            {
            }
            column(CustomerCaption; CustomerCaption)
            {
            }
            column(ContactCaption; ContactCaption)
            {
            }
            column(PaymentTermsDescriptionCaption; PaymentTermsDescCaptionLbl)
            {
            }
            column(ShipmentMethodDescriptionCaption; ShptMethodDescCaptionLbl)
            {
            }
            column(UnitPriceCaption; UnitPriceCaptionLbl)
            {
            }
            column(SalesInvLineDiscCaption; SalesInvLineDiscCaptionLbl)
            {
            }
            column(AmountCaption; AmountCaptionLbl)
            {
            }
            column(PostedShipmentDateCaption; PostedShipmentDateCaptionLbl)
            {
            }
            column(SubtotalCaption; SubtotalCaptionLbl)
            {
            }
            column(LineAmtAfterInvDiscCptn; LineAmtAfterInvDiscCptnLbl)
            {
            }
            column(Desc_SalesInvLineCaption; DescriptionCaption)
            {
            }
            column(No_SalesInvLineCaption; NoCaption)
            {
            }
            column(Qty_SalesInvLineCaption; QuantityCaption)
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING (Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING (Number)
                                        WHERE (Number = CONST (1));
                    column(HomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(EMail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoPicture; CompanyInfo.Picture)
                    {
                    }
                    column(DocumentCaptionCopyText; STRSUBSTNO(DocumentCaption, CopyText))
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(BilltoCustNo_SalesInvHdr; "Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostingDate_SalesInvHdr; FORMAT("Sales Invoice Header"."Posting Date", 0, 4))
                    {
                    }
                    column(VATRegNo_SalesInvHdr; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHdr; FORMAT("Sales Invoice Header"."Due Date", 0, 4))
                    {
                    }
                    column(YourReference_SalesInvHdr; "Sales Invoice Header"."Your Reference")
                    {
                    }
                    column(DocDate_SalesInvHdr; FORMAT("Sales Invoice Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdr; "Sales Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(PricesInclVATYesNo_SalesInvHdr; FORMAT("Sales Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(PaymentTermsDescription; PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethod.Description)
                    {
                    }
                    column(BilltoCustNo_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(VATRegNo_SalesHeader; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(SellToContactSalesHeader; "Sales Invoice Header"."Sell-to Contact")
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(HdrOrderNo_SalesInvHdr; "Sales Invoice Header"."Order No.")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(OrderNoText; OrderNoText)
                    {
                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD ("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING ("Document No.", "Line No.");
                        column(LineAmt_SalesInvLine; "Line Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Desc_SalesInvLine; Description)
                        {
                        }
                        column(No_SalesInvLine; "No.")
                        {
                        }
                        column(Qty_SalesInvLine; Quantity)
                        {
                        }
                        column(UOM_SalesInvLine; "Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesInvLine; "Unit Price")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(Discount_SalesInvLine; "Line Discount %")
                        {
                        }
                        column(VATIdentifier_SalesInvLine; "VAT Identifier")
                        {
                        }
                        column(PostedShipmentDate; FORMAT("Shipment Date"))
                        {
                        }
                        column(Type_SalesInvLine; FORMAT(Type))
                        {
                        }
                        column(InvDiscLineAmt_SalesInvLine; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal; TotalSubTotal)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvDiscAmount; TotalInvDiscAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(Amount_SalesInvLine; Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalAmount; TotalAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Amount_AmtInclVAT; "Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtInclVAT_SalesInvLine; "Amount Including VAT")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountVAT; TotalAmountVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmtAfterInvDiscAmt; -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT"))
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr; "Sales Invoice Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscOnVAT; TotalPaymentDiscOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATText_SalesInvLine; TotalInclVATText)
                        {
                        }
                        column(VATAmtText_SalesInvLine; VATAmountLine.VATAmountText)
                        {
                        }
                        column(DocNo_SalesInvLine; "Document No.")
                        {
                        }
                        column(LineNo_SalesInvLine; "Line No.")
                        {
                        }
                        column(IsLineWithTotals; LineNoWithTotal = "Line No.")
                        {
                        }//Discount 1,2,3 - START
                        column(DiscDescription; varDiscDescription)
                        {
                        }
                        column(Disc2Description; varDisc2Description)
                        {
                        }
                        column(Disc3Description; varDisc3Description)
                        {
                        }
                        column(ShowThirdTable; varShowThirdTable)
                        {
                        }
                        column(ShowSecondTable; varShowSecondTable)
                        {
                        }
                        column(ShowFirstTable; varShowFirstTable)
                        {
                        }
                        column(lblDescPercentage; lblDescPercentage)
                        {
                        }
                        column(lblDesc2Percentages; lblDesc2Percentage)
                        {
                        }
                        column(lblDesc3Percentage; lblDesc3Percentage)
                        {
                        }
                        column(lblDiscAmount; lblDiscAmount)
                        {
                        }
                        column(lblDisc3Amount; lblDisc3Amount)
                        {
                        }
                        column(lblPriceWithDisc; lblPriceWithDisc)
                        {
                        }
                        column(PriceExclDisc; varPriceExclDisc)
                        {
                        }
                        column(DiscTotal; varDiscTotal)
                        {
                        }
                        column(DiscAmount; varDiscAmount)
                        {
                        }
                        column(Disc3; varDisc3)
                        {
                        }
                        column(Disc12; varDisc12)
                        {
                        }
                        column(Price; varPrice)
                        {
                        }
                        column(varNo; varNo)
                        {
                        }
                        column(DiscPercentage; "Sales Invoice Line"."Line Discount %")
                        {
                        }
                        column(Disc2Percentage; "Sales Invoice Line"."Line Discount 2 %")
                        {
                        }
                        column(Disc3Percentage; "Sales Invoice Line"."Line Discount 3 %")
                        {
                        }
                        //Discount 1,2,3 - END
                        dataitem("Sales Shipment Buffer"; Integer)
                        {
                            DataItemTableView = SORTING (Number);
                            column(SalesShptBufferPostDate; FORMAT(SalesShipmentBuffer."Posting Date"))
                            {
                            }
                            column(SalesShptBufferQty; SalesShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(ShipmentCaption; ShipmentCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN
                                    SalesShipmentBuffer.FIND('-')
                                ELSE
                                    SalesShipmentBuffer.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");

                                SETRANGE(Number, 1, SalesShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(AsmLoop; Integer)
                        {
                            DataItemTableView = SORTING (Number);
                            column(TempPostedAsmLineNo; BlanksForIndent + TempPostedAsmLine."No.")
                            {
                            }
                            column(TempPostedAsmLineQuantity; TempPostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineDesc; BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(TempPostAsmLineVartCode; BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                            }
                            column(TempPostedAsmLineUOM; GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                            }

                            trigger OnAfterGetRecord();
                            var
                                ItemTranslation: Record "Item Translation";
                            begin
                                IF Number = 1 THEN
                                    TempPostedAsmLine.FINDSET
                                ELSE
                                    TempPostedAsmLine.NEXT;

                                IF ItemTranslation.GET(TempPostedAsmLine."No.",
                                     TempPostedAsmLine."Variant Code",
                                     "Sales Invoice Header"."Language Code")
                                THEN
                                    TempPostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem();
                            begin
                                CLEAR(TempPostedAsmLine);
                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK;
                                CollectAsmInformation;
                                CLEAR(TempPostedAsmLine);
                                SETRANGE(Number, 1, TempPostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            if("Sales Invoice Line".Type = "Sales Invoice Line".Type::" ") and ("Sales Invoice Line"."No." <> '') then
                                CurrReport.Skip;

                            //Discount 1,2,3 - START
                            IF "Sales Invoice Line".Type <> "Sales Invoice Line".Type::" " THEN
                                varNo += 1;

                            varPriceExclDisc := 0;
                            varDiscTotal := 0;
                            varDiscAmount := 0;
                            varDisc1 := 0;
                            varDisc12 := 0;
                            varDisc2 := 0;
                            varDisc3 := 0;

                            rcdSalesInvoiceLine.RESET;
                            rcdSalesInvoiceLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                            IF rcdSalesInvoiceLine.FINDFIRST THEN
                                REPEAT
                                varPriceExclDisc += rcdSalesInvoiceLine."Unit Price" * rcdSalesInvoiceLine.Quantity;
                                IF rcdSalesInvoiceLine."Line Discount %" <> 0 THEN BEGIN

                                    varPrice := rcdSalesInvoiceLine."Unit Price" * rcdSalesInvoiceLine.Quantity;
                                    //varIznos += rcdSalesInvoiceLine.Amount;

                                    IF rcdSalesInvoiceLine."Line Discount %" <> 0 THEN BEGIN
                                        varDisc1 += varPrice * (rcdSalesInvoiceLine."Line Discount %" / 100);
                                    END;
                                    IF rcdSalesInvoiceLine."Line Discount 2 %" <> 0 THEN BEGIN
                                        varDisc2 += (varPrice - varPrice * (rcdSalesInvoiceLine."Line Discount %" / 100)) * (rcdSalesInvoiceLine."Line Discount 2 %" / 100);
                                    END;
                                    IF rcdSalesInvoiceLine."Line Discount 3 %" <> 0 THEN BEGIN
                                        varDisc3 += (varPrice - varPrice * (rcdSalesInvoiceLine."Line Discount %" / 100) - (varPrice - varPrice * (rcdSalesInvoiceLine."Line Discount %" / 100)) * (rcdSalesInvoiceLine."Line Discount 2 %" / 100)) * (rcdSalesInvoiceLine."Line Discount 3 %" / 100);
                                    END;
                                END;
                                UNTIL rcdSalesInvoiceLine.NEXT = 0;
                            varDisc12 := varDisc1 + varDisc2;
                            //Discount 1,2,3 - END

                            InitializeShipmentBuffer;
                            IF(Type = Type::"G/L Account") THEN
                                "No." := '';

                            VATAmountLine.INIT;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";
                            IF "Allow Invoice Disc." THEN
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                            VATAmountLine.InsertLine;
                            CalcVATAmountLineLCY(
                              "Sales Invoice Header", VATAmountLine, TempVATAmountLineLCY,
                              VATBaseRemainderAfterRoundingLCY, AmtInclVATRemainderAfterRoundingLCY);

                            TotalSubTotal += "Line Amount";
                            TotalInvDiscAmount -= "Inv. Discount Amount";
                            TotalAmount += Amount;
                            TotalAmountVAT += "Amount Including VAT" - Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");
                        end;

                        trigger OnPreDataItem();
                        begin
                            VATAmountLine.DELETEALL;
                            TempVATAmountLineLCY.DELETEALL;
                            VATBaseRemainderAfterRoundingLCY := 0;
                            AmtInclVATRemainderAfterRoundingLCY := 0;
                            SalesShipmentBuffer.RESET;
                            SalesShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;

                            MoreLines := FIND('+');
                            WHILE MoreLines AND(Description = '') AND("No." = '') AND(Quantity = 0) AND(Amount = 0) DO
                              MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;

                            LineNoWithTotal := "Line No.";
                            SETRANGE("Line No.", 0, "Line No.");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING (Number)
                                            WHERE (Number = CONST (1));
                        column(SelltoCustNo_SalesInvHdr; "Sales Invoice Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddrCaption; ShiptoAddrCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Sell-to Customer No."))
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
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText := FormatDocument.GetCOPYText;
                        OutputNo += 1;
                    END;

                    TotalSubTotal := 0;
                    TotalInvDiscAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalPaymentDiscOnVAT := 0;
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT IsReportInPreviewMode THEN
                        CODEUNIT.RUN(CODEUNIT::"Sales Inv.-Printed", "Sales Invoice Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            var
                Handled: Boolean;
            begin
                if "Language Code" = '' then
                    CurrReport.LANGUAGE := Language.GetLanguageID(GLSetup."Local Language Code")
                else
                    CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                //Discount 1,2,3 - START
                IF "Sales Invoice Header"."Discount Description 1" = '' THEN
                    varDiscDescription := lblDescPercentage
                ELSE
                    varDiscDescription := "Sales Invoice Header"."Discount Description 1";
                IF "Sales Invoice Header"."Discount Description 2" = '' THEN
                    varDisc2Description := lblDesc2Percentage
                ELSE
                    varDisc2Description := "Sales Invoice Header"."Discount Description 2";
                IF "Sales Invoice Header"."Discount Description 3" = '' THEN
                    varDisc3Description := lblDesc3Percentage
                ELSE
                    varDisc3Description := "Sales Invoice Header"."Discount Description 3";

                rcdSalesInvoiceLine.RESET;
                rcdSalesInvoiceLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");

                disc2 := FALSE;
                disc3 := FALSE;

                IF rcdSalesInvoiceLine.FINDFIRST THEN
                    REPEAT
                    IF rcdSalesInvoiceLine."Line Discount 3 %" <> 0 THEN
                        disc3 := TRUE;
                    IF rcdSalesInvoiceLine."Line Discount 2 %" <> 0 THEN
                        disc2 := TRUE;
                    UNTIL rcdSalesInvoiceLine.NEXT = 0;

                varShowThirdTable := FALSE;
                varShowSecondTable := FALSE;
                varShowFirstTable := FALSE;

                IF disc3 THEN BEGIN
                    varShowThirdTable := TRUE;
                END ELSE IF disc2 THEN BEGIN
                        varShowSecondTable := TRUE;
                    END ELSE BEGIN
                        varShowFirstTable := TRUE;
                    END;
                //Discount 1,2,3 - END


                FormatAddressFields("Sales Invoice Header");
                FormatDocumentFields("Sales Invoice Header");

                IF NOT Cust.GET("Bill-to Customer No.") THEN
                    CLEAR(Cust);

                OnAfterGetRecordSalesInvoiceHeader("Sales Invoice Header");
                OnGetReferenceText("Sales Invoice Header", ReferenceText, Handled);
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
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'No. of Copies',
                                    ESP = 'Nž copias';
                        ToolTipML = ENU = 'Specifies how many copies of the document to print.',
                                    ESP = 'Especifica cuántas copias del documento se van a imprimir.';
                    }
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
                    {
                        ApplicationArea = Assembly;
                        CaptionML = ENU = 'Show Assembly Components',
                                    ESP = 'Mostrar componentes del ensamblado';
                        ToolTipML = ENU = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold.',
                                    ESP = 'Especifica si desea que el informe incluya información sobre componentes que se utilizaron en pedidos de ensamblado vinculados que suministraron el producto de venta.';
                    }
                    field(DisplayAdditionalFeeNote; DisplayAdditionalFeeNote)
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = ENU = 'Show Additional Fee Note',
                                    ESP = 'Mostrar nota recargo';
                        ToolTipML = ENU = 'Specifies that any notes about additional fees are included on the document.',
                                    ESP = 'Especifica que se incluyen notas sobre los recargos en el documento.';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        CompanyInfo.VerifyAndSetPaymentInfo;
        CompanyInfo.CALCFIELDS(Picture);
    end;

    var
        //Discount 1,2,3 - START
        varDiscDescription: Text[30];
        varDisc2Description: Text[30];
        varDisc3Description: Text[30];
        disc2: Boolean;
        disc3: Boolean;
        varShowThirdTable: Boolean;
        varShowSecondTable: Boolean;
        varShowFirstTable: Boolean;
        lblDescPercentage: TextConst ENU = 'Disc %';
        lblDesc2Percentage: TextConst ENU = 'Disc2 %';
        lblDesc3Percentage: TextConst ENU = 'Disc3 %';
        lblDiscAmount: TextConst ENU = '- Discount';
        lblDisc3Amount: TextConst ENU = '- Discount 3';
        lblPriceWithDisc: TextConst ENU = 'Price with discount';
        varNo: Integer;
        varPriceExclDisc: Decimal;
        varDiscTotal: Decimal;
        varDiscAmount: Decimal;
        varDisc1: Decimal;
        varDisc2: Decimal;
        varDisc3: Decimal;
        varDisc12: Decimal;
        varPrice: Decimal;
        rcdSalesInvoiceLine: Record "Sales Invoice Line";
        //Discount 1,2,3 - END
        Text004: TextConst Comment = '%1 = Document No.', ENU = 'Sales - Invoice', ESP = 'Ventas - Factura %1';
        PageCaptionCap: TextConst ENU = 'Page %1 of %2', ESP = 'Página %1 de %2';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        Cust: Record Customer;
        VATAmountLine: Record "VAT Amount Line" temporary;
        TempVATAmountLineLCY: Record "VAT Amount Line" temporary;
        Language: Record Language;
        CurrExchRate: Record "Currency Exchange Rate";
        TempPostedAsmLine: Record "Posted Assembly Line" temporary;
        TempLineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist." temporary;
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        OrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: TextConst ENU = 'VAT Amount Specification in ', ESP = 'Especificar importe IVA en ';
        Text008: TextConst ENU = 'Local Currency', ESP = 'Divisa local';
        VALExchRate: Text[50];
        Text009: TextConst ENU = 'Exchange rate: %1/%2', ESP = 'Tipo cambio: %1/%2';
        CalculatedExchRate: Decimal;
        Text010: TextConst ENU = 'Sales - Prepayment Invoice %1', ESP = 'Ventas - Factura prepago %1';
        OutputNo: Integer;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        DisplayAssemblyInformation: Boolean;
        CompanyInfoPhoneNoCaptionLbl: Label 'Phone No.';
        CompanyInfoVATRegNoCptnLbl: Label 'VAT Reg. No.';
        CompanyInfoGiroNoCaptionLbl: Label 'Giro No.';
        CompanyInfoBankNameCptnLbl: Label 'Bank';
        CompanyInfoBankAccNoCptnLbl: Label 'Account No.';
        SalesInvDueDateCaptionLbl: Label 'Due Date';
        InvNoCaptionLbl: Label 'Invoice No.';
        SalesInvPostingDateCptnLbl: Label 'Posting Date';
        HeaderDimCaptionLbl: Label 'Header Dimensions';
        UnitPriceCaptionLbl: TextConst ENU = 'Unit Price', ESP = 'Precio venta';
        SalesInvLineDiscCaptionLbl: Label 'Discount %';
        AmountCaptionLbl: Label 'Amount';
        VATClausesCap: TextConst ENU = 'VAT Clause', ESP = 'Cláusula de IVA';
        PostedShipmentDateCaptionLbl: Label 'Posted Shipment Date';
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal', ESP = 'Subtotal';
        LineAmtAfterInvDiscCptnLbl: Label 'Payment Discount on VAT';
        ShipmentCaptionLbl: Label 'Shipment';
        LineDimCaptionLbl: Label 'Line Dimensions';
        VATAmtSpecificationCptnLbl: Label 'VAT Amount Specification';
        InvDiscBaseAmtCaptionLbl: TextConst ENU = 'Invoice Discount Base Amount', ESP = 'Importe base descuento factura';
        LineAmtCaptionLbl: Label 'Line Amount';
        ShiptoAddrCaptionLbl: Label 'Ship-to Address';
        InvDiscountAmtCaptionLbl: Label 'Invoice Discount Amount';
        DocumentDateCaptionLbl: Label 'Document Date';
        PaymentTermsDescCaptionLbl: Label 'Payment Terms';
        ShptMethodDescCaptionLbl: Label 'Shipment Method';
        VATPercentageCaptionLbl: Label 'VAT %';
        TotalCaptionLbl: TextConst ENU = 'Total', ESP = 'Total';
        VATBaseCaptionLbl: Label 'VAT Base';
        VATAmtCaptionLbl: TextConst ENU = 'VAT Amount', ESP = 'Importe IVA';
        VATIdentifierCaptionLbl: TextConst ENU = 'VAT Identifier', ESP = 'Identific. IVA';
        HomePageCaptionLbl: Label 'Home Page';
        EMailCaptionLbl: Label 'Email';
        DisplayAdditionalFeeNote: Boolean;
        LineNoWithTotal: Integer;
        VATBaseRemainderAfterRoundingLCY: Decimal;
        AmtInclVATRemainderAfterRoundingLCY: Decimal;
        NoCaption: Label 'No.';
        DescriptionCaption: Label 'Description';
        QuantityCaption: Label 'Quantity';
        SupplierCaption: Label 'Supplier:';
        CustomerCaption: Label 'Customer:';
        ContactCaption: Label 'Contact:';
        MoreLines: Boolean;

    local procedure IsReportInPreviewMode(): Boolean;
    var
        MailManagement: Codeunit "Mail Management";
    begin
        EXIT(CurrReport.PREVIEW OR MailManagement.IsHandlingGetEmailBody);
    end;

    local procedure InitializeShipmentBuffer();
    var
        SalesShipmentHeader: Record "Sales Shipment Buffer";
        TempSalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        IF "Sales Invoice Line"."Shipment No." <> '' THEN
            IF SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.") THEN
                EXIT;

        IF "Sales Invoice Header"."Order No." = '' THEN
            EXIT;

        CASE "Sales Invoice Line".Type OF
          "Sales Invoice Line".Type::Item :
            GenerateBufferFromValueEntry("Sales Invoice Line");
        "Sales Invoice Line".Type::"G/L Account", "Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)", "Sales Invoice Line".Type::"Fixed Asset" :
            GenerateBufferFromShipment("Sales Invoice Line");
        END;

        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            TempSalesShipmentBuffer := SalesShipmentBuffer;
            IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
                SalesShipmentBuffer.GET(
                TempSalesShipmentBuffer."Document No.", TempSalesShipmentBuffer."Line No.", TempSalesShipmentBuffer."Entry No.");
                SalesShipmentBuffer.DELETE;
                EXIT;
            END;
            SalesShipmentBuffer.CALCSUMS(Quantity);
            IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
                SalesShipmentBuffer.DELETEALL;
                EXIT;
            END;
        END;
    end;

    local procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Invoice Line");
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FIND('-') THEN
            REPEAT
            IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN
                    Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                ELSE
                    Quantity := ValueEntry."Invoiced Quantity";
                AddBufferEntry(
                SalesInvoiceLine2,
                -Quantity,
                ItemLedgerEntry."Posting Date");
                TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
            END;
            FirstValueEntryNo := ValueEntry."Entry No." + 1;
            UNTIL(ValueEntry.NEXT = 0) OR(TotalQuantity = 0);
    end;

    local procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line");
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.", '..%1', "Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-') THEN
            REPEAT
            SalesInvoiceLine2.SETRANGE("Document No.", SalesInvoiceHeader."No.");
            SalesInvoiceLine2.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
            SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine.Type);
            SalesInvoiceLine2.SETRANGE("No.", SalesInvoiceLine."No.");
            SalesInvoiceLine2.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
            IF SalesInvoiceLine2.FIND('-') THEN
                REPEAT
                TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                UNTIL SalesInvoiceLine2.NEXT = 0;
            UNTIL SalesInvoiceHeader.NEXT = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.", "Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity, '<>%1', 0);

        IF SalesShipmentLine.FIND('-') THEN
            REPEAT
            IF "Sales Invoice Header"."Get Shipment Used" THEN
                CorrectShipment(SalesShipmentLine);
            IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
                TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
            ELSE BEGIN
                IF ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) THEN
                    SalesShipmentLine.Quantity := TotalQuantity;
                Quantity :=
                SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN
                    AddBufferEntry(
                  SalesInvoiceLine,
                  Quantity,
                  SalesShipmentHeader."Posting Date");
            END;
            UNTIL(SalesShipmentLine.NEXT = 0) OR(TotalQuantity = 0);
    end;

    local procedure CorrectShipment(var SalesShipmentLine: Record "Sales Shipment Line");
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
            REPEAT
            SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            UNTIL SalesInvoiceLine.NEXT = 0;
    end;

    local procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date);
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.MODIFY;
            EXIT;
        END;

        WITH SalesShipmentBuffer DO
        BEGIN
            "Document No." := SalesInvoiceLine."Document No.";
            "Line No." := SalesInvoiceLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := SalesInvoiceLine.Type;
            "No." := SalesInvoiceLine."No.";
            Quantity := QtyOnShipment;
            "Posting Date" := PostingDate;
            INSERT;
            NextEntryNo := NextEntryNo + 1
        END;
    end;

    local procedure DocumentCaption(): Text[250];
    begin
        IF "Sales Invoice Header"."Prepayment Invoice" THEN
            EXIT(Text010);
        EXIT(Text004);
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; DisplayAsmInfo: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure FormatDocumentFields(SalesInvoiceHeader: Record "Sales Invoice Header");
    begin
        WITH SalesInvoiceHeader DO
        BEGIN
            FormatDocument.SetTotalLabels("Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
            FormatDocument.SetSalesPerson(SalesPurchPerson, "Salesperson Code", SalesPersonText);
            FormatDocument.SetPaymentTerms(PaymentTerms, "Payment Terms Code", "Language Code");
            FormatDocument.SetShipmentMethod(ShipmentMethod, "Shipment Method Code", "Language Code");

            OrderNoText := FormatDocument.SetText("Order No." <> '', FIELDCAPTION("Order No."));
            ReferenceText := FormatDocument.SetText("Your Reference" <> '', FIELDCAPTION("Your Reference"));
            VATNoText := FormatDocument.SetText("VAT Registration No." <> '', FIELDCAPTION("VAT Registration No."));
        END;
    end;

    local procedure FormatAddressFields(SalesInvoiceHeader: Record "Sales Invoice Header");
    var
        RespCenter: Record "Responsibility Center";
    begin
        FormatAddr.GetCompanyAddr(SalesInvoiceHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.SalesInvBillTo(CustAddr, SalesInvoiceHeader);
        ShowShippingAddr := FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, SalesInvoiceHeader);
    end;

    local procedure CollectAsmInformation();
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        PostedAsmHeader: Record "Posted Assembly Header";
        PostedAsmLine: Record "Posted Assembly Line";
        SalesShipmentLine: Record "Sales Shipment Line";
    begin
        TempPostedAsmLine.DELETEALL;
        IF "Sales Invoice Line".Type <> "Sales Invoice Line".Type::Item THEN
            EXIT;
        WITH ValueEntry DO
        BEGIN
            SETCURRENTKEY("Document No.");
            SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
            SETRANGE("Document Type", "Document Type"::"Sales Invoice");
            SETRANGE("Document Line No.", "Sales Invoice Line"."Line No.");
            SETRANGE(Adjustment, FALSE);
            IF NOT FINDSET THEN
                EXIT;
        END;
        REPEAT
          IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN
            IF ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" THEN BEGIN
                SalesShipmentLine.GET(ItemLedgerEntry."Document No.", ItemLedgerEntry."Document Line No.");
                IF SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader) THEN BEGIN
                    PostedAsmLine.SETRANGE("Document No.", PostedAsmHeader."No.");
                    IF PostedAsmLine.FINDSET THEN
                        REPEAT
                      TreatAsmLineBuffer(PostedAsmLine);
                        UNTIL PostedAsmLine.NEXT = 0;
                END;
            END;
        UNTIL ValueEntry.NEXT = 0;
    end;

    local procedure TreatAsmLineBuffer(PostedAsmLine: Record "Posted Assembly Line");
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type, PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.", PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code", PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description, PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code", PostedAsmLine."Unit of Measure Code");
        IF TempPostedAsmLine.FINDFIRST THEN BEGIN
            TempPostedAsmLine.Quantity += PostedAsmLine.Quantity;
            TempPostedAsmLine.MODIFY;
        END ELSE BEGIN
            CLEAR(TempPostedAsmLine);
            TempPostedAsmLine := PostedAsmLine;
            TempPostedAsmLine.INSERT;
        END;
    end;

    local procedure GetUOMText(UOMCode: Code[10]): Text[10];
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
            EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent(): Text[10];
    begin
        EXIT(PADSTR('', 2, ' '));
    end;

    local procedure CalcVATAmountLineLCY(SalesInvoiceHeader: Record "Sales Invoice Header"; TempVATAmountLine2: Record "VAT Amount Line" temporary; var TempVATAmountLineLCY2: Record "VAT Amount Line" temporary; var VATBaseRemainderAfterRoundingLCY2: Decimal; var AmtInclVATRemainderAfterRoundingLCY2: Decimal);
    var
        VATBaseLCY: Decimal;
        AmtInclVATLCY: Decimal;
    begin
        IF(NOT GLSetup."Print VAT specification in LCY") OR
           (SalesInvoiceHeader."Currency Code" = '')
        THEN
            EXIT;

        TempVATAmountLineLCY2.INIT;
        TempVATAmountLineLCY2 := TempVATAmountLine2;
        WITH SalesInvoiceHeader DO
        BEGIN
            VATBaseLCY :=
            CurrExchRate.ExchangeAmtFCYToLCY(
              "Posting Date", "Currency Code", TempVATAmountLine2."VAT Base", "Currency Factor") +
            VATBaseRemainderAfterRoundingLCY2;
            AmtInclVATLCY :=
            CurrExchRate.ExchangeAmtFCYToLCY(
              "Posting Date", "Currency Code", TempVATAmountLine2."Amount Including VAT", "Currency Factor") +
            AmtInclVATRemainderAfterRoundingLCY2;
        END;
        TempVATAmountLineLCY2."VAT Base" := ROUND(VATBaseLCY);
        TempVATAmountLineLCY2."Amount Including VAT" := ROUND(AmtInclVATLCY);
        TempVATAmountLineLCY2.InsertLine;

        VATBaseRemainderAfterRoundingLCY2 := VATBaseLCY - TempVATAmountLineLCY2."VAT Base";
        AmtInclVATRemainderAfterRoundingLCY2 := AmtInclVATLCY - TempVATAmountLineLCY2."Amount Including VAT";
    end;

    [IntegrationEvent(false, TRUE)]
    procedure OnAfterGetRecordSalesInvoiceHeader(SalesInvoiceHeader: Record "Sales Invoice Header");
    begin
    end;

    [IntegrationEvent(false, false)]
    procedure OnGetReferenceText(SalesInvoiceHeader: Record "Sales Invoice Header"; var ReferenceText: Text[80]; var Handled: Boolean);
    begin
    end;
}

