--[[----------------------------------------------------------------------------

HatenaFotolifeUser.lua
Hatena Fotolife user account management

------------------------------------------------------------------------------]]

	-- Lightroom SDK
local LrDialogs = import 'LrDialogs'
local LrFunctionContext = import 'LrFunctionContext'
local LrTasks = import 'LrTasks'

local logger = import 'LrLogger'( 'HatenaFotolifeAPI' )

require 'HatenaFotolifeAPI'


--============================================================================--

HatenaFotolifeUser = {}
