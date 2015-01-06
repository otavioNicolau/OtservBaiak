local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 6)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 31)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -410, 0, -525)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end