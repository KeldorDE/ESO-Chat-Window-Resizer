--- CHat Window Resizer
--- written by Keldor
---

----
--- Initialize global Variables
----
ChatWindowResizer = {}
ChatWindowResizer.Name = "ChatWindowResizer"
ChatWindowResizer.AddonVersion = "4.2.0"
ChatWindowResizer.AddonVersionInt = 4200


----
--- OnAddOnLoaded
----
function ChatWindowResizer.OnAddOnLoaded(_, addonName)

	if addonName ~= ChatWindowResizer.Name then return end

	EVENT_MANAGER:UnregisterForEvent(ChatWindowResizer.Name, EVENT_ADD_ON_LOADED)

	CHAT_SYSTEM.maxContainerWidth, CHAT_SYSTEM.maxContainerHeight = GuiRoot:GetDimensions()
end


----
--- AddOn init
----
EVENT_MANAGER:RegisterForEvent(ChatWindowResizer.Name, EVENT_ADD_ON_LOADED, ChatWindowResizer.OnAddOnLoaded)
