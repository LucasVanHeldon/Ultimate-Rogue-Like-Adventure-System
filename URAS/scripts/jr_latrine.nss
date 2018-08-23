void main()
{
  object oPlayer = GetLastUsedBy ();
  object oChair = OBJECT_SELF;
  object oSitter=GetSittingCreature(oChair);
  if (GetIsPC (oPlayer))
    {
        if (GetIsObjectValid(oChair) && !GetIsObjectValid
            (oSitter))
        {
            AssignCommand (oPlayer, ActionSit (oChair));
        }
    }
  else if(!GetIsObjectValid(oSitter))
  {
    AssignCommand(oPlayer, ActionSit(oChair));
  }
  SpeakString("After doing your business upon the latrine, you feel alot better... relieved.");
}
