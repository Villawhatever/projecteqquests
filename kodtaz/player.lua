--KT fern click for Berserker 1.5
function event_click_door(e)
  local door_id = e.door:GetDoorID();
  local qglobals = eq.get_qglobals(e.self);
	if(door_id == 25 or door_id == 26 or door_id == 27) then
		if(e.self:Class() == "Berserker" and qglobals["kt_fern"] == nil) then
				e.self:SummonItem(16949); --Taelosian Fern Sample 
				eq.set_global("kt_fern","1",3,"H1")
		end
	end
end