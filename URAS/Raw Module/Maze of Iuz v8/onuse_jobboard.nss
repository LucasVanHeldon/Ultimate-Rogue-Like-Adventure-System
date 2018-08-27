void main()
{

    if(GetLocalInt(GetModule(),"bJobContract") == 1)
    {
        FloatingTextStringOnCreature("You already have a job contract open.",GetLastUsedBy(),FALSE);
    }
    else
    {
      BeginConversation("dlg_job_board",GetLastUsedBy());
    }
}
