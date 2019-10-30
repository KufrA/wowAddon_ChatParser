local _, workspace = ...; -- Namespace
workspace.MessageHandler = {};

local MessageHandler = workspace.MessageHandler;
local messageCollection = {};
local messageConfig = {};

function MessageHandler:ParseMessage(message)
	
end

function MessageHandler:SetConfig(config)
	messageConfig = config;
end