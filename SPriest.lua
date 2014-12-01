function SWDeath()
	print("It Worked")
end

-- TrackerFuctions = { }

-- Tracker = CreateFrame("Frame", nil, UIParent)
-- Tracker:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
-- Tracker:SetScript("OnEvent", function (_,e) TrackerFuctions[e]() end)

-- function TrackerFuctions.UNIT_SPELLCAST_SUCCEEDED()
-- 	print("Works!")
-- end


is_casting = false
SampleTrackerFunctions = { }

SampleTracker = CreateFrame("Frame", nil, UIParent)
SampleTracker:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
SampleTracker:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED")
SampleTracker:RegisterEvent("UNIT_SPELLCAST_FAILED")
SampleTracker:RegisterEvent("UNIT_SPELLCAST_START")
SampleTracker:SetScript("OnEvent", function (_,e) SampleTrackerFunctions[e]() end)

----
function SampleTrackerFunctions.UNIT_SPELLCAST_SUCCEEDED()
  if not is_casting then
    print("An instant spell, oh my!")
  end
  is_casting = false
end
----
function SampleTrackerFunctions.UNIT_SPELLCAST_START()
  is_casting = true
end
----
function SampleTrackerFunctions.UNIT_SPELLCAST_FAILED()
  is_casting = false
end