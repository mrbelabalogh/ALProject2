page 50101 CalculationList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = calculation;
    CardPageId = CalculationCard;
    Caption = 'List of calculations';


    layout
    {
        area(content)
        {
            repeater(GroupName)
            {

                field(Id; Rec.Id)
                {
                    ApplicationArea = All;
                }

                field(FirstNumber; Rec.FirstNumber)
                {
                    ApplicationArea = All;
                }

                field(SecondNumber; Rec.SecondNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Page Count';
                }

            }
        }
    }
}