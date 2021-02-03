weaknessMultiplier = 2.0;
strengthMultiplier = 0.5;

function CalcEffect(base, relevantStat, isWeakAgainst, isStrongAgainst, abilityMod)
    multiplier = 1.0
    if isWeakAgainst then multiplier = weaknessMultiplier end
    if isStrongAgainst then multiplier = strengthMultiplier end
    return (base * relevantStat) + abilityMod end
    
function CalcStat(base, statMod)
    return base + statMod end

function CalcHit(acc, max, seed)
    math.randomseed(seed)
    roll = math.random(max)
    if (roll < acc) then 
        return true 
    else return false
    end
end
