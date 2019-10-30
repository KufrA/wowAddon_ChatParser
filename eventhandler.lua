local _, workspace = ...;
workspace.EventHandler = {};
local EventHandler = workspace.EventHandler;
local eventListener
function EventHandler:Init()
	eventListener = CreateFrame("FRAME", "EventFrame");
	eventListener:SetScript("OnEvent", onMessageReceived);
end


function EventHandler:Register()
	eventListener:RegisterEvent("CHAT_MSG_CHANNEL")
end

function EventHandler:Unregister()
	eventlister:UnRegisterEvent("CHAT_MSG_CHANNEL")
end

function onMessageReceived(self, event, ...)
	local message = select(1, ...);
	local channel = select(9, ...);
	if channel == "LookingForGroup" then 
		print(message .. channel);
	end
end
