table 50100 Book
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(2; Title; Text[120])
        {
            DataClassification = ToBeClassified;

        }

        field(3; PageCount; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if Rec.PageCount < 10 then begin
                    Error('The page count must be 10 or greater')
                end;

            end;

        }

        field(4; HoursToRead; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(5; AuthorId; Integer) // AuthorId's type must math Author.Id's type
        {
            DataClassification = ToBeClassified;
            TableRelation = Author; // Sets up the table relation
        }

        field(6; AuthorName; Text[150])
        {
            FieldClass = FlowField; // Means that the field is calculated and not stored in the physical table
            // select Author.Name from Author where Author.Id = Book.AuthorId

            CalcFormula = lookup(Author.Name where(Id = field(AuthorId)));
            TableRelation = Author;
            Editable = false;
        }

        field(7; HardCover; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(8; NumOfHardcoverBooks; Integer)
        {
            FieldClass = FlowField;
            // Select Count(*) from books where Books.HardCover = true
            CalcFormula = Count(Book where(HardCover = const(true)));
        }

        field(9; NumberOfBooks; Integer)
        {
            FieldClass = FlowField;
            // Select Count(*) from books;
            CalcFormula = Count(Book);
        }

        field(10; SumOfHoursToRead; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum(Book.HoursToRead);
        }

    }

    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        //Message('OnInsert trigger has run');
        Validate(Rec.Title); // Runs the field's OnValidate trigger
        Rec.HoursToRead := (Rec.PageCount * 2) / 60;
    end;

    trigger OnModify()
    begin
        //Message('OnModify trigger has run');
        Rec.HoursToRead := (Rec.PageCount * 2) / 60;
    end;

    trigger OnDelete()
    begin
        Message('OnDelete trigger has run');
    end;

    trigger OnRename()
    begin
        Message('OnRename trigger has run');
    end;


}