-----------------------------------
-- Area: Port San d'Oria
--  NPC: Milva
-- only sells when San d'Oria has control of Sarutabaruta
-----------------------------------
package.loaded["scripts/zones/Port_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_San_dOria/TextIDs");
require("scripts/globals/conquest");
require("scripts/globals/quests");
require("scripts/globals/shop");
-----------------------------------

function onTrade(player,npc,trade)
    -- "Flyers for Regine" conditional script
    local FlyerForRegine = player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE);

    if (FlyerForRegine == 1) then
        local count = trade:getItemCount();
        local MagicFlyer = trade:hasItemQty(532,1);
        if (MagicFlyer == true and count == 1) then
            player:messageSpecial(FLYER_REFUSED);
        end
    end
end;

function onTrigger(player,npc)
    local RegionOwner = GetRegionOwner(dsp.region.SARUTABARUTA);

    if (RegionOwner ~= dsp.nation.SANDORIA) then
        player:showText(npc,MILVA_CLOSED_DIALOG);
    else
        player:showText(npc,MILVA_OPEN_DIALOG);

        local stock =
        {
            4444,  22, -- Rarab Tail
            689,   33, -- Lauan Log
            619,   43, -- Popoto
            4392,  29, -- Saruta Orange
            635,   18  -- Windurstian Tea Leaves
        }
        dsp.shop.general(player, stock, SANDORIA);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
