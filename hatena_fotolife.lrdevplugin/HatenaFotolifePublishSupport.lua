--[[----------------------------------------------------------------------------

HatenaFotolifePublishServiceProvider.lua
Publish-specific portions of Lightroom Hatena Fotolife uploader

------------------------------------------------------------------------------]]

-- Lightroom SDK
local LrDialogs = import 'LrDialogs'

-- Hatena Fotolife plug-in
require 'HatenaFotolifeAPI'

--------------------------------------------------------------------------------

local publishServiceProvider = {}

--------------------------------------------------------------------------------

--[[
Plug-in defined value is the filename of the icon to be displayed
for this publish service provider, in the Publish Services panel,
the Publish Manager dialog, and in the header shown when a published
collection is selected.
--]]

publishServiceProvider.small_icon = 'hatena-logo_small.png'

--[[
Plug-in defined value customizes the behavior of the Description entry
in the Publish Manager dialog. If the user does not provide an explicit
name choice, Lightroom can provide one based on another entry
in the publishSettings property table. This entry contains the name of
the property that should be used in this case.
--]]

publishServiceProvider.publish_fallbackNameBinding = 'fullname'

--[[
Plug-in defined value customizes the name of a published collection
to match the terminology used on the service you are targeting.
--]]

publishServiceProvider.titleForPublishedCollection = LOC "$$$/HatenaFotolife/TitleForPublishedCollection=Folder"
publishServiceProvider.titleForPublishedCollection_standalone = LOC "$$$/HatenaFotolife/TitleForPublishedCollection/Standalone=Folder"

--[[
Plug-in defined value customizes the name of a published smart collection
to match the terminology used on the service you are targeting.
--]]

publishServiceProvider.titleForPublishedSmartCollection = LOC "$$$/HatenaFotolife/TitleForPublishedSmartCollection=Smart Folder"
publishServiceProvider.titleForPublishedSmartCollection_standalone = LOC "$$$/HatenaFotolife/TitleForPublishedSmartCollection/Standalone=Smart Folder"

--[[
Lightroom calls it to retrieve the default collection behavior for
this publish service, then use that information to create a built-in
default collection for this service (if one does not yet exist).
--]]

function publishServiceProvider.getCollectionBehaviorInfo( publishSettings )

	return {
		defaultCollectionName = LOC "$$$/HatenaFotolife/DefaultCollectionName/Photostream=Lightroom Photostream",
		defaultCollectionCanBeDeleted = false,
		canAddCollection = true,
		maxCollectionSetDepth = 0,
			-- Collection sets are not supported through the Hatena Fotolife plug-in.
	}

end

--[[
When set to the string "disable", the "Go to Published Collection"
context-menu item is disabled (dimmed) for this publish service.
--]]

--[[
publishServiceProvider.titleForGoToPublishedCollection = LOC "$$$/HatenaFotolife/TitleForGoToPublishedCollection=Show in Hatena Fotolife"
--]]
publishServiceProvider.titleForGoToPublishedCollection = "disable"

--[[
Plug-in defined value overrides the label for the "Go to Published
Photo" context-menu item, allowing you to use something more appropriate
to your service. Set to the special value "disable" to disable (dim)
the menu item for this service.
--]]

--[[
publishServiceProvider.titleForGoToPublishedPhoto = LOC "$$$/HatenaFotolife/TitleForGoToPublishedCollection=Show in Hatena Fotolife"
--]]
publishServiceProvider.titleForGoToPublishedPhoto = "disable"

--------------------------------------------------------------------------------

HatenaFotolifePublishSupport = publishServiceProvider
