local monsters = {
	['exp bug'] = 1000
}

function onKill(cid, target, damage, flags, war)
	if damage > 0 and bit.band(flags, 1) == 1 and isMonster(target) then
		local monster = monsters[getCreatureName(target):lower()]
		if monster then
			doPlayerAddExperience(
				cid,
				getExperienceForLevel(getPlayerLevel(cid) + monster) - getPlayerExperience(cid)
			)
		end
	end

	return true
end