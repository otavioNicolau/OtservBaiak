local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 66)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 11)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -400, 0, -510)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end