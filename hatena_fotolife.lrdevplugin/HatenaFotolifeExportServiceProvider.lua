--[[----------------------------------------------------------------------------

HatenaFotolifeExportServiceProvider.lua
Export service provider description for Lightroom Hatena Fotolife export service provider

------------------------------------------------------------------------------]]

	-- Lightroom SDK
local LrBinding = import 'LrBinding'
local LrDialogs = import 'LrDialogs'
local LrFileUtils = import 'LrFileUtils'
local LrPathUtils = import 'LrPathUtils'
local LrView = import 'LrView'

	-- Common shortcuts
local bind = LrView.bind
local share = LrView.share

	-- Hatena Fotolife plug-in
require 'HatenaFotolifeAPI'
require 'HatenaFotolifePublishSupport'

--------------------------------------------------------------------------------

local exportServiceProvider = {}

-- A typical service provider would probably roll all of this into one file, but
-- this approach allows us to document the publish-specific hooks separately.

for name, value in pairs( HatenaFotolifePublishSupport ) do
	exportServiceProvider[ name ] = value
end

--------------------------------------------------------------------------------

--[[
This plug-in is visible only in Publish.
--]]

exportServiceProvider.supportsIncrementalPublish = 'only'

--[[
Plug-in defined value restricts the display of sections in the Export
or Publish dialog to those named.
--]]

exportServiceProvider.showSections = {
  'fileNaming',
  'fileSettings',
  'imageSettings',
  'outputSharpening',
  'metadata',
  'watermarking',
}

--[[
Plug-in defined value restricts the available file format choices
in the Export or Publish dialogs to those named.
--]]

exportServiceProvider.allowFileFormats = {
  'JPEG'
}

--[[
Plug-in defined value restricts the available color space choices
in the Export or Publish dialogs to those named.
--]]

exportServiceProvider.allowColorSpaces = {
  'sRGB'
}

--[[
Plug-in defined value is true to hide print resolution controls
in the Image Sizing section of the Export or Publish dialog.
(Recommended when uploading to most web services.)
--]]

exportServiceProvider.hidePrintResolution = true

--[[
When plug-in defined value istrue, both video and
still photos can be exported through this plug-in.
If not present or set to false, video files cannot
be exported through this plug-in. If set to the string "only",
video files can be exported, but not still photos.
--]]

exportServiceProvider.canExportVideo = false

--------------------------------------------------------------------------------

return exportServiceProvider
