#!/usr/bin/env lua

local url = require("socket.url")
local string = require("string")
local gmatch = string.gmatch
local match = string.match
local find = string.find

function querystring( str )
  local vars = {}
  for pair in gmatch( tostring(str), "[^&]+") do
    if not find(pair, "=") then
      vars[url.unescape(pair)] = ''
    else
      local key, value = match(pair, "([^=]*)=(.*)")
      if key then
        vars[url.unescape(key)] = url.unescape(value)
      end
    end
  end
  return vars
end

print( "Content-Type: text/plain\n" )

query = os.getenv( "QUERY_STRING" )
params = querystring(query)

args = ""
for k,v in pairs(params)
do
  if not (k == "p4c") then
    args = args .. " " .. k .. "='" .. v .. "'"
  end
end

print( "done" )

os.execute( "/root/p4c/p4config/deinit.sh" )
os.execute( "/root/p4c/p4config.sh " .. params["p4c"] .. " " .. args )


