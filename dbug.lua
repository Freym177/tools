function main()
    while not isSampAvailable() do wait(0) end
    sampRegisterChatCommand("dbug",dbug)
    while true do
        wait(0)
    end
end
function dbug()
	local mynick = sampGetPlayerNickname(id)
      local result, myid = sampGetPlayerIdByCharHandle(playerPed)
    sampAddChatMessage(myid,-1)
sampAddChatMessage(mynick,-1)
end

    