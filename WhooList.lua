local CLICKS_TO_HOOT = 3;

local clickCounter = CreateAccumulator();
local clickTimer = nil;

LFGParentFrame.WhoListingTab.Icon:SetTexture([[Interface\ICONS\INV_OwlDragonMount]]);
LFGParentFrame.WhoListingTab:HookScript("OnMouseUp", function()
    local count = clickCounter:Add(1);

    if clickTimer then
        clickTimer:Cancel();
        clickTimer = nil;
    end

    if count == CLICKS_TO_HOOT then
        PlaySoundFile(557971, "SFX");
        clickCounter:Reset();
    else
        clickTimer = C_Timer.NewTimer(0.5, function() clickCounter:Reset(); end);
    end
end);
