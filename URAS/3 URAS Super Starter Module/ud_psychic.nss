#include "inc_mmp"
#include "inc_psychic"

void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1011:
        if(d6() < 6) MMPC_CastDispelMagic();
        break;
    default:
        if(d6() < 5)
        {
            if(GetCurrentAction() == ACTION_CASTSPELL) break;
            int nPoints = GetLocalInt(OBJECT_SELF,"nPoints");
            if(nPoints > 0)
            {
                int n = PSYCHIC_SpecialAttack(nPoints);
                SetLocalInt(OBJECT_SELF,"nPoints",nPoints-n);
            }
        }
        break;


    }

}
