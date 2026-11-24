# Customer and product gross margin

**Status: synthetic build-in-progress case study, not a completed Power BI report.**

Prepared with assistant support for review, testing and adaptation. This is not presented as prior independent work or a real company engagement. No confidential employer data is included.

## Business question
Which products and customers contribute gross profit after discounts?

## Data and method
60 fictional invoice lines. Net sales subtract monetary discounts; gross margin is gross profit divided by net sales, calculated from totals.

## Reference results and limits
Synthetic net sales are EGP 461,535 and gross profit is EGP 108,785, giving 23.57026% gross margin. Gross profit is not net profit. Tax, returns, freight, acquisition cost and overhead allocation are excluded.

All figures describe the designed synthetic scenario, not an actual business outcome. Reference calculations and input checks were performed outside Power BI. They are acceptance targets, not proof that the M, DAX or native model works.

## Included assets
Synthetic input data, data dictionary, model specification, Power Query M source, DAX measure source, report-build steps and expected-results tests. See the supplied build documentation for table grains, relationship directions, measure definitions, tests and exclusions.

## Not yet implemented or verified
A generated PBIX draft is included for testing in Power BI Desktop. This version has not been natively tested. M and DAX have not been executed in Power BI Desktop. Relationships, refresh, visuals, slicers, drill-through and interactions still need native implementation and testing. No RLS, incremental refresh, gateway or built-in time intelligence is claimed.

## Completion criteria
Import and type the source data; validate keys and relationships; create each measure; compare whole-data and filtered results; test interactions; save and reopen PBIX; record the Desktop version and refresh/test results; capture actual report and Model view screenshots. Update this status only after those checks pass.
