table 50101 Author
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(2; Name; Text[150])
        {
            DataClassification = ToBeClassified;

        }

        field(3; NumberOfBooksWritten; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Book Where(AuthorId = field(Id)));

        }
    }

    keys
    {
        key(Key1; Id)
        {
            Clustered = true;
        }
    }


    fieldgroups

    {
        fieldgroup(Dropdown; Id, Name, NumberOfBooksWritten) // What you see when the table is accessed through a dropdown
        {

        }

    }
}