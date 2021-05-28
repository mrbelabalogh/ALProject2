page 50105 MyRoleCenter
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;
    CardPageId = BookCard;
    Caption = 'List of Books';

    layout
    {
        area(RoleCenter)
        {
            part(HeadLinePart; BookshelfHeadline)
            {


            }

            part(BookStatsPart; RoleCenterBookCardPart)
            {
                ApplicationArea = all;
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



    }




}

profile BookshelfProfile
{
    Description = "This is my first profile!";




}

}