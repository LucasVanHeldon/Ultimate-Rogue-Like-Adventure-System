#include "inc_mmp"
#include "inc_psychic"

#include "inc_mmp"
#include "inc_psychic"


void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1003:
         if(d6() < 3)
         {
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
