// Aberration Template
#include "x0_i0_spawncond"
#include "ai_inc"
#include "inc_aberooze"


void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1003:
        MMPABB_SpecialAttack();
        break;
    }

}

