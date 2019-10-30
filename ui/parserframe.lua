local UIConfig = CreateFrame("Frame", "ChatParser_Frame", UIParent, "BasicFrameTemplateWithInset")
local texture = UIConfig:CreateTexture(nil, "BACKGROUND");
UIConfig:SetSize(400, 400);
UIConfig:SetPoint("CENTER", UIParent, "CENTER");
UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY");
UIConfig.title:SetFontObject("GameFontHighlight");
UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0);
UIConfig.title:SetText("Text Parser");
function AddMessage(messageObject)
	
end