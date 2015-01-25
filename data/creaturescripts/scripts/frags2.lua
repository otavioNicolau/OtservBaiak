local config = {
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler')),
	advancedFragList = getBooleanFromString(getConfigValue('advancedFragList'))
}

function onKill(cid, target)
         if (isPlayer(target) and isPlayer(cid)) then
            local time = os.time()
			local times = {today = (time - 86400), week = (time - (7 * 86400))}

			local contents, result = {day = {}, week = {}, month = {}}, db.getResult("SELECT `pd`.`date`, `pd`.`level`, `p`.`name` FROM `player_killers` pk LEFT JOIN `killers` k ON `pk`.`kill_id` = `k`.`id` LEFT JOIN `player_deaths` pd ON `k`.`death_id` = `pd`.`id` LEFT JOIN `players` p ON `pd`.`player_id` = `p`.`id` WHERE `pk`.`player_id` = " .. getPlayerGUID(cid) .. " AND `k`.`unjustified` = 1 AND `pd`.`date` >= " .. (time - (30 * 86400)) .. " ORDER BY `pd`.`date` DESC")
			if(result:getID() ~= -1) then
				repeat
					local content = {
						name = result:getDataString("name"),
						level = result:getDataInt("level"),
						date = result:getDataInt("date")
					}
					if(content.date > times.today) then
						table.insert(contents.day, content)
					elseif(content.date > times.week) then
						table.insert(contents.week, content)
					else
						table.insert(contents.month, content)
					end
				until not result:next()
				result:free()
			end

			local size = {
				day = table.maxn(contents.day),
				week = table.maxn(contents.week),
				month = table.maxn(contents.month)
			}
			--local result = "Frags gained today: " .. size.day .. "."
			if size.day == 23 then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Aktualnie posiadasz "..(size.day+1).. " fragi. Zostal 1 frag do RedSkulla!")
			end
   end
return TRUE
end 