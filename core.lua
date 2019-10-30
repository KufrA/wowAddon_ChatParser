print("Chat Parser loaded!")
local eventListener = CreateFrame("FRAME", "EventFrame");
eventListener:RegisterEvent("CHAT_MSG_CHANNEL")
local function eventHandler(self, event, ...)
	local message = select(1, ...);
	local channel = select(9, ...);
	if channel == "LookingForGroup" then 
		print(message .. channel);
	end
end
eventListener:SetScript("OnEvent", eventHandler);