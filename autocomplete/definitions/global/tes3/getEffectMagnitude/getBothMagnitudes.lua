local magnitude, unresistedMagnitude = tes3.getEffectMagnitude{reference = tes3.player, effect = tes3.effect.fireDamage}
tes3.messageBox(string.format("fortify speed: %f (%f)", magnitude, unresistedMagnitude))