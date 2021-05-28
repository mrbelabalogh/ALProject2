page 50107 BookList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;
    CardPageId = BookCard;
    Caption = 'List of Books';


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

                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                }

                field(PageCount; Rec.PageCount)
                {
                    ApplicationArea = All;
                    Caption = 'Page Count';
                }

                field(HoursToRead; Rec.HoursToRead)
                {
                    ApplicationArea = All;
                    Caption = 'Hours to Read';
                }

                field(AuthorName; Rec.AuthorName)
                {
                    ApplicationArea = All;
                    Caption = 'Author name';
                }

                field(AuthorId; Rec.AuthorId)
                {
                    ApplicationArea = All;
                    Caption = 'Author Id';
                }

            }
        }

        area(FactBoxes)
        {
            systempart(MyLinks; Links)
            {
                ApplicationArea = All;
            }

            systempart(MyNotes; Notes)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(AuthorList)
            {
                ApplicationArea = All;
                Caption = 'To Author List';
                RunObject = Page AuthorList;
                RunPageMode = View;
            }
        }

        area(Reporting)
        {
            action(CreateReport)
            {
                ApplicationArea = All;
                Caption = 'Create Report';
                RunObject = Page AuthorList;
                Image = Camera;
            }
        }

        area(Processing)
        {
            action(Process)
            {
                ApplicationArea = All;
                Caption = 'Create Report';
                RunObject = Page AuthorList;
            }
        }
    }
}
