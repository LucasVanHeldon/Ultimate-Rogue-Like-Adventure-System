#include "x0_i0_spawncond"
#include "inc_mmp"

void main()
{
    int i;
    int nCalledBy = GetUserDefinedEventNumber();
    // enter desired behaviour here
    switch(nCalledBy)
    {
    case 1002:
        // it should only be hasted on hit with blood drain, but I don't it right now.
        if(!GetHasEffect(EFFECT_TYPE_HASTE))
        {
            effect eH = EffectHaste();
            ApplyEffectToObject(DURATION_TYPE_INSTANT,eH, OBJECT_SELF);
        }
        break;
    }

}
