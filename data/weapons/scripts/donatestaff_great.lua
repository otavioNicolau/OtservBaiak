local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 37)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -540, 0, -795)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end