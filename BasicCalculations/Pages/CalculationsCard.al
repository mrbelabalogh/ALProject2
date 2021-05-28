page 50100 CalculationCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration; // For searching the page
    SourceTable = calculation;
    DelayedInsert = true;   // Az ablak bezárásakor mentsen
    AutoSplitKey = true;    // Automatikus ID generálás

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Id; Integer)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;   // The red * beside the field only visuals
                }

                field(FirstNumber; Rec.FirstNumber)
                {
                    ApplicationArea = All;
                }

                field(SecondNumber; Rec.SecondNumber)
                {
                    ApplicationArea = All;
                }

                field(Result; Rec.Result)
                {
                    ApplicationArea = All;
                }
            }

            group(Details)
            {
                field(PageCount; Rec.PageCount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}