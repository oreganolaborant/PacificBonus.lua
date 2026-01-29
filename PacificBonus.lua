local ncs = stats.set_int
local ncb = stats.set_bool

-- Function to force stats
function apply_pacific_bonus_stats()
    local value = 268435455
    
    -- Set Stats 
    ncs("MPPLY_HEISTFLOWORDERPROGRESS", value)
    ncb("MPPLY_AWD_HST_ORDER", false)
    
    ncs("MPPLY_HEISTTEAMPROGRESSBITSET", value)
    ncb("MPPLY_AWD_HST_SAME_TEAM", false)
    
    ncs("MPPLY_HEISTNODEATHPROGREITSET", value)
    ncb("MPPLY_AWD_HST_ULT_CHAL", false)
    
    log.info("Pacific Stats were updated in the background.")
end

-- Main Loop 
script.run_in_callback(function()
    log.info("12mil Payout Script successfully Loaded.")
    notify.success("Lua Script", "Pacific Bonus Loop running.")

    while true do
        -- Apply Stats
        apply_pacific_bonus_stats()

        -- Wait 10 seconds before resetting them
        script.yield(10000)
    end

end)
