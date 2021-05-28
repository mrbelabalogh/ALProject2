page 50101 BookshelfHeadline
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;
    CardPageId = BookCard;
    Caption = 'List of Books';

    layout
    {
        area(Content)
        {
            group(HeadLinePart)
            {
                field(FirstHeadline; FirstHeadLine)
                {
                    ApplicationArea = All;
                }

                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                }



            }
        }

        area(FactBoxes)
        {

            systempart(MyLinks; Links)
            {
                ApplicationArea = all;
            }

            systempart(MyNotes; Notes)
            {
                ApplicationArea = all;
            }





        }
    }
    actions
    {
        area(Navigation)
        {
            action(AuthorList)
            {
                ApplicationArea = all;


            }


        }

        area(Reporting)
        {
            action(CreateReport)
            {
                ApplicationArea = all;
                RunObject = Page AuthorList;
                Caption = "Create Report";

            }
        }


    }




}

}