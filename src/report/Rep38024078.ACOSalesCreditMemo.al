report 38024078 "ACO Sales - Credit Memo"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ACO Sales - Credit Memo.rdlc';
    Caption = 'ACO Sales - Credit Memo';
    Permissions = TableData 7190=rimd;

    dataset
    {
        dataitem("Sales Cr.Memo Header";"Sales Cr.Memo Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.","Sell-to Customer No.","No. Printed";

            column(No_SalesCrMemoHeader;"No.")
            {
            }
            column(VATAmtLineVATCptn;VATAmtLineVATCptnLbl)
            {
            }
            column(VATAmtLineVATBaseCptn;VATAmtLineVATBaseCptnLbl)
            {
            }
            column(VATAmtLineVATAmtCptn;VATAmtLineVATAmtCptnLbl)
            {
            }
            column(VATAmtLineVATIdentifierCptn;VATAmtLineVATIdentifierCptnLbl)
            {
            }
            column(TotalCptn;TotalCptnLbl)
            {
            }
            column(SalesCrMemoLineDiscCaption;SalesCrMemoLineDiscCaptionLbl)
            {
            }
            dataitem(CopyLoop;Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number=CONST(1));
                    column(CompanyInfo1Picture;CompanyInfo1.Picture)
                    {
                    }
                    column(DocCptnCopyTxt;STRSUBSTNO(DocumentCaption,CopyText))
                    {
                    }
                    column(CustAddr1;CustAddr[1])
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(CustAddr2;CustAddr[2])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(CustAddr3;CustAddr[3])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(CustAddr4;CustAddr[4])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(CustAddr5;CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6;CustAddr[6])
                    {
                    }
                    column(CompanyInfoFaxNo;CompanyInfo."Fax No.")
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
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoHomePage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoBankAccNo;CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesCrMemoHeader;"Sales Cr.Memo Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostDate_SalesCrMemoHeader;FORMAT("Sales Cr.Memo Header"."Posting Date",0,4))
                    {
                    }
                    column(VATNoText;VATNoText)
                    {
                    }
                    column(VATRegNo_SalesCrMemoHeader;"Sales Cr.Memo Header"."VAT Registration No.")
                    {
                    }
                    column(SalesPersonText;SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(AppliedToText;AppliedToText)
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YourRef_SalesCrMemoHeader;"Sales Cr.Memo Header"."Your Reference")
                    {
                    }
                    column(CustAddr7;CustAddr[7])
                    {
                    }
                    column(CustAddr8;CustAddr[8])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(DocDt_SalesCrMemoHeader;FORMAT("Sales Cr.Memo Header"."Document Date",0,4))
                    {
                    }
                    column(PriceInclVAT_SalesCrMemoHeader;"Sales Cr.Memo Header"."Prices Including VAT")
                    {
                    }
                    column(ReturnOrderNoText;ReturnOrderNoText)
                    {
                    }
                    column(ReturnOrdNo_SalesCrMemoHeader;"Sales Cr.Memo Header"."Return Order No.")
                    {
                    }
                    column(PageCaption;PageCaptionCap)
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo;FORMAT("Sales Cr.Memo Header"."Prices Including VAT"))
                    {
                    }
                    column(VATBaseDiscPrc_SalesCrMemoLine;"Sales Cr.Memo Header"."VAT Base Discount %")
                    {
                    }
                    column(CompanyInfoPhoneNoCptn;CompanyInfoPhoneNoCptnLbl)
                    {
                    }
                    column(CompanyInfoVATRegNoCptn;CompanyInfoVATRegNoCptnLbl)
                    {
                    }
                    column(CompanyInfoGiroNoCptn;CompanyInfoGiroNoCptnLbl)
                    {
                    }
                    column(CompanyInfoBankNameCptn;CompanyInfoBankNameCptnLbl)
                    {
                    }
                    column(CompanyInfoBankAccNoCptn;CompanyInfoBankAccNoCptnLbl)
                    {
                    }
                    column(No1_SalesCrMemoHeaderCptn;No1_SalesCrMemoHeaderCptnLbl)
                    {
                    }
                    column(SalesCrMemoHeaderPostDtCptn;SalesCrMemoHeaderPostDtCptnLbl)
                    {
                    }
                    column(DocumentDate;DocumentDateLbl)
                    {
                    }
                    column(CompanyInfoHomePageCaption;CompanyInfoHomePageCaptionLbl)
                    {
                    }
                    column(CompanyINfoEmailCaption;CompanyINfoEmailCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesCrMemoHeaderCaption;"Sales Cr.Memo Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PriceInclVAT_SalesCrMemoHeaderCaption;"Sales Cr.Memo Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    dataitem(DimensionLoop1;Integer)
                    {
                        DataItemLinkReference = "Sales Cr.Memo Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=FILTER(1..));
                        column(DimText;DimText)
                        {
                        }
                        column(DimensionLoop1Num;Number)
                        {
                        }
                        column(HeaderDimCptn;HeaderDimCptnLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                              IF NOT DimSetEntry1.FINDSET THEN
                                CurrReport.BREAK;
                            END ELSE
                              IF NOT Continue THEN
                                CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                              OldDimText := DimText;
                              IF DimText = '' THEN
                                DimText := STRSUBSTNO('%1 %2',DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code")
                              ELSE
                                DimText :=
                                  STRSUBSTNO(
                                    '%1, %2 %3',DimText,
                                    DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code");
                              IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                DimText := OldDimText;
                                Continue := TRUE;
                                EXIT;
                              END;
                            UNTIL DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowInternalInfo THEN
                              CurrReport.BREAK;
                        end;
                    }
                    dataitem("Sales Cr.Memo Line";"Sales Cr.Memo Line")
                    {
                        DataItemLink = "Document No."=FIELD("No.");
                        DataItemLinkReference = "Sales Cr.Memo Header";
                        DataItemTableView = SORTING("Document No.","Line No.");
                        column(LineAmt_SalesCrMemoLine;"Line Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Desc_SalesCrMemoLine;Description)
                        {
                        }
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
                        column(DiscPercentage;"Sales Cr.Memo Line"."Line Discount %")
                        {
                        }
                        column(Disc2Percentage;"Sales Cr.Memo Line"."Line Discount 2 %")
                        {
                        }
                        column(Disc3Percentage;"Sales Cr.Memo Line"."Line Discount 3 %")
                        {
                        }
                        //Discount 1,2,3 - END
                        column(No_SalesCrMemoLine;"No.")
                        {
                        }
                        column(Qty_SalesCrMemoLine;Quantity)
                        {
                        }
                        column(UOM_SalesCrMemoLine;"Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesCrMemoLine;"Unit Price")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(Disc_SalesCrMemoLine;"Line Discount %")
                        {
                        }
                        column(VATIdentif_SalesCrMemoLine;"VAT Identifier")
                        {
                        }
                        column(PostedReceiptDate;FORMAT("Shipment Date"))
                        {
                        }
                        column(Type_SalesCrMemoLine;FORMAT(Type))
                        {
                        }
                        column(NNCTotalLineAmt;NNC_TotalLineAmount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(NNCTotalAmtInclVat;NNC_TotalAmountInclVat)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(NNCTotalInvDiscAmt_SalesCrMemoLine;NNC_TotalInvDiscAmount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(NNCTotalAmt;NNC_TotalAmount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(InvDiscAmt_SalesCrMemoLine;-"Inv. Discount Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalText;TotalText)
                        {
                        }
                        column(Amt_SalesCrMemoLine;Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalExclVATText;TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText;TotalInclVATText)
                        {
                        }
                        column(VATAmtLineVATAmtTxt;VATAmountLine.VATAmountText)
                        {
                        }
                        column(LineAmtInvDiscAmt_SalesCrMemoLine;-("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT"))
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineNo_SalesCrMemoLine;"Line No.")
                        {
                        }
                        column(UnitPriceCptn;UnitPriceCptnLbl)
                        {
                        }
                        column(AmountCptn;AmountCptnLbl)
                        {
                        }
                        column(PostedReceiptDateCptn;PostedReceiptDateCptnLbl)
                        {
                        }
                        column(InvDiscAmt_SalesCrMemoLineCptn;InvDiscAmt_SalesCrMemoLineCptnLbl)
                        {
                        }
                        column(SubtotalCptn;SubtotalCptnLbl)
                        {
                        }
                        column(LineAmtInvDiscAmt_SalesCrMemoLineCptn;LineAmtInvDiscAmt_SalesCrMemoLineCptnLbl)
                        {
                        }
                        column(Desc_SalesCrMemoLineCaption;FIELDCAPTION(Description))
                        {
                        }
                        column(No_SalesCrMemoLineCaption;FIELDCAPTION("No."))
                        {
                        }
                        column(Qty_SalesCrMemoLineCaption;FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_SalesCrMemoLineCaption;FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATIdentif_SalesCrMemoLineCaption;FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        dataitem(DimensionLoop2;Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number=FILTER(1..));
                            column(DimText_DimensionLoop2;DimText)
                            {
                            }
                            column(LineDimCptn;LineDimCptnLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                  IF NOT DimSetEntry2.FIND('-') THEN
                                    CurrReport.BREAK;
                                END ELSE
                                  IF NOT Continue THEN
                                    CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                  OldDimText := DimText;
                                  IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2',DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code")
                                  ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3',DimText,
                                        DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code");
                                  IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                  END;
                                UNTIL DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT ShowInternalInfo THEN
                                  CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID","Sales Cr.Memo Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            //Discount 1,2,3 - START
                            IF "Sales Cr.Memo Line" .Type <> "Sales Cr.Memo Line".Type::" " THEN
                              varNo += 1;

                            varPriceExclDisc := 0;
                            varDiscTotal := 0;
                            varDiscAmount := 0;
                            varDisc1 := 0;
                            varDisc12  := 0;
                            varDisc2 := 0;
                            varDisc3 := 0;

                            rcdSalesLine.RESET;
                            rcdSalesLine.SETRANGE("Document No.","Sales Cr.Memo Header"."No.");
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

                            NNC_TotalLineAmount += "Line Amount";
                            NNC_TotalAmountInclVat += "Amount Including VAT";
                            NNC_TotalInvDiscAmount += "Inv. Discount Amount";
                            NNC_TotalAmount += Amount;

                            IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
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
                        end;

                        trigger OnPreDataItem();
                        begin
                            VATAmountLine.DELETEALL;
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                              MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                              CurrReport.BREAK;
                            SETRANGE("Line No.",0,"Line No.");
                        end;
                    }
                    dataitem(VATCounter;Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase;VATAmountLine."VAT Base")
                        {
                        }
                        column(VATAmtLineVATAmt;VATAmountLine."VAT Amount")
                        {
                        }
                        column(VATAmtLineLineAmt;VATAmountLine."Line Amount")
                        {
                        }
                        column(VATAmtLineInvDiscBaseAmt;VATAmountLine."Inv. Disc. Base Amount")
                        {
                        }
                        column(VATAmtLineInvoiceDiscAmt;VATAmountLine."Invoice Discount Amount")
                        {
                        }
                        column(VATAmtLineVAT;VATAmountLine."VAT %")
                        {
                        }
                        column(VATAmtLineVATIdentifier;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmtSpecificationCptn;VATAmtSpecificationCptnLbl)
                        {
                        }
                        column(VATAmtLineInvDiscBaseAmtCptn;VATAmtLineInvDiscBaseAmtCptnLbl)
                        {
                        }
                        column(VATAmtLineLineAmtCptn;VATAmtLineLineAmtCptnLbl)
                        {
                        }
                        column(VATAmtLineInvoiceDiscAmtCptn;VATAmtLineInvoiceDiscAmtCptnLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number,1,VATAmountLine.COUNT);
                        end;
                    }
                    dataitem(VATClauseEntryCounter;Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATClauseVATIdentifier;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode;VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseDescription;VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2;VATClause."Description 2")
                        {
                        }
                        column(VATClauseAmount;VATAmountLine."VAT Amount")
                        {
                        }
                        column(VATClausesCaption;VATClausesCap)
                        {
                        }
                        column(VATClauseVATIdentifierCaption;VATAmtLineVATIdentifierCptnLbl)
                        {
                        }
                        column(VATClauseVATAmtCaption;VATAmtLineVATAmtCptnLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            IF NOT VATClause.GET(VATAmountLine."VAT Clause Code") THEN
                              CurrReport.SKIP;
                            VATClause.TranslateDescription("Sales Cr.Memo Header"."Language Code");
                        end;

                        trigger OnPreDataItem();
                        begin
                            CLEAR(VATClause);
                            SETRANGE(Number,1,VATAmountLine.COUNT);
                        end;
                    }
                    dataitem(VATCounterLCY;Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader;VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate;VALExchRate)
                        {
                        }
                        column(VALVATAmountLCY;VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATBaseLCY;VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATPercent;VATAmountLine."VAT %")
                        {
                        }
                        column(VATIdentifier_VATCounterLCY;VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Cr.Memo Header"."Posting Date","Sales Cr.Memo Header"."Currency Code",
                                "Sales Cr.Memo Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Cr.Memo Header"."Posting Date","Sales Cr.Memo Header"."Currency Code",
                                "Sales Cr.Memo Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Cr.Memo Header"."Currency Code" = '')
                            THEN
                              CurrReport.BREAK;

                            SETRANGE(Number,1,VATAmountLine.COUNT);

                            IF GLSetup."LCY Code" = '' THEN
                              VALSpecLCYHeader := Text008 + Text009
                            ELSE
                              VALSpecLCYHeader := Text008 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Cr.Memo Header"."Posting Date","Sales Cr.Memo Header"."Currency Code",1);
                            CalculatedExchRate := ROUND(1 / "Sales Cr.Memo Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount",0.000001);
                            VALExchRate := STRSUBSTNO(Text010,CalculatedExchRate,CurrExchRate."Exchange Rate Amount");
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
                        column(SelltoCustNo_SalesCrMemoHeader;"Sales Cr.Memo Header"."Sell-to Customer No.")
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
                        column(ShiptoAddressCptn;ShiptoAddressCptnLbl)
                        {
                        }
                        column(SelltoCustNo_SalesCrMemoHeaderCaption;"Sales Cr.Memo Header".FIELDCAPTION("Sell-to Customer No."))
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

                    NNC_TotalLineAmount := 0;
                    NNC_TotalAmountInclVat := 0;
                    NNC_TotalInvDiscAmount := 0;
                    NNC_TotalAmount := 0;
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT IsReportInPreviewMode THEN
                      CODEUNIT.RUN(CODEUNIT::"Sales Cr. Memo-Printed","Sales Cr.Memo Header");
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
                IF "Sales Cr.Memo Header"."Discount Description 1" = '' THEN
                  varDiscDescription := lblDescPercentage
                ELSE
                  varDiscDescription := "Sales Cr.Memo Header"."Discount Description 1";
                IF "Sales Cr.Memo Header"."Discount Description 2" = '' THEN
                  varDisc2Description := lblDesc2Percentage
                ELSE
                  varDisc2Description := "Sales Cr.Memo Header"."Discount Description 2";
                IF "Sales Cr.Memo Header"."Discount Description 3" = '' THEN
                  varDisc3Description := lblDesc3Percentage
                ELSE
                  varDisc3Description := "Sales Cr.Memo Header"."Discount Description 3";

                rcdSalesLine.RESET;
                rcdSalesLine.SETRANGE("Document No.","Sales Cr.Memo Header"."No.");

                disc2 := FALSE;
                disc3 := FALSE;

                IF rcdSalesLine.FINDFIRST THEN
                  REPEAT
                    IF rcdSalesLine."Line Discount 3 %" <> 0 THEN
                      disc3 := TRUE;
                    IF rcdSalesLine."Line Discount 2 %" <> 0 THEN
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
                FormatAddressFields("Sales Cr.Memo Header");
                FormatDocumentFields("Sales Cr.Memo Header");

                DimSetEntry1.SETRANGE("Dimension Set ID","Dimension Set ID");

                IF LogInteraction THEN
                  IF NOT IsReportInPreviewMode THEN
                    IF "Bill-to Contact No." <> '' THEN
                      SegManagement.LogDocument(
                        6,"No.",0,0,DATABASE::Contact,"Bill-to Contact No.","Salesperson Code",
                        "Campaign No.","Posting Description",'')
                    ELSE
                      SegManagement.LogDocument(
                        6,"No.",0,0,DATABASE::Customer,"Sell-to Customer No.","Salesperson Code",
                        "Campaign No.","Posting Description",'');

                OnAfterGetRecordSalesCrMemoHeader("Sales Cr.Memo Header");
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
                    field(NoOfCopies;NoOfCopies)
                    {
                        ApplicationArea = Basic,Suite;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo;ShowInternalInfo)
                    {
                        ApplicationArea = Basic,Suite;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                    field(LogInteraction;LogInteraction)
                    {
                        ApplicationArea = Basic,Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies that interactions with the contact are logged.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage();
        begin
            LogInteraction := SegManagement.FindInteractTmplCode(6) <> '';
            LogInteractionEnable := LogInteraction;
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
        CompanyInfo1.CALCFIELDS(Picture);
    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
          InitLogInteraction;
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
        lblDescPercentage : TextConst ENU='Disc %';
        lblDesc2Percentage : TextConst ENU='Disc2 %';
        lblDesc3Percentage : TextConst ENU='Disc3 %';
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
        rcdSalesLine : Record "Sales Cr.Memo Line";
        //Discount 1,2,3 - END
        Text003 : Label '(Applies to %1 %2)';
        Text005 : TextConst Comment='%1 = Document No.',ENU='Sales - Credit Memo %1';
        PageCaptionCap : Label 'Page';
        GLSetup : Record "General Ledger Setup";
        RespCenter : Record "Responsibility Center";
        SalesSetup : Record "Sales & Receivables Setup";
        SalesPurchPerson : Record "Salesperson/Purchaser";
        CompanyInfo : Record "Company Information";
        CompanyInfo1 : Record "Company Information";
        VATAmountLine : Record "VAT Amount Line" temporary;
        VATClause : Record "VAT Clause";
        DimSetEntry1 : Record "Dimension Set Entry";
        DimSetEntry2 : Record "Dimension Set Entry";
        Language : Record Language;
        CurrExchRate : Record "Currency Exchange Rate";
        FormatAddr : Codeunit "Format Address";
        SegManagement : Codeunit SegManagement;
        FormatDocument : Codeunit "Format Document";
        CustAddr : array [8] of Text[50];
        ShipToAddr : array [8] of Text[50];
        CompanyAddr : array [8] of Text[50];
        ReturnOrderNoText : Text[80];
        SalesPersonText : Text[30];
        VATNoText : Text[80];
        ReferenceText : Text[80];
        AppliedToText : Text;
        TotalText : Text[50];
        TotalExclVATText : Text[50];
        TotalInclVATText : Text[50];
        MoreLines : Boolean;
        NoOfCopies : Integer;
        NoOfLoops : Integer;
        CopyText : Text[30];
        ShowShippingAddr : Boolean;
        DimText : Text[120];
        OldDimText : Text[75];
        ShowInternalInfo : Boolean;
        Continue : Boolean;
        LogInteraction : Boolean;
        VALVATBaseLCY : Decimal;
        VALVATAmountLCY : Decimal;
        Text008 : Label '"VAT Amount Specification in "';
        Text009 : Label 'Local Currency';
        Text010 : Label 'Exchange rate: %1/%2';
        VALSpecLCYHeader : Text[80];
        VALExchRate : Text[50];
        CalculatedExchRate : Decimal;
        Text011 : Label 'Sales - Prepmt. Credit Memo %1';
        OutputNo : Integer;
        NNC_TotalLineAmount : Decimal;
        NNC_TotalAmountInclVat : Decimal;
        NNC_TotalInvDiscAmount : Decimal;
        NNC_TotalAmount : Decimal;
        [InDataSet]
        LogInteractionEnable : Boolean;
        CompanyInfoPhoneNoCptnLbl : Label 'Phone No.';
        CompanyInfoVATRegNoCptnLbl : Label 'VAT Reg. No.';
        CompanyInfoGiroNoCptnLbl : Label 'Giro No.';
        CompanyInfoBankNameCptnLbl : Label 'Bank';
        CompanyInfoBankAccNoCptnLbl : Label 'Account No.';
        No1_SalesCrMemoHeaderCptnLbl : Label 'Credit Memo No.';
        SalesCrMemoHeaderPostDtCptnLbl : Label 'Posting Date';
        DocumentDateLbl : Label 'Document Date';
        CompanyInfoHomePageCaptionLbl : Label 'Home Page';
        CompanyINfoEmailCaptionLbl : Label 'Email';
        HeaderDimCptnLbl : Label 'Header Dimensions';
        UnitPriceCptnLbl : Label 'Unit Price';
        AmountCptnLbl : Label 'Amount';
        PostedReceiptDateCptnLbl : Label 'Posted Return Receipt Date';
        InvDiscAmt_SalesCrMemoLineCptnLbl : Label 'Invoice Discount Amount';
        SubtotalCptnLbl : Label 'Subtotal';
        LineAmtInvDiscAmt_SalesCrMemoLineCptnLbl : Label 'Payment Discount on VAT';
        VATClausesCap : Label 'VAT Clause';
        LineDimCptnLbl : Label 'Line Dimensions';
        VATAmtSpecificationCptnLbl : Label 'VAT Amount Specification';
        VATAmtLineInvDiscBaseAmtCptnLbl : Label 'Invoice Discount Base Amount';
        VATAmtLineLineAmtCptnLbl : Label 'Line Amount';
        VATAmtLineInvoiceDiscAmtCptnLbl : Label 'Invoice Discount Amount';
        ShiptoAddressCptnLbl : Label 'Ship-to Address';
        VATAmtLineVATCptnLbl : Label 'VAT %';
        VATAmtLineVATBaseCptnLbl : Label 'VAT Base';
        VATAmtLineVATAmtCptnLbl : Label 'VAT Amount';
        VATAmtLineVATIdentifierCptnLbl : Label 'VAT Identifier';
        TotalCptnLbl : Label 'Total';
        SalesCrMemoLineDiscCaptionLbl : Label 'Discount %';

    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(6) <> '';
    end;

    local procedure DocumentCaption() : Text[250];
    begin
        IF "Sales Cr.Memo Header"."Prepayment Credit Memo" THEN
          EXIT(Text011);
        EXIT(Text005);
    end;

    procedure InitializeRequest(NewNoOfCopies : Integer;NewShowInternalInfo : Boolean;NewLogInteraction : Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
    end;

    local procedure IsReportInPreviewMode() : Boolean;
    var
        MailManagement : Codeunit "Mail Management";
    begin
        EXIT(CurrReport.PREVIEW OR MailManagement.IsHandlingGetEmailBody);
    end;

    local procedure FormatAddressFields(var SalesCrMemoHeader : Record "Sales Cr.Memo Header");
    begin
        FormatAddr.GetCompanyAddr(SalesCrMemoHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.SalesCrMemoBillTo(CustAddr,SalesCrMemoHeader);
        ShowShippingAddr := FormatAddr.SalesCrMemoShipTo(ShipToAddr,CustAddr,SalesCrMemoHeader);
    end;

    local procedure FormatDocumentFields(SalesCrMemoHeader : Record "Sales Cr.Memo Header");
    begin
        WITH SalesCrMemoHeader DO BEGIN
          FormatDocument.SetTotalLabels("Currency Code",TotalText,TotalInclVATText,TotalExclVATText);
          FormatDocument.SetSalesPerson(SalesPurchPerson,"Salesperson Code",SalesPersonText);

          ReturnOrderNoText := FormatDocument.SetText("Return Order No." <> '',FIELDCAPTION("Return Order No."));
          ReferenceText := FormatDocument.SetText("Your Reference" <> '',FIELDCAPTION("Your Reference"));
          VATNoText := FormatDocument.SetText("VAT Registration No." <> '',FIELDCAPTION("VAT Registration No."));
          AppliedToText :=
            FormatDocument.SetText(
              "Applies-to Doc. No." <> '',FORMAT(STRSUBSTNO(Text003,FORMAT("Applies-to Doc. Type"),"Applies-to Doc. No.")));
        END;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterGetRecordSalesCrMemoHeader(var SalesCrMemoHeader : Record "Sales Cr.Memo Header");
    begin
    end;
}

