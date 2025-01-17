# tes3activeMagicEffect
<div class="search_terms" style="display: none">tes3activemagiceffect, activemagiceffect</div>

<!---
	This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
	More information: https://github.com/MWSE/MWSE/tree/master/docs
-->

An active magic effect.

## Properties

### `attributeId`
<div class="search_terms" style="display: none">attributeid</div>

*Read-only*. The attribute ID (note that this may be the skill ID if the effect affects skills, since `attributeId` and `skillId` properties are set to the same value by the engine). Maps to values from [`tes3.attribute`](https://mwse.github.io/MWSE/references/attributes/) table.

**Returns**:

* `result` (integer)

***

### `duration`
<div class="search_terms" style="display: none">duration</div>

*Read-only*. The total duration of this specific effect.

**Returns**:

* `result` (number)

***

### `effectId`
<div class="search_terms" style="display: none">effectid</div>

*Read-only*. The magic effect ID. Maps to values from [`tes3.effect`](https://mwse.github.io/MWSE/references/magic-effects/) table.

**Returns**:

* `result` (integer)

***

### `effectIndex`
<div class="search_terms" style="display: none">effectindex</div>

*Read-only*. The index of the effect inside the magic source instance.

**Returns**:

* `result` (integer)

***

### `effectInstance`
<div class="search_terms" style="display: none">effectinstance</div>

*Read-only*. The magic effect instance for this effect.

**Returns**:

* `result` ([tes3magicEffectInstance](../../types/tes3magicEffectInstance))

***

### `harmful`
<div class="search_terms" style="display: none">harmful</div>

*Read-only*. This flag that determines if this effect is counted as a hostile action.

**Returns**:

* `result` (boolean)

***

### `instance`
<div class="search_terms" style="display: none">instance</div>

*Read-only*. The magic source instance for this effect.

**Returns**:

* `result` ([tes3magicSourceInstance](../../types/tes3magicSourceInstance))

***

### `isBoundItem`
<div class="search_terms" style="display: none">isbounditem, bounditem</div>

*Read-only*. If this effect has summoned a bound item.

**Returns**:

* `result` (boolean)

***

### `isIllegalSummon`
<div class="search_terms" style="display: none">isillegalsummon, illegalsummon</div>

*Read-only*. If this effect has summoned a creature that has been declared illegal to summon. This is an otherwise unused flag in the game that is set for daedra and undead summon magic effects, but not for any other summon creature magic effects.

**Returns**:

* `result` (boolean)

***

### `isSummon`
<div class="search_terms" style="display: none">issummon, summon</div>

*Read-only*. If this effect has summoned a creature.

**Returns**:

* `result` (boolean)

***

### `magnitude`
<div class="search_terms" style="display: none">magnitude</div>

*Read-only*. The unresisted magnitude of the magic effect, that is the magnitude before resistance attributes are applied. To find the actual effective magnitude after resistances are applied, you must check the magic effect instance.

**Returns**:

* `result` (integer)

***

### `magnitudeMin`
<div class="search_terms" style="display: none">magnitudemin</div>

*Read-only*. Deprecated.

**Returns**:

* `result` (number)

***

### `mobile`
<div class="search_terms" style="display: none">mobile</div>

*Read-only*. The mobile affected by the magic effect.

**Returns**:

* `result` ([tes3mobileCreature](../../types/tes3mobileCreature), [tes3mobileNPC](../../types/tes3mobileNPC), [tes3mobilePlayer](../../types/tes3mobilePlayer))

***

### `next`
<div class="search_terms" style="display: none">next</div>

*Read-only*. Deprecated.

**Returns**:

* `result` ([tes3activeMagicEffect](../../types/tes3activeMagicEffect))

***

### `previous`
<div class="search_terms" style="display: none">previous</div>

*Read-only*. Deprecated.

**Returns**:

* `result` ([tes3activeMagicEffect](../../types/tes3activeMagicEffect))

***

### `serial`
<div class="search_terms" style="display: none">serial</div>

*Read-only*. The magic source instance serial number. See the `instance` and `effectInstance` properties to easily access the magic and effect instances.

**Returns**:

* `result` (integer)

***

### `skillId`
<div class="search_terms" style="display: none">skillid</div>

*Read-only*. The skill ID (note that this may be the attribute ID if the effect affects attributes, since `attributeId` and `skillId` properties are set to the same value by the engine). Maps to values in [`tes3.skill`](https://mwse.github.io/MWSE/references/skills/) table.

**Returns**:

* `result` (integer)

