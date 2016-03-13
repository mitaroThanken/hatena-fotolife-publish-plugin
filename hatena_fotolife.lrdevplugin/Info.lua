--[[----------------------------------------------------------------------------

Info.lua
Summary information for Hatena Fotolife publish plug-in

------------------------------------------------------------------------------]]

return {

	LrSdkVersion = 3.0,
	LrSdkMinimumVersion = 3.0, -- minimum SDK version required by this plug-in

	LrToolkitIdentifier = 'com.github.mitaroThanken.hatena-fotolife-publish-plugin',
	LrPluginName = LOC "$$$/HatenaFotolife/PluginName=HatenaFotolife",

	LrExportServiceProvider = {
		title = LOC "$$$/HatenaFotolife/HatenaFotolife-title=Hatena Fotolife",
		file = 'HatenaFotolifeExportServiceProvider.lua',
	},

--[[
	LrMetadataProvider = 'HatenaFotolifeMetadataDefinition.lua',
--]]

	VERSION = { major=0, minor=0, revision=0, build=201603131930, },

}
