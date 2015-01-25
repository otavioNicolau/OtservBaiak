function onKill(cid, target, lastHit)

if isPlayer(target) == TRUE then
pid = cid
pid2 = getPlayerGUID(target)
    local result_plr = db.getResult("SELECT * FROM `bounty_hunters` WHERE `sp_id` = "..pid2.." AND `killed` = 0;")
	local x
	if(result_plr:getID() ~= -1) then

    prizegn = tonumber(result_plr:getDataInt("prizegn"))

    prizerx = tonumber(result_plr:getDataInt("prizerx"))

	bid = tonumber(result_plr:getDataInt("id"))

	result_plr:free()
	x = 1
   else

    prizerx = 0

	prizegn = 0
	x = 0
	bid = 0
   end



if x == 1 and not(getTileInfo(getCreaturePosition(cid)).pvp) then
 db.executeQuery("UPDATE `bounty_hunters` SET `killed` = 1, `k_id`="..getPlayerGUID(cid)..", `kill_time` = " .. os.time() .. " WHERE `id`  = "..bid..";")
if (prizerx > 0) then
	doPlayerAddItem(cid,9971,prizerx)
else
	doPlayerAddItem(cid,2157,prizegn)
	end
	doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE,'[Lowcy Glow] You killed hunted player, so you gained the reward!')
end	


end

return TRUE

end