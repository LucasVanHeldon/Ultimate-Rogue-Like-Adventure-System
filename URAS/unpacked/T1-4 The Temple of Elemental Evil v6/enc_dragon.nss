#include "encounter"
#include "nw_o0_itemmaker"
#include "x0_i0_stringlib"

// Dragon
string sCR2="x0_hatch_evil";
string sCR3="x0_wyrmling_blk,x0_wyrmling_wht,zep_dracotaur,zep_drgbkw_001,zep_drgwtw_001";
string sCR4="x0_wyrmling_grn,x3_wyvern004,zep_drggrw_001,zep_halfdrgn_001,zep_halfdrgn_002";
string sCR5="x0_wyrmling_blu,x0_wyrmling_red,zep_drgblw_001,zep_drgrdw_001";
string sCR6="x3_wyvern003";
string sCR8="x3_wyvern002";
string sCR9="nw_halfdra001,x3_wyvern001,zep_halfdrafnd";
string sCR12="nw_drgwhite001,zep_drgwtad_001,zep_drgwtad_002,zep_lwhill";
string sCR13="drgblack002,nw_drgblack001,zep_drgbkad_001,zep_drgbkad_002";
string sCR14="nw_drgblue001,nw_drggreen001,x3_dragmist001,zep_drgblad_001,zep_drgblad_002,zep_drggrad_001,zep_drggrad_002";
string sCR15="nw_drgred001,zep_drgrdad_001,zep_drgrdad_002,zep_lwtundra";
string sCR16="nw_drgwhite002,zep_drgwto_001";
string sCR17="nw_drgblack002,zep_drgbko_001,zep_lwjungle";
string sCR18="nw_drgblue002,nw_drggreen002,zep_drgblo_001,zep_drggro_001";
string sCR19="nw_drgred002,zep_drgrdo_001";
string sCR20="nw_drgwhite003,zep_drgwtan_001";
string sCR21="nw_drgblack003,zep_cgdrgo_001,zep_drgbkan_001";
string sCR22="nw_drggreen003,x2_dragonshad001,zep_cgdrgc_001,zep_cgdrgc_002,zep_cgdrgs_001,zep_cgdrgs_002,zep_drggran_001,zep_drgrust";
string sCR23="nw_drgblue003,zep_cgdrga_001,zep_cgdrga_002,zep_cgdrge_001,zep_cgdrge_002,zep_drgblan_001";
string sCR24="nw_drgred003,x0_wyrm_evil,zep_cgdrgt_001,zep_cgdrgt_002,zep_drgrdan_001";
string sCR37="x2_dragonpris001";
string sCR38="baal,toh_blackwyrm";
void Fill(int CR,object o = OBJECT_SELF)
{
switch(CR) {
case 2: PopulateVars(o,2,sCR2);break;
case 3: PopulateVars(o,3,sCR3);break;
case 4: PopulateVars(o,4,sCR4);break;
case 5: PopulateVars(o,5,sCR5);break;
case 6: PopulateVars(o,6,sCR6);break;
case 8: PopulateVars(o,8,sCR8);break;
case 9: PopulateVars(o,9,sCR9);break;
case 12: PopulateVars(o,12,sCR12);break;
case 13: PopulateVars(o,13,sCR13);break;
case 14: PopulateVars(o,14,sCR14);break;
case 15: PopulateVars(o,15,sCR15);break;
case 16: PopulateVars(o,16,sCR16);break;
case 17: PopulateVars(o,17,sCR17);break;
case 18: PopulateVars(o,18,sCR18);break;
case 19: PopulateVars(o,19,sCR19);break;
case 20: PopulateVars(o,20,sCR20);break;
case 21: PopulateVars(o,21,sCR21);break;
case 22: PopulateVars(o,22,sCR22);break;
case 23: PopulateVars(o,23,sCR23);break;
case 24: PopulateVars(o,24,sCR24);break;
case 37: PopulateVars(o,37,sCR37);break;
case 38: PopulateVars(o,38,sCR38);break;
}}

void main()
{
    Spawn();
}

