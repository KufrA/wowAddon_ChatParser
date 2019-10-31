local _, workspace = ...; -- Namespace
workspace.ParserFrame = {};

local ParserFrame = workspace.ParserFrame;
local UImain;

local function Tab_OnClick(self)
	PanelTemplates_SetTab(self:GetParent(), self:GetID());
	local parent = self:GetParent();

	local scrollChild = parent.MessageFrame:GetScrollChild();
	if (scrollChild) then
		scrollChild:Hide();
	end

	parent.MessageFrame:SetScrollChild(self.content);
	self.content:Show();

end

local function SetTabs(frame, numTabs, ...)
	frame.numTabs = numTabs;

	local contents = {};
	local frameName = frame:GetName();

	for i = 1,numTabs do

		local tab = CreateFrame("Button", frameName.."Tab"..i,frame,"CharacterFrameTabButtonTemplate");
		tab:SetID(i);
		tab:SetText(select(i, ...));
		tab:SetScript("OnClick", Tab_OnClick);

		tab.content = CreateFrame("Frame", nil, frame.MessageFrame);
		tab.content:SetSize(358,800);
		tab.content:Hide();

		table.insert(contents, tab.content);

		if (i==1) then
			tab:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", 5, 7);
		else
			tab:SetPoint("TOPLEFT", _G[frameName.."Tab"..(i-1)], "TOPRIGHT", -14, 0);
		end
	end

	Tab_OnClick(_G[frameName.."Tab1"])
	--local child = CreateFrame("Frame", nil, UImain.MessageFrame);
	--child:SetSize(358,800);
	--UImain.MessageFrame:SetScrollChild(child);
	return unpack(contents);
end

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

	-- Implement scrollbar for messages
	UImain.MessageFrame = CreateFrame("ScrollFrame", nil, UImain, "UIPanelScrollFrameTemplate")
	UImain.MessageFrame:SetPoint("TOPLEFT", ChatParserFrameDialogBG, "TOPLEFT", 4, -8);
	UImain.MessageFrame:SetPoint("BOTTOMRIGHT", ChatParserFrameDialogBG, "BOTTOMRIGHT", -3, 4);
	UImain.MessageFrame:SetClipsChildren(true);

	-- Fix clipping and re-add scrollbar
	UImain.MessageFrame.ScrollBar:ClearAllPoints();
	UImain.MessageFrame.ScrollBar:SetPoint("TOPLEFT",UImain.MessageFrame, "TOPRIGHT", -10, -16);
	UImain.MessageFrame.ScrollBar:SetPoint("BOTTOMRIGHT",UImain.MessageFrame, "BOTTOMRIGHT", -5, 16);

	-- Add scrollbar as child 
	local tab1, tab2 = SetTabs(UImain, 2, "Config", "Messages");

end


	--local UIConfig = CreateFrame("Frame", ["ChatParser_ConfigFrame"], UImain)


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