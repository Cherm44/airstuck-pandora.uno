
-- ui

ui.add_label("- Airstuck :>") -- text


local airstuck_item = ui.add_checkbox("Activate airstuck") -- checkbox

local hotkey_item = ui.add_hotkey("Airstuck") -- hotkey

-- true or false

local airstuck = airstuck_item:get() -- true/false

local connected = engine.is_connected() -- true/false

-- function

local function baboin( cmd )
	
	if airstuck == true then -- checkbox check

		if hotkey_item:get() == true then -- hotkey check

			if connected == true then -- check is player connected

				cmd.command_number = 0x00000 

				cmd.tick_count = 0x7F7FFFFF 
	
			end
	
		end
	
	end 

end 

callbacks.register("post_move", baboin) -- create callback post_move

-- api - https://pandora-lua.gitbook.io/api/api/documentation/