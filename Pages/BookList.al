page 50101 BookList
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
    }
}
