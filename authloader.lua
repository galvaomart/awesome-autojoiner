--[[ AWESOME AJ — OBFUSCATED LOADER ]]--

local _A,_B,_C=_G,game,("HttpGet")
local _D=_B:GetService("HttpService")
local _E=_B:GetService("RbxAnalyticsService")
local _F=_E:GetClientId()
local _G=""  -- SCRIPT_KEY
local _H=""  -- DISCORD_ID

local function _I(s) return tostring(s):gsub(" ","%%20") end

local _J={
    "http://86.132.254.173:5000/script/obl_loader",
    "?key=",_I(_G),
    "&discord_id=",_I(_H),
    "&hwid=",_I(_F)
}

local _K=table.concat(_J)

local _L,_M=pcall(function()
    return _A[_C](_A, _K)
end)

if not _L then
    return warn("\226\154\160 AwesomeAJ Loader | Unable to reach authentication server.")
end

local _N=tostring(_M)

if _N=="Invalid key"
or _N=="Expired key"
or _N=="HWID mismatch"
or _N=="Key mismatch"
or _N=="Access disabled" then
    return warn("\240\159\155\187 AUTH FAILED: ".._N)
end

local _O=loadstring(_N)
if _O then _O() else warn("\240\159\154\182 Loader failed to execute script.") end
