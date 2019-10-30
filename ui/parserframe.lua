local _, workspace = ...; -- Namespace
workspace.ParserFrame = {};

local ParserFrame = workspace.ParserFrame;


-- Construct the frame
function ParserFrame:WindowCreate()
	local UImain = CreateFrame("Frame", "ChatParserFrame", UIParent, "UIPanelDialogTemplate")
	local texture = UImain:CreateTexture(nil, "BACKGROUND");
	UImain:SetSize(400, 400);
	UImain:SetMovable(true);
	UImain:EnableMouse(true);
	UImain:RegisterForDrag("LeftButton")
	UImain:SetScript("OnDragStart", UImain.StartMoving)
	UImain:SetScript("OnDragStop", UImain.StopMovingOrSizing)
	UImain:SetPoint("LEFT", UIParent, "LEFT");
	UImain.Title:ClearAllPoints();
	UImain.Title:SetFontObject("GameFontHighlight")
	UImain.Title:SetPoint("LEFT", ChatParserFrameTitleBG, "LEFT", 5, 0);
	UImain.Title:SetText("Chat Parser");

	--local UIConfig = CreateFrame("Frame", ["ChatParser_ConfigFrame"], UImain)


	--local UImessages = CreateFrame("messageFrame", ["ChatParser_MessageFrame"], UImain)
end

function ParserFrame:WindowShow()

end

function ParserFrame:WindowHide()

end

function ParserFrame:AddMessage()

end

-- Frames for config and message



-- Handler function for minimizing the window




--[[function AddMessage(messageObject)
	
end--]]