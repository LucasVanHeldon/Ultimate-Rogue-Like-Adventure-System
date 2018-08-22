#include "inc_mmp"

void main()
{
    object oC = GetFirstObjectInShape(SHAPE_SPHERE,30.0,GetLocation(OBJECT_SELF));
    int ray = 0;
    while(GetIsObjectValid(oC))
    {
        if(GetIsEnemy(oC) && GetCurrentHitPoints(oC) > 0)
        {
            switch(ray)
            {
            case 0: MMP_RayOfFrost(oC); ray++; break;
            case 1: MMP_RayOfEnfeeblement(oC); ray++; break;
            case 2: MMP_NegativeEnergyRay(oC); ray++; break;
            case 3: MMP_IceDagger(oC); ray++; break;
            }
        }
        oC = GetNextObjectInShape(SHAPE_SPHERE,30.0,GetLocation(OBJECT_SELF));
        if(ray > 3) break;
    }
}
