local _, workspace = ...; -- Namespace
workspace.MessageHandler = {};

local MessageHandler = workspace.MessageHandler;
local messageCollection = {};
local messageConfig = {};

function MessageHandler:ParseMessage(...)
	local content = select(1, ...);
	local author = select(2, ...);
	local channel = select(9, ...);
	print(channel, ". ", author, ": ", content);
end

function MessageHandler:SetConfig(config)
	messageConfig = config;
end