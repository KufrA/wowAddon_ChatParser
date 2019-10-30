print("Chat Parser loaded!")
local frame = CreateFrame("FRAME", "EventFrame");
frame:RegisterEvent("CHAT_MSG_CHANNEL")
local function eventHandler(self, event, ...)
	local message, _, _, _, _, _, _, _, channel = ...;
	if channel == "LookingForGroup" then 
		print(message .. channel);
	end
end
frame:SetScript("OnEvent", eventHandler);