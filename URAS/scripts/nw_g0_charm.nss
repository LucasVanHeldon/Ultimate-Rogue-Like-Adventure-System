#include "NW_I0_GENERIC"
#include "x0_inc_henai"

#include "hench_i0_ai"


void main()
{
    // TK removed SendForHelp
    //   SendForHelp();
    SetCommandable(TRUE);

    DeleteLocalInt(OBJECT_SELF, "AIIntruder");
    HenchDetermineCombatRound();

    SetCommandable(FALSE);
}
