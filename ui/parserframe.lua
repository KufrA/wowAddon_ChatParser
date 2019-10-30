local _, workspace = ...; -- Namespace
workspace.ParserFrame = {};

local ParserFrame = workspace.ParserFrame;


-- Construct the frame
function ParserFrame:WindowCreate()
	local UImain = CreateFrame("Frame", "ChatParser_Frame", UIParent, "UIPanelDialogTemplate")
	local texture = UImain:CreateTexture(nil, "BACKGROUND");
	UImain:SetSize(400, 400);
	UImain:SetMovable(true);
	UImain:EnableMouse(true);
	UImain:RegisterForDrag("LeftButton")
	UImain:SetScript("OnDragStart", UImain.StartMoving)
	UImain:SetScript("OnDragStop", UImain.StopMovingOrSizing)
	UImain:SetPoint("CENTER", UIParent, "CENTER");
	UImain.title = UImain:CreateFontString(nil, "OVERLAY");
	UImain.title:SetFontObject("GameFontHighlight");
	UImain.title:SetPoint("LEFT", UImain.TitleBg, "LEFT", 5, 0);
	UImain.title:SetText("Text Parser");

	local UIConfig = CreateFrame("Frame", ["ChatParser_ConfigFrame"], UImain)


	local UImessages = CreateFrame("messageFrame", ["ChatParser_MessageFrame"], UImain)
end

function ParserFrame:WindowShow()
	
end

function ParserFrame:WIndowHide()

end

-- Frames for config and message



-- Handler function for minimizing the window




--[[function AddMessage(messageObject)
	
end--]]