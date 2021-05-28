table 50103 calculation
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;

        }



        field(2; FirstNumber; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(3; SecondNumber; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(4; Result; Integer)
        {
            DataClassification = ToBeClassified;
            Result = Sum(Rec. FirstNumber + Rec. SecondNumber);

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

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}