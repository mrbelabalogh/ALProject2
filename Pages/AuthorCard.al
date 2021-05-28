page 50102 AuthorCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Author;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {

            field(Name; Rec.Name)
            {
                ApplicationArea = All;
            }

        }
    }
}