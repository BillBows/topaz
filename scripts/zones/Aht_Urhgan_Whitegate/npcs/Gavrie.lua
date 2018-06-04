-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Gavrie
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/shop");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    player:showText(npc,GAVRIE_SHOP_DIALOG);

    local stock =
    {
        0x1036,2595,    -- Eye Drops
     0x1034,316,        -- Antidote
     0x1037,800,        -- Echo Drops
     0x1010,910,        -- Potion
     0x1020,4832,        -- Ether
     0x103B,3360,        -- Remedy
     0x119D,12,            -- Distilled Water
     0x492B,50,            -- Automaton Oil
     0x492C,250,        -- Automaton Oil +1
     0x492D,500,        -- Automaton Oil +2
     0x4AF1,1000}        -- Automaton Oil +3

    dsp.shop.general(player, stock);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

