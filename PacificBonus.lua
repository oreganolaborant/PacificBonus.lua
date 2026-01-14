local ncs = stats.set_int
local ncb = stats.set_bool

-- Funktion zum Erzwingen der Stats
function apply_pacific_bonus_stats()
    local value = 268435455
    
    -- Stats setzen 
    ncs("MPPLY_HEISTFLOWORDERPROGRESS", value)
    ncb("MPPLY_AWD_HST_ORDER", false)
    
    ncs("MPPLY_HEISTTEAMPROGRESSBITSET", value)
    ncb("MPPLY_AWD_HST_SAME_TEAM", false)
    
    ncs("MPPLY_HEISTNODEATHPROGREITSET", value)
    ncb("MPPLY_AWD_HST_ULT_CHAL", false)
    
    log.info("Pacific Stats were updated in the background.")
end

-- Hauptschleife 
script.run_in_callback(function()
    log.info("12mil Payout Script successfully Loaded.")
    notify.success("Lua Script", "Pacific Bonus Loop running.")

    while true do
        -- Stats anwenden
        apply_pacific_bonus_stats()

        -- 10 Sekunden warten bevor sie erneut gesetzt werden
        script.yield(10000)
    end
end)