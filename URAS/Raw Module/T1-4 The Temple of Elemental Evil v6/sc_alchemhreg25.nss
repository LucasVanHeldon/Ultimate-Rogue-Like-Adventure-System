#include "nw_i0_tool"

int StartingConditional() {
    // Check if player has a vial of water
    if (CheckPartyForItem(GetPCSpeaker(), "cu_reag204")) return TRUE;
    return FALSE;
}
