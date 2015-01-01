local lvlcrit = 48903
local multiplier = 1.5
local effect = 104




function onStatsChange(cid, attacker, type, combat, value)
if (type == STATSCHANGE_HEALTHLOSS or type == STATSCHANGE_MANALOSS) and isPlayer(attacker) and isCreature(cid) then
if (getPlayerStorageValue(attacker, lvlcrit)*3) >= math.random (0,1000) then
value = math.ceil(value*(multiplier))
doTargetCombatHealth(attacker, cid, combat, -value, -value, 255)
doSendMagicEffect(getCreaturePosition(cid), effect)
doSendAnimatedText(getCreaturePos(attacker), "Critical!", 35)
return false
end
end
return true
end