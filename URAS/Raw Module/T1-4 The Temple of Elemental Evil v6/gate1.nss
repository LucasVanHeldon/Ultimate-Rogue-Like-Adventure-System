/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

//Put this OnDeath
void main()
{
    string sItem = "plc_magicwhite";
    object oObject = GetFirstObjectInArea();
    while(oObject != OBJECT_INVALID)
    {
        if(GetResRef(oObject) == sItem)
        {
            DestroyObject(oObject);
        }
        oObject = GetNextObjectInArea();
    }


}
