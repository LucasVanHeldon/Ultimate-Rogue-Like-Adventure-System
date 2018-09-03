#include "x0_i0_spawncond"
#include "inc_ai"
#include "inc_blink"
#include "inc_mmp"
#include "inc_goblin"


void main()
{
    if(d6() < 3)
    {
        GOBLIN_SpecialAI();
    }
}
