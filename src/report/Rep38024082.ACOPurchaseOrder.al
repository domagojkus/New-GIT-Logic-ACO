report 38024082 "ACO Purchase Order"
{
    // version NAVW111.00.00.24232

    DefaultLayout = RDLC;
    RDLCLayout = './ACO Purchase Order.rdlc';
    CaptionML = ENU='ACO Purchase Order';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Purchase Header";"Purchase Header")
        {
            DataItemTableView = SORTING("Document Type","No.")
                                WHERE("Document Type"=CONST(Order));
            RequestFilterFields = "No.","Buy-from Vendor No.","No. Printed";
            RequestFilterHeadingML = ENU='Purchase Order',
                                     ESP='Pedido compra';
            column(DocType_PurchHeader;"Document Type")
            {
            }
            column(No_PurchHeader;"No.")
            {
            }
            column(AmountCaption;AmountCaptionLbl)
            {
            }
            column(PurchLineInvDiscAmtCaption;PurchLineInvDiscAmtCaptionLbl)
            {
            }
            column(SubtotalCaption;SubtotalCaptionLbl)
            {
            }
            column(TotalCaption;TotalCaptionLbl)
            {
            }
            column(PaymentTermsDescCaption;PaymentTermsDescCaptionLbl)
            {
            }
            column(ShipmentMethodDescCaption;ShipmentMethodDescCaptionLbl)
            {
            }
            column(HomePageCaption;HomePageCaptionLbl)
            {
            }
            column(EmailIDCaption;EmailIDCaptionLbl)
            {
            }
            column(SupplierCaption;VendorCaption)
            {
            }
            column(CustomerCaption;CustomerCaption)
            {
            }
            column(ContactCaption;ContactCaption)
            {
            }
            column(PageCaption;PageCaptionLbl)
            {
            }
            column(DocumentDateCaption;DocumentDateCaptionLbl)
            {
            }
            dataitem(CopyLoop;Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number=CONST(1));
                    column(ReportTitleCopyText;STRSUBSTNO(Text004,CopyText))
                    {
                    }
                    column(CurrRepPageNo;STRSUBSTNO(Text005))
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(CompanyInfoFaxNo;CompanyInfo."Fax No.")
                    {
                    }
                    column(CompanyInfoVATRegNo;CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoBankName;CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccNo;CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompanyInfoPicture;CompanyInfo.Picture)
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
                    column(BuyFromAddr1;BuyFromAddr[1])
                    {
                    }
                    column(BuyFromAddr2;BuyFromAddr[2])
                    {
                    }
                    column(BuyFromAddr3;BuyFromAddr[3])
                    {
                    }
                    column(BuyFromAddr4;BuyFromAddr[4])
                    {
                    }
                    column(BuyFromAddr5;BuyFromAddr[5])
                    {
                    }
                    column(BuyFromAddr6;BuyFromAddr[6])
                    {
                    }
                    column(BuyFromAddr7;BuyFromAddr[7])
                    {
                    }
                    column(BuyFromAddr8;BuyFromAddr[8])
                    {
                    }
                    column(DocDate_PurchHeader;FORMAT("Purchase Header"."Document Date",0,4))
                    {
                    }
                    column(VATRegNo_PurchHeader;"Purchase Header"."VAT Registration No.")
                    {
                    }
                    column(YourRef_PurchHeader;"Purchase Header"."Your Reference")
                    {
                    }
                    column(BuyFrmVendNo_PurchHeader;"Purchase Header"."Buy-from Vendor No.")
                    {
                    }
                    column(PricesInclVAT_PurchHeader;"Purchase Header"."Prices Including VAT")
                    {
                    }
                    column(BuyFrmVendNo_PurchHeaderCaption;"Purchase Header".FIELDCAPTION("Buy-from Vendor No."))
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(PaymentTermsDesc;PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDesc;ShipmentMethod.Description)
                    {
                    }
                    column(TotalText;TotalText)
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    dataitem("Purchase Line";"Purchase Line")
                    {
                        DataItemLink = "Document Type"=FIELD("Document Type"),
                                       "Document No."=FIELD("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING("Document Type","Document No.","Line No.");

                        trigger OnPreDataItem();
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop;Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(LineAmt_PurchLine;PurchLine."Line Amount")
                        {
                        }
                        column(LineNo_PurchLine;"Purchase Line"."Line No.")
                        {
                        }
                        column(Type_PurchLine;FORMAT("Purchase Line".Type,0,2))
                        {
                        }
                        column(No_PurchLine;"Purchase Line"."No.")
                        {
                        }
                        column(Desc_PurchLine;"Purchase Line".Description)
                        {
                        }
                        column(Qty_PurchLine;"Purchase Line".Quantity)
                        {
                        }
                        column(UOM_PurchLine;"Purchase Line"."Unit of Measure")
                        {
                        }
                        column(DirUnitCost_PurchLine;"Purchase Line"."Direct Unit Cost")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDisc_PurchLine;"Purchase Line"."Line Discount %")
                        {
                        }
                        column(LineAmt2_PurchLine;"Purchase Line"."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscAmt_PurchLine;-PurchLine."Inv. Discount Amount")
                        {
                        }
                        column(TotalInclVAT;PurchLine."Line Amount" - PurchLine."Inv. Discount Amount")
                        {
                        }
                        column(TotalInclVATText;TotalInclVATText)
                        {
                        }
                        column(VATAmountText;VATAmountLine.VATAmountText)
                        {
                        }
                        column(VATAmount;VATAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalExclVATText;TotalExclVATText)
                        {
                        }
                        column(VATDiscountAmount;-VATDiscountAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseAmount;VATBaseAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountInclVAT;TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal;TotalSubTotal)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvoiceDiscountAmount;TotalInvoiceDiscountAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmount;TotalAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(DirectUniCostCaption;DirectUniCostCaptionLbl)
                        {
                        }
                        column(PurchLineLineDiscCaption;PurchLineLineDiscCaptionLbl)
                        {
                        }
                        column(No_PurchLineCaption;"Purchase Line".FIELDCAPTION("No."))
                        {
                        }
                        column(Desc_PurchLineCaption;"Purchase Line".FIELDCAPTION(Description))
                        {
                        }
                        column(Qty_PurchLineCaption;"Purchase Line".FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_PurchLineCaption;"Purchase Line".FIELDCAPTION("Unit of Measure"))
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                              PurchLine.FIND('-')
                            ELSE
                              PurchLine.NEXT;
                            "Purchase Line" := PurchLine;

                            IF NOT "Purchase Header"."Prices Including VAT" AND
                               (PurchLine."VAT Calculation Type" = PurchLine."VAT Calculation Type"::"Full VAT")
                            THEN
                              PurchLine."Line Amount" := 0;

                            IF ("Purchase Line"."Cross-Reference No." <> '') AND (NOT FALSE)THEN
                              "Purchase Line"."No." := "Purchase Line"."Cross-Reference No.";
                            IF (PurchLine.Type = PurchLine.Type::"G/L Account") AND (NOT FALSE) THEN
                              "Purchase Line"."No." := '';
                            AllowInvDisctxt := FORMAT("Purchase Line"."Allow Invoice Disc.");
                            TotalSubTotal += "Purchase Line"."Line Amount";
                            TotalInvoiceDiscountAmount -= "Purchase Line"."Inv. Discount Amount";
                            TotalAmount += "Purchase Line".Amount;
                        end;

                        trigger OnPostDataItem();
                        begin
                            PurchLine.DELETEALL;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := PurchLine.FIND('+');
                            WHILE MoreLines AND (PurchLine.Description = '') AND (PurchLine."Description 2" = '') AND
                                  (PurchLine."No." = '') AND (PurchLine.Quantity = 0) AND
                                  (PurchLine.Amount = 0)
                            DO
                              MoreLines := PurchLine.NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                              CurrReport.BREAK;
                            PurchLine.SETRANGE("Line No.",0,PurchLine."Line No.");
                            SETRANGE(Number,1,PurchLine.COUNT);
                        end;
                    }
                    dataitem(Total3;Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                        column(SellToCustNo_PurchHeader;"Purchase Header"."Sell-to Customer No.")
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
                        column(SellToCustNo_PurchHeaderCaption;"Purchase Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF ("Purchase Header"."Sell-to Customer No." = '') AND (ShipToAddr[1] = '') THEN
                              CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                var
                    TempPurchLine : Record "Purchase Line" temporary;
                begin
                    CLEAR(PurchLine);
                    CLEAR(PurchPost);
                    PurchLine.DELETEALL;
                    VATAmountLine.DELETEALL;
                    PurchPost.GetPurchLines("Purchase Header",PurchLine,0);
                    PurchLine.CalcVATAmountLines(0,"Purchase Header",PurchLine,VATAmountLine);
                    PurchLine.UpdateVATOnLines(0,"Purchase Header",PurchLine,VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Purchase Header"."Currency Code","Purchase Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    IF Number > 1 THEN
                      CopyText := FormatDocument.GetCOPYText;
                    OutputNo := OutputNo + 1;

                    TotalSubTotal := 0;
                    TotalAmount := 0;
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT IsReportInPreviewMode THEN
                      CODEUNIT.RUN(CODEUNIT::"Purch.Header-Printed","Purchase Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 0;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                if "Language Code" = '' then
                  CurrReport.LANGUAGE := Language.GetLanguageID(GLSetup."Local Language Code")
                else
                  CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                FormatAddressFields("Purchase Header");
                FormatDocumentFields("Purchase Header");
                PricesInclVATtxt := FORMAT("Prices Including VAT");


                IF NOT IsReportInPreviewMode THEN BEGIN
                  IF ArchiveDocument THEN
                    ArchiveManagement.StorePurchDocument("Purchase Header",FALSE);
                END;
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
                    field(NoofCopies;NoOfCopies)
                    {
                        ApplicationArea = Advanced;
                        CaptionML = ENU='No. of Copies',
                                    ESP='Nž copias';
                        ToolTipML = ENU='Specifies how many copies of the document to print.',
                                    ESP='Especifica cuántas copias del documento se van a imprimir.';
                    }
                    field(ArchiveDocument;ArchiveDocument)
                    {
                        ApplicationArea = Advanced;
                        CaptionML = ENU='Archive Document',
                                    ESP='Archivar documento';
                        ToolTipML = ENU='Specifies whether to archive the order.',
                                    ESP='Especifica si debe archivarse el pedido.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            ArchiveDocument := PurchSetup."Archive Quotes and Orders";
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(Picture);
        PurchSetup.GET;
    end;

    var
        Text004 : TextConst Comment='%1 = Document No.',ENU='Order %1',ESP='Pedido %1';
        Text005 : TextConst Comment='%1 = Page No.',ENU='Page';
        GLSetup : Record "General Ledger Setup";
        CompanyInfo : Record "Company Information";
        ShipmentMethod : Record "Shipment Method";
        PaymentTerms : Record "Payment Terms";
        SalesPurchPerson : Record "Salesperson/Purchaser";
        VATAmountLine : Record "VAT Amount Line" temporary;
        PurchLine : Record "Purchase Line" temporary;
        RespCenter : Record "Responsibility Center";
        Language : Record Language;
        PurchSetup : Record "Purchases & Payables Setup";
        FormatAddr : Codeunit "Format Address";
        FormatDocument : Codeunit "Format Document";
        PurchPost : Codeunit "Purch.-Post";
        ArchiveManagement : Codeunit ArchiveManagement;
        VendAddr : array [8] of Text[50];
        ShipToAddr : array [8] of Text[50];
        CompanyAddr : array [8] of Text[50];
        BuyFromAddr : array [8] of Text[50];
        PurchaserText : Text[30];
        VATNoText : Text[80];
        ReferenceText : Text[80];
        TotalText : Text[50];
        TotalInclVATText : Text[50];
        TotalExclVATText : Text[50];
        MoreLines : Boolean;
        NoOfCopies : Integer;
        NoOfLoops : Integer;
        CopyText : Text[30];
        OutputNo : Integer;
        Continue : Boolean;
        ArchiveDocument : Boolean;
        VATAmount : Decimal;
        VATBaseAmount : Decimal;
        VATDiscountAmount : Decimal;
        TotalAmountInclVAT : Decimal;
        VALVATBaseLCY : Decimal;
        VALVATAmountLCY : Decimal;
        VALSpecLCYHeader : Text[80];
        VALExchRate : Text[50];
        Text007 : TextConst ENU='VAT Amount Specification in ',ESP='Especificar importe IVA en ';
        Text008 : TextConst ENU='Local Currency',ESP='Divisa local';
        Text009 : TextConst ENU='Exchange rate: %1/%2',ESP='Tipo cambio: %1/%2';
        PricesInclVATtxt : Text[30];
        AllowInvDisctxt : Text[30];
        [InDataSet]
        ArchiveDocumentEnable : Boolean;
        TotalSubTotal : Decimal;
        TotalAmount : Decimal;
        TotalInvoiceDiscountAmount : Decimal;
        CompanyInfoVATRegNoCaptionLbl : Label 'VAT Registration No.';
        CompanyInfoBankNameCaptionLbl : Label 'Bank';
        CompanyInfoBankAccNoCaptionLbl : Label 'Account No.';
        OrderNoCaptionLbl : TextConst ENU='Order No.',ESP='Nž pedido';
        PageCaptionLbl : TextConst ENU='Page',ESP='Pág.';
        DocumentDateCaptionLbl : Label 'Document Date';
        DirectUniCostCaptionLbl : Label 'Direct Unit Cost';
        PurchLineLineDiscCaptionLbl : Label 'Discount %';
        VendNoCaptionLbl : TextConst ENU='Vendor No.',ESP='Nž proveedor';
        ShiptoAddressCaptionLbl : Label 'Ship-to Address';
        AmountCaptionLbl : Label 'Amount';
        PurchLineInvDiscAmtCaptionLbl : Label 'Invoice Discount Amount';
        SubtotalCaptionLbl : TextConst ENU='Subtotal',ESP='Subtotal';
        TotalCaptionLbl : TextConst ENU='Total',ESP='Total';
        PaymentTermsDescCaptionLbl : Label 'Payment Terms';
        ShipmentMethodDescCaptionLbl : Label 'Shipment Method';
        HomePageCaptionLbl : Label 'Home Page';
        EmailIDCaptionLbl : Label 'Email';
        PrepmtLoopLineNo : Integer;
        NoCaption : Label 'No.';
        DescriptionCaption : Label 'Description';
        QuantityCaption : Label 'Quantity';
        VendorCaption : Label 'Vendor:';
        CustomerCaption : Label 'Customer:';
        ContactCaption : Label 'Contact:';

    procedure InitializeRequest(NewNoOfCopies : Integer;NewShowInternalInfo : Boolean;NewArchiveDocument : Boolean;NewLogInteraction : Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ArchiveDocument := NewArchiveDocument;
    end;

    local procedure IsReportInPreviewMode() : Boolean;
    var
        MailManagement : Codeunit "Mail Management";
    begin
        EXIT(CurrReport.PREVIEW OR MailManagement.IsHandlingGetEmailBody);
    end;

    local procedure FormatAddressFields(var PurchaseHeader : Record "Purchase Header");
    begin
        FormatAddr.GetCompanyAddr(PurchaseHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.PurchHeaderBuyFrom(BuyFromAddr,PurchaseHeader);
        IF PurchaseHeader."Buy-from Vendor No." <> PurchaseHeader."Pay-to Vendor No." THEN
          FormatAddr.PurchHeaderPayTo(VendAddr,PurchaseHeader);
        FormatAddr.PurchHeaderShipTo(ShipToAddr,PurchaseHeader);
    end;

    local procedure FormatDocumentFields(PurchaseHeader : Record "Purchase Header");
    begin
        WITH PurchaseHeader DO BEGIN
          FormatDocument.SetTotalLabels("Currency Code",TotalText,TotalInclVATText,TotalExclVATText);
          FormatDocument.SetPurchaser(SalesPurchPerson,"Purchaser Code",PurchaserText);
          FormatDocument.SetPaymentTerms(PaymentTerms,"Payment Terms Code","Language Code");
          FormatDocument.SetShipmentMethod(ShipmentMethod,"Shipment Method Code","Language Code");

          ReferenceText := FormatDocument.SetText("Your Reference" <> '',FIELDCAPTION("Your Reference"));
          VATNoText := FormatDocument.SetText("VAT Registration No." <> '',FIELDCAPTION("VAT Registration No."));
        END;
    end;
}

