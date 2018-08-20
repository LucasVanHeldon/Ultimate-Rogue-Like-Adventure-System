void GenerateBelt()
{
    string sBelt = "lutes_belt";
    object oBelt = CreateItemOnObject(sBelt,oObject,1);
    SetIdentified(oBelt,bIdentified);
    struct sEnchantments Enchants;

    object oldItem=Enchants.oItem;
    oBelt = OBJECT_INVALID;
    oBelt = CopyItemAndModify(oldItem, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(255));

    if(GetIsObjectValid(oBelt)) DestroyObject(oldItem);
    else oBelt = oldItem;

    Enchants.oItem = oBelt;
    Enchants.sName = "Enchanted Belt";
    EnchantItem(Enchants);
}

void GenerateBoots()
{
    string sItem = "lutes_boots";
    object oItem = CreateItemOnObject(sItem,oObject,1);
    SetIdentified(oItem,bIdentified);

    struct sEnchantments Enchants;

    object oldItem=oItem;
    oItem = OBJECT_INVALID;
    oItem= CopyItemAndModify(oldItem, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(255));
    if(GetIsObjectValid(oItem)) DestroyObject(oldItem);
    else oItem = oldItem;

    Enchants.oItem = oItem;
    Enchants.sName = "Enchanted Boots";

    EnchantItem(Enchants);

}

void GenerateBracer()
{
    string sItem = "lutes_bracer";
    object oItem = CreateItemOnObject(sItem,oObject,1);
    SetIdentified(oItem,bIdentified);
    struct sEnchantments Enchants;


    object oldItem=oItem;
    oItem = OBJECT_INVALID;
    oItem= CopyItemAndModify(oldItem, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(255));
    if(GetIsObjectValid(oItem)) DestroyObject(oldItem);
    else oItem = oldItem;
    Enchants.oItem = oItem;
    Enchants.sName = "Enchanted Bracer";
    EnchantItem(Enchants);

}

void GenerateGauntlet()
{
    string sItem = "lutes_gauntlet";
    object oItem = CreateItemOnObject(sItem,oObject,1);
    SetIdentified(oItem,bIdentified);
    struct sEnchantments Enchants;

    object oldItem=oItem;
    oItem = OBJECT_INVALID;
    oItem= CopyItemAndModify(oldItem, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(255));
    if(GetIsObjectValid(oItem)) DestroyObject(oldItem);
    else oItem = oldItem;

    Enchants.oItem = oItem;
    Enchants.sName = "Enchanted Gauntlet";
    EnchantItem(Enchants);

}

void GenerateCloak()
{
    string sItem = "lutes_cloak";
    object oItem = CreateItemOnObject(sItem,oObject,1);
    SetIdentified(oItem,bIdentified);
    struct sEnchantments Enchants;


    object oldItem=oItem;
    oItem = OBJECT_INVALID;
    oItem= CopyItemAndModify(oldItem, ITEM_APPR_TYPE_SIMPLE_MODEL,0,Random(255));
    if(GetIsObjectValid(oItem)) DestroyObject(oldItem);
    else oItem = oldItem;
    Enchants.oItem = oItem;
    Enchants.sName = "Enchanted Cloak";
    EnchantItem(Enchants);



}



void CreateDivineScrolls(int n)
{
    int i;
    for(i = 0; i < n; i++) CreateDivineScroll(oObject,oObject);
}

void CreateArcaneScrolls(int n)
{
    int i;
    for(i = 0; i < n; i++) CreateArcaneScroll(oObject,oObject);
}

void CreatePotions(int n)
{
    int i;
    for(i = 0; i < n; i++) CreateStdPotion();
}

void PlaceBoots(int n)
{
    int i;
    for(i = 0; i < n; i++) GenerateBoots();
}

void PlaceBracers(int n)
{
    int i;
    for(i = 0; i < n; i++) GenerateBracer();
}

void PlaceGauntlets(int n)
{
    int i;
    for(i = 0; i < n; i++) GenerateGauntlet();
}

void PlaceCloaks(int n)
{
    int i;
    for(i = 0; i < n; i++) GenerateCloak();
}

void PlaceBelt(int n)
{
    int i;
    for(i = 0; i < n; i++) GenerateBelt();
}

