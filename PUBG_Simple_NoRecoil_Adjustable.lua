-- PUBG Logitech No Recoil Script with Dynamic Sensitivity Adjustment

SensSetting = 1.0  -- Default recoil compensation multiplier

function OnEvent(event, arg)
    -- Adjust Recoil Dynamically using Mouse Buttons 4 & 5
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then  -- Side Button 1 (Increase recoil control)
        SensSetting = SensSetting + 0.05
        OutputLogMessage("Increased Recoil Compensation: " .. SensSetting .. "\n")
    end
    
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then  -- Side Button 2 (Decrease recoil control)
        SensSetting = SensSetting - 0.05
        OutputLogMessage("Decreased Recoil Compensation: " .. SensSetting .. "\n")
    end
    
    -- No Recoil Logic 
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then  -- Left Click
        repeat
            MoveMouseRelative(0, math.floor(5 * SensSetting))  -- Adjust movement with SensSetting
            Sleep(18)  -- Adjust delay per shot
        until not IsMouseButtonPressed(1)
    end
end
