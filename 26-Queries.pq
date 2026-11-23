// UNEXECUTED M SOURCE. Create text parameter WorkbookPath with full local XLSX path.
// Create this function as fxSheet; invoke it once per data sheet below.
(sheetName as text) as table =>
let
    Source = Excel.Workbook(File.Contents(WorkbookPath), null, true),
    Data = Source{[Item=sheetName, Kind="Sheet"]}[Data],
    Headers = Table.PromoteHeaders(Data, [PromoteAllScalars=true])
in
    Headers

// Separate query named FactSales:
let
    Source = fxSheet("FactSales"),
    Typed = Table.TransformColumnTypes(Source, {{"Invoice_Line", type text}, {"Month", type text}, {"Customer", type text}, {"Product", type text}, {"Units", type number}, {"Gross_Sales_EGP", type number}, {"Discount_EGP", type number}, {"COGS_EGP", type number}}, "en-US")
in
    Typed

// Separate query named DimMonth:
let
    Source = fxSheet("DimMonth"),
    Typed = Table.TransformColumnTypes(Source, {{"Month", type text}}, "en-US")
in
    Typed

// Separate query named DimCustomer:
let
    Source = fxSheet("DimCustomer"),
    Typed = Table.TransformColumnTypes(Source, {{"Customer", type text}}, "en-US")
in
    Typed

// Separate query named DimProduct:
let
    Source = fxSheet("DimProduct"),
    Typed = Table.TransformColumnTypes(Source, {{"Product", type text}}, "en-US")
in
    Typed

