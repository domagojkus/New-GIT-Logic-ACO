report 38024080 "ACO Sales Shipment"
{
    // version NAVW111.00.00.24232

    DefaultLayout = RDLC;
    RDLCLayout = './ACO Sales - Shipment.rdlc';
    Caption = 'ACO Sales - Shipment';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Shipment Header";"Sales Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.","Sell-to Customer No.","No. Printed";
            // ReqFilterHeading = 'Posted Sales Shipment';
            column(DocType_SalesHeader;SalesHeaderNoCaptionLbl)
            {
            }
            column(No_SalesShptHeader;"No.")
            {
            }
            column(PageCaption;PageCaptionCap)
            {
            }
            dataitem(CopyLoop;Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number=CONST(1));
                    column(CompanyInfoPicture;CompanyInfo.Picture)
                    {
                    }
                    column(SalesShptCopyText;STRSUBSTNO(Text002,CopyText))
                    {
                    }
                    column(ShipToAddr1;ShipToAddr[1])
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(ShipToAddr2;ShipToAddr[2])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(ShipToAddr3;ShipToAddr[3])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(ShipToAddr4;ShipToAddr[4])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(ShipToAddr5;ShipToAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(ShipToAddr6;ShipToAddr[6])
                    {
                    }
                    column(CompanyInfoHomePage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoFaxNo;CompanyInfo."Fax No.")
                    {
                    }
                    column(CompanyInfoVATRegtnNo;CompanyInfo."VAT Registration No.")
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
                    column(SelltoCustNo_SalesShptHeader;"Sales Shipment Header"."Sell-to Customer No.")
                    {
                    }
                    column(DocDate_SalesShptHeader;FORMAT("Sales Shipment Header"."Document Date",0,4))
                    {
                    }
                    column(SalesPersonText;SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YourRef_SalesShptHeader;"Sales Shipment Header"."Your Reference")
                    {
                    }
                    column(ShipToAddr7;ShipToAddr[7])
                    {
                    }
                    column(ShipToAddr8;ShipToAddr[8])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(ShptDate_SalesShptHeader;FORMAT("Sales Shipment Header"."Shipment Date"))
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    column(ItemTrackingAppendixCaption;ItemTrackingAppendixCaptionLbl)
                    {
                    }
                    column(PhoneNoCaption;PhoneNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption;VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption;GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption;BankNameCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption;BankAccNoCaptionLbl)
                    {
                    }
                    column(ShipmentNoCaption;ShipmentNoCaptionLbl)
                    {
                    }
                    column(ShipmentDateCaption;ShipmentDateCaptionLbl)
                    {
                    }
                    column(HomePageCaption;HomePageCaptionLbl)
                    {
                    }
                    column(EmailCaption;EmailCaptionLbl)
                    {
                    }
                    column(DocumentDateCaption;DocumentDateCaptionLbl)
                    {
                    }
                    column(SelltoCustNo_SalesShptHeaderCaption;"Sales Shipment Header".FIELDCAPTION("Sell-to Customer No."))
                    {
                    }
                    column(OrderNoCaption_SalesShptHeader;'Our Document No.')
                    {
                    }
                    column(OrderNo_SalesShptHeader;"Sales Shipment Header"."Order No.")
                    {
                    }
                    column(ExternalDocumentNoCaption_SalesShptHeader;'Purchase Order No.')
                    {
                    }
                    column(ExternalDocumentNo_SalesShptHeader;"Sales Shipment Header"."External Document No.")
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
                    dataitem(DimensionLoop1;Integer)
                    {
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=FILTER(1..));
                        column(DimText;DimText)
                        {
                        }
                        column(HeaderDimensionsCaption;HeaderDimensionsCaptionLbl)
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
                                DimText := STRSUBSTNO('%1 - %2',DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code")
                              ELSE
                                DimText :=
                                  STRSUBSTNO(
                                    '%1; %2 - %3',DimText,
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
                    dataitem("Sales Shipment Line";"Sales Shipment Line")
                    {
                        DataItemLink = "Document No."=FIELD("No.");
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING("Document No.","Line No.");
                        column(Description_SalesShptLine;Description)
                        {
                        }
                        column(ShowInternalInfo;ShowInternalInfo)
                        {
                        }
                        column(ShowCorrectionLines;ShowCorrectionLines)
                        {
                        }
                        column(Type_SalesShptLine;FORMAT(Type,0,2))
                        {
                        }
                        column(AsmHeaderExists;AsmHeaderExists)
                        {
                        }
                        column(DocumentNo_SalesShptLine;"Document No.")
                        {
                        }
                        column(LinNo;LinNo)
                        {
                        }
                        column(Qty_SalesShptLine;Quantity)
                        {
                        }
                        column(UOM_SalesShptLine;"Unit of Measure")
                        {
                        }
                        column(No_SalesShptLine;"No.")
                        {
                        }
                        column(LineNo_SalesShptLine;"Line No.")
                        {
                        }
                        column(Description_SalesShptLineCaption;FIELDCAPTION(Description))
                        {
                        }
                        column(Qty_SalesShptLineCaption;FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_SalesShptLineCaption;FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(No_SalesShptLineCaption;FIELDCAPTION("No."))
                        {
                        }
                        dataitem(DimensionLoop2;Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number=FILTER(1..));
                            column(DimText1;DimText)
                            {
                            }
                            column(LineDimensionsCaption;LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                  IF NOT DimSetEntry2.FINDSET THEN
                                    CurrReport.BREAK;
                                END ELSE
                                  IF NOT Continue THEN
                                    CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                  OldDimText := DimText;
                                  IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 - %2',DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code")
                                  ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1; %2 - %3',DimText,
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
                            end;
                        }
                        dataitem(DisplayAsmInfo;Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(PostedAsmLineItemNo;BlanksForIndent + PostedAsmLine."No.")
                            {
                            }
                            column(PostedAsmLineDescription;BlanksForIndent + PostedAsmLine.Description)
                            {
                            }
                            column(PostedAsmLineQuantity;PostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0:5;
                            }
                            column(PostedAsmLineUOMCode;GetUnitOfMeasureDescr(PostedAsmLine."Unit of Measure Code"))
                            {
                                // DecimalPlaces = 0:5;
                            }

                            trigger OnAfterGetRecord();
                            var
                                ItemTranslation : Record 30;
                            begin
                                IF Number = 1 THEN
                                  PostedAsmLine.FINDSET
                                ELSE
                                  PostedAsmLine.NEXT;

                                IF ItemTranslation.GET(PostedAsmLine."No.",
                                     PostedAsmLine."Variant Code",
                                     "Sales Shipment Header"."Language Code")
                                THEN
                                  PostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT DisplayAssemblyInformation THEN
                                  CurrReport.BREAK;
                                IF NOT AsmHeaderExists THEN
                                  CurrReport.BREAK;

                                PostedAsmLine.SETRANGE("Document No.",PostedAsmHeader."No.");
                                SETRANGE(Number,1,PostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            LinNo := "Line No.";
                            IF NOT ShowCorrectionLines AND Correction THEN
                              CurrReport.SKIP;

                            if "Sales Shipment Line".Quantity = 0 then
                              CurrReport.Skip;
  
                            DimSetEntry2.SETRANGE("Dimension Set ID","Dimension Set ID");
                            IF DisplayAssemblyInformation THEN
                              AsmHeaderExists := AsmToShipmentExists(PostedAsmHeader);
                        end;

                        trigger OnPostDataItem();
                        begin
                            IF ShowLotSN THEN BEGIN
                              ItemTrackingDocMgt.SetRetrieveAsmItemTracking(TRUE);
                              TrackingSpecCount :=
                                ItemTrackingDocMgt.RetrieveDocumentItemTracking(TrackingSpecBuffer,
                                  "Sales Shipment Header"."No.",DATABASE::"Sales Shipment Header",0);
                              ItemTrackingDocMgt.SetRetrieveAsmItemTracking(FALSE);
                            END;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) DO
                              MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                              CurrReport.BREAK;
                            SETRANGE("Line No.",0,"Line No.");
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
                        column(BilltoCustNo_SalesShptHeader;"Sales Shipment Header"."Bill-to Customer No.")
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
                        column(BilltoAddressCaption;BilltoAddressCaptionLbl)
                        {
                        }
                        column(BilltoCustNo_SalesShptHeaderCaption;"Sales Shipment Header".FIELDCAPTION("Bill-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowCustAddr THEN
                              CurrReport.BREAK;
                        end;
                    }
                    dataitem(ItemTrackingLine;Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(TrackingSpecBufferNo;TrackingSpecBuffer."Item No.")
                        {
                        }
                        column(TrackingSpecBufferDesc;TrackingSpecBuffer.Description)
                        {
                        }
                        column(TrackingSpecBufferLotNo;TrackingSpecBuffer."Lot No.")
                        {
                        }
                        column(TrackingSpecBufferSerNo;TrackingSpecBuffer."Serial No.")
                        {
                        }
                        column(TrackingSpecBufferQty;TrackingSpecBuffer."Quantity (Base)")
                        {
                        }
                        column(ShowTotal;ShowTotal)
                        {
                        }
                        column(ShowGroup;ShowGroup)
                        {
                        }
                        column(QuantityCaption;QuantityCaptionLbl)
                        {
                        }
                        column(SerialNoCaption;SerialNoCaptionLbl)
                        {
                        }
                        column(LotNoCaption;LotNoCaptionLbl)
                        {
                        }
                        column(DescriptionCaption;DescriptionCaptionLbl)
                        {
                        }
                        column(NoCaption;NoCaptionLbl)
                        {
                        }
                        dataitem(TotalItemTracking;Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number=CONST(1));
                            column(Quantity1;TotalQty)
                            {
                            }
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                              TrackingSpecBuffer.FINDSET
                            ELSE
                              TrackingSpecBuffer.NEXT;

                            IF NOT ShowCorrectionLines AND TrackingSpecBuffer.Correction THEN
                              CurrReport.SKIP;
                            IF TrackingSpecBuffer.Correction THEN
                              TrackingSpecBuffer."Quantity (Base)" := -TrackingSpecBuffer."Quantity (Base)";

                            ShowTotal := FALSE;
                            IF ItemTrackingAppendix.IsStartNewGroup(TrackingSpecBuffer) THEN
                              ShowTotal := TRUE;

                            ShowGroup := FALSE;
                            IF (TrackingSpecBuffer."Source Ref. No." <> OldRefNo) OR
                               (TrackingSpecBuffer."Item No." <> OldNo)
                            THEN BEGIN
                              OldRefNo := TrackingSpecBuffer."Source Ref. No.";
                              OldNo := TrackingSpecBuffer."Item No.";
                              TotalQty := 0;
                            END ELSE
                              ShowGroup := TRUE;
                            TotalQty += TrackingSpecBuffer."Quantity (Base)";
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF TrackingSpecCount = 0 THEN
                              CurrReport.BREAK;
                            SETRANGE(Number,1,TrackingSpecCount);
                            TrackingSpecBuffer.SETCURRENTKEY("Source ID","Source Type","Source Subtype","Source Batch Name",
                              "Source Prod. Order Line","Source Ref. No.");
                        end;
                    }

                    trigger OnPreDataItem();
                    begin
                        // Item Tracking:
                        IF ShowLotSN THEN BEGIN
                          TrackingSpecCount := 0;
                          OldRefNo := 0;
                          ShowGroup := FALSE;
                        END;
                    end;
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number > 1 THEN BEGIN
                      CopyText := FormatDocument.GetCOPYText;
                      OutputNo += 1;
                    END;
                    TotalQty := 0;           // Item Tracking
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT IsReportInPreviewMode THEN
                      CODEUNIT.RUN(CODEUNIT::"Sales Shpt.-Printed","Sales Shipment Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := 1 + ABS(NoOfCopies);
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                FormatAddressFields("Sales Shipment Header");
                FormatDocumentFields("Sales Shipment Header");

                DimSetEntry1.SETRANGE("Dimension Set ID","Dimension Set ID");

                IF LogInteraction THEN
                  IF NOT IsReportInPreviewMode THEN
                    SegManagement.LogDocument(
                      5,"No.",0,0,DATABASE::Customer,"Sell-to Customer No.","Salesperson Code",
                      "Campaign No.","Posting Description",'');
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
                        ApplicationArea = Advanced;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo;ShowInternalInfo)
                    {
                        ApplicationArea = Advanced;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if the document shows internal information.';
                    }
                    field(LogInteraction;LogInteraction)
                    {
                        ApplicationArea = Advanced;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies if you want to record the reports that you print as interactions.';
                    }
                    field("Show Correction Lines";ShowCorrectionLines)
                    {
                        ApplicationArea = Advanced;
                        Caption = 'Show Correction Lines';
                        ToolTip = 'Specifies if the correction lines of an undoing of quantity posting will be shown on the report.';
                    }
                    field(ShowLotSN;ShowLotSN)
                    {
                        ApplicationArea = Advanced;
                        Caption = 'Show Serial/Lot Number Appendix';
                        ToolTip = 'Specifies if you want to print an appendix to the sales shipment report showing the lot and serial numbers in the shipment.';
                    }
                    field(DisplayAsmInfo;DisplayAssemblyInformation)
                    {
                        ApplicationArea = Assembly;
                        Caption = 'Show Assembly Components';
                        ToolTip = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold.';
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
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        CompanyInfo.GET;
        SalesSetup.GET;
        CompanyInfo.CALCFIELDS(Picture);
        FormatDocument.SetLogoPosition(SalesSetup."Logo Position on Documents",CompanyInfo1,CompanyInfo2,CompanyInfo3);
    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
          InitLogInteraction;
        AsmHeaderExists := FALSE;
    end;

    var
        Text002 : TextConst Comment='%1 = Document No.',ENU='Sales - Shipment %1';
        SalesPurchPerson : Record 13;
        CompanyInfo : Record 79;
        CompanyInfo1 : Record 79;
        CompanyInfo2 : Record 79;
        CompanyInfo3 : Record 79;
        SalesSetup : Record 311;
        DimSetEntry1 : Record 480;
        DimSetEntry2 : Record 480;
        Language : Record 8;
        TrackingSpecBuffer : Record 336 temporary;
        PostedAsmHeader : Record 910;
        PostedAsmLine : Record 911;
        RespCenter : Record 5714;
        ItemTrackingAppendix : Report 6521;
        FormatAddr : Codeunit 365;
        FormatDocument : Codeunit 368;
        SegManagement : Codeunit 5051;
        ItemTrackingDocMgt : Codeunit 6503;
        CustAddr : array [8] of Text[50];
        ShipToAddr : array [8] of Text[50];
        CompanyAddr : array [8] of Text[50];
        SalesPersonText : Text[20];
        ReferenceText : Text[80];
        MoreLines : Boolean;
        NoOfCopies : Integer;
        OutputNo : Integer;
        NoOfLoops : Integer;
        TrackingSpecCount : Integer;
        OldRefNo : Integer;
        OldNo : Code[20];
        CopyText : Text[30];
        ShowCustAddr : Boolean;
        DimText : Text[120];
        OldDimText : Text[75];
        ShowInternalInfo : Boolean;
        Continue : Boolean;
        LogInteraction : Boolean;
        ShowCorrectionLines : Boolean;
        ShowLotSN : Boolean;
        ShowTotal : Boolean;
        ShowGroup : Boolean;
        TotalQty : Decimal;
        [InDataSet]
        LogInteractionEnable : Boolean;
        DisplayAssemblyInformation : Boolean;
        AsmHeaderExists : Boolean;
        LinNo : Integer;
        ItemTrackingAppendixCaptionLbl : Label 'Item Tracking - Appendix';
        PhoneNoCaptionLbl : Label 'Phone No.';
        VATRegNoCaptionLbl : Label 'VAT Reg. No.';
        GiroNoCaptionLbl : Label 'Giro No.';
        BankNameCaptionLbl : Label 'Bank';
        BankAccNoCaptionLbl : Label 'Account No.';
        ShipmentNoCaptionLbl : Label 'Shipment No.';
        ShipmentDateCaptionLbl : Label 'Shipment Date';
        HomePageCaptionLbl : Label 'Home Page';
        EmailCaptionLbl : Label 'Email';
        DocumentDateCaptionLbl : Label 'Document Date';
        HeaderDimensionsCaptionLbl : Label 'Header Dimensions';
        LineDimensionsCaptionLbl : Label 'Line Dimensions';
        BilltoAddressCaptionLbl : Label 'Bill-to Address';
        QuantityCaptionLbl : Label 'Quantity';
        SerialNoCaptionLbl : Label 'Serial No.';
        LotNoCaptionLbl : Label 'Lot No.';
        DescriptionCaptionLbl : Label 'Description';
        NoCaptionLbl : Label 'No.';
        PageCaptionCap : Label 'Page %1 of %2';
        SalesHeaderNoCaptionLbl : Label 'Sales Shipment';
        SupplierCaption : Label 'Supplier:';
        CustomerCaption : Label 'Customer:';

    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(5) <> '';
    end;

    procedure InitializeRequest(NewNoOfCopies : Integer;NewShowInternalInfo : Boolean;NewLogInteraction : Boolean;NewShowCorrectionLines : Boolean;NewShowLotSN : Boolean;DisplayAsmInfo : Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        ShowCorrectionLines := NewShowCorrectionLines;
        ShowLotSN := NewShowLotSN;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure IsReportInPreviewMode() : Boolean;
    var
        MailManagement : Codeunit "Mail Management";
    begin
        EXIT(CurrReport.PREVIEW OR MailManagement.IsHandlingGetEmailBody);
    end;

    local procedure FormatAddressFields(SalesShipmentHeader : Record "Sales Shipment Header");
    begin
        FormatAddr.GetCompanyAddr(SalesShipmentHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.SalesShptShipTo(ShipToAddr,SalesShipmentHeader);
        ShowCustAddr := FormatAddr.SalesShptBillTo(CustAddr,ShipToAddr,SalesShipmentHeader);
    end;

    local procedure FormatDocumentFields(SalesShipmentHeader : Record "Sales Shipment Header");
    begin
        WITH SalesShipmentHeader DO BEGIN
          FormatDocument.SetSalesPerson(SalesPurchPerson,"Salesperson Code",SalesPersonText);
          ReferenceText := FormatDocument.SetText("Your Reference" <> '',FIELDCAPTION("Your Reference"));
        END;
    end;

    local procedure GetUnitOfMeasureDescr(UOMCode : Code[10]) : Text[10];
    var
        UnitOfMeasure : Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
          EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent() : Text[10];
    begin
        EXIT(PADSTR('',2,' '));
    end;
}

