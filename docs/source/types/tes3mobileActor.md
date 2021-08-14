# tes3mobileActor

A mobile object for a creature, NPC, or the player.

This type inherits the following: [tes3mobileObject](../../types/tes3mobileObject)
## Properties

### `actionBeforeCombat`

*Read-only*. Action data stored before the actor entered combat.

**Returns**:

* `result` ([tes3actionData](../../types/tes3actionData))

***

### `actionData`

*Read-only*. Current action data. Pre-combat action data is stored in the actionBeforeCombat property.

**Returns**:

* `result` ([tes3actionData](../../types/tes3actionData))

***

### `activeAI`

Friendly access to the actor's flag that controls if AI is active.

**Returns**:

* `result` (boolean)

***

### `activeMagicEffectList`

*Read-only*. The active magic effects on the actor, from which all others can be accessed. A table with tes3activeMagicEffect items.

**Returns**:

* `result` (table)

***

### `actorType`

*Read-only*. The type of the mobile actor. 0 is a creature, 1 is an NPC, 2 is the player.

**Returns**:

* `result` (number)

***

### `agility`

*Read-only*. Direct access to the actor's agility attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `aiPlanner`

*Read-only*. Access to the mobile's AI planner and AI package information.

**Returns**:

* `result` (tes3aiPlanner)

***

### `alarm`

The actor's alarm AI value.

**Returns**:

* `result` (number)

***

### `animationController`

*Read-only*. No description yet available.

**Returns**:

* `result` ([tes3actorAnimationController](../../types/tes3actorAnimationController))

***

### `armorRating`

*Read-only*. The actor's current armour rating, taking equipment condition into account. Armour mitigation can be automatically applied to damage by using the applyDamage function.

Armour mitigation calculation:
x = damage / (damage + target.armorRating)
damage *= max(fCombatArmorMinMult, x)
if damage < 1 then damage = 1 end

**Returns**:

* `result` (number)

***

### `attackBonus`

Direct access to the actor's attack bonus effect attribute.

**Returns**:

* `result` (number)

***

### `attacked`

*Read-only*. Friendly access to the actor's flag that controls if the actor has been attacked.

**Returns**:

* `result` (boolean)

***

### `attributes`

*Read-only*. Access to a table of 8 tes3statistic objects for the actor's attributes.

**Returns**:

* `result` (table)

***

### `barterGold`

The current amount of gold that the actor has access to for bartering.

**Returns**:

* `result` (number)

***

### `blind`

Direct access to the actor's blind effect attribute.

**Returns**:

* `result` (number)

***

### `boundSize`

*Read-only*. A vector that shows the size of the bounding box in each direction.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `cell`

*Read-only*. Fetches the cell that the actor is in.

**Returns**:

* `result` ([tes3cell](../../types/tes3cell))

***

### `cellX`

*Read-only*. The X grid coordinate of the cell the mobile is in.

**Returns**:

* `result` (number)

***

### `cellY`

*Read-only*. The Y grid coordinate of the cell the mobile is in.

**Returns**:

* `result` (number)

***

### `chameleon`

Direct access to the actor's chameleon effect attribute.

**Returns**:

* `result` (number)

***

### `collidingReference`

*Read-only*. The reference that the mobile has collided with this frame.

**Returns**:

* `result` ([tes3reference](../../types/tes3reference))

***

### `combatSession`

*Read-only*. Combat session data. This exists while the actor is in combat to provide memory for AI combat decisions.

**Returns**:

* `result` ([tes3combatSession](../../types/tes3combatSession))

***

### `corpseHourstamp`

No description yet available.

**Returns**:

* `result` (number)

***

### `currentEnchantedItem`

*Read-only*. The currently equipped enchanted item that the actor will use.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `currentSpell`

*Read-only*. The currently equipped spell that the actor will use.

**Returns**:

* `result` ([tes3spell](../../types/tes3spell))

***

### `effectAttributes`

*Read-only*. Access to a table of 24 numbers for the actor's effect attributes.

**Returns**:

* `result` (table)

***

### `encumbrance`

*Read-only*. Access to the actor's encumbrance statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `endurance`

*Read-only*. Direct access to the actor's endurance attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `facing`

*Read-only*. The facing of the actor, in radians.

**Returns**:

* `result` (number)

***

### `fatigue`

*Read-only*. Access to the actor's fatigue statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `fight`

The actor's fight AI value.

**Returns**:

* `result` (number)

***

### `flags`

*Read-only*. Access to the root mobile object flags, represented as an integer. Should not be accessed directly.

**Returns**:

* `result` (number)

***

### `flee`

The actor's flee AI value.

**Returns**:

* `result` (number)

***

### `friendlyActors`

*Read-only*. A collection of other tes3mobileActors that this actor considers friendly.

**Returns**:

* `result` ([tes3iterator](../../types/tes3iterator))

***

### `greetDuration`

No description yet available.

**Returns**:

* `result` (number)

***

### `greetTimer`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `health`

*Read-only*. Access to the actor's health statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `height`

*Read-only*. The height of the mobile above the ground.

**Returns**:

* `result` (number)

***

### `hello`

The actor's hello AI value.

**Returns**:

* `result` (number)

***

### `holdBreathTime`

No description yet available.

**Returns**:

* `result` (number)

***

### `hostileActors`

*Read-only*. A collection of other tes3mobileActors that this actor considers hostile.

**Returns**:

* `result` ([tes3iterator](../../types/tes3iterator))

***

### `idleAnim`

*Read-only*. Friendly access to the actor's flag that controls if the actor is using their idle animation.

**Returns**:

* `result` (boolean)

***

### `impulseVelocity`

A vector that represents the 3D acceleration of the object.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `inCombat`

*Read-only*. Friendly access to the actor's flag that controls if the actor is in combat.

**Returns**:

* `result` (boolean)

***

### `intelligence`

*Read-only*. Direct access to the actor's intelligence attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `invisibility`

Direct access to the actor's invisibility effect attribute.

**Returns**:

* `result` (number)

***

### `isCrittable`

*Read-only*. Friendly access to the actor's flag that controls if the actor can be critically hit.

**Returns**:

* `result` (boolean)

***

### `isDead`

*Read-only*. True if the actor is dead.

**Returns**:

* `result` (boolean)

***

### `isFalling`

Direct access to the actor's current movement flags, showing if the actor is falling. This is when the actor is falling without having jumped, e.g. if they walked off a ledge.

**Returns**:

* `result` (boolean)

***

### `isFlying`

Direct access to the actor's current movement flags, showing if the actor is flying.

**Returns**:

* `result` (boolean)

***

### `isJumping`

Direct access to the actor's current movement flags, showing if the actor is jumping.

**Returns**:

* `result` (boolean)

***

### `isMovingBack`

Direct access to the actor's current movement flags, showing if the actor is moving backwards.

**Returns**:

* `result` (boolean)

***

### `isMovingForward`

Direct access to the actor's current movement flags, showing if the actor is moving forwards.

**Returns**:

* `result` (boolean)

***

### `isMovingLeft`

Direct access to the actor's current movement flags, showing if the actor is moving left.

**Returns**:

* `result` (boolean)

***

### `isMovingRight`

Direct access to the actor's current movement flags, showing if the actor is moving right.

**Returns**:

* `result` (boolean)

***

### `isPlayerDetected`

Direct access to the actor's flag showing the player was detected on the last detection check.

**Returns**:

* `result` (boolean)

***

### `isPlayerHidden`

Direct access to the actor's flag showing the player was hidden on the last detection check.

**Returns**:

* `result` (boolean)

***

### `isRunning`

Direct access to the actor's current movement flags, showing if the actor is running.

**Returns**:

* `result` (boolean)

***

### `isSneaking`

Direct access to the actor's current movement flags, showing if the actor is sneaking.

**Returns**:

* `result` (boolean)

***

### `isSwimming`

Direct access to the actor's current movement flags, showing if the actor is swimming.

**Returns**:

* `result` (boolean)

***

### `isTurningLeft`

Direct access to the actor's current movement flags, showing if the actor is turning left.

**Returns**:

* `result` (boolean)

***

### `isTurningRight`

Direct access to the actor's current movement flags, showing if the actor is turning right.

**Returns**:

* `result` (boolean)

***

### `isWalking`

Direct access to the actor's current movement flags, showing if the actor is walking.

**Returns**:

* `result` (boolean)

***

### `jump`

Direct access to the actor's jump effect attribute.

**Returns**:

* `result` (number)

***

### `lastGroundZ`

No description yet available.

**Returns**:

* `result` (number)

***

### `levitate`

Direct access to the actor's levitate effect attribute.

**Returns**:

* `result` (number)

***

### `luck`

*Read-only*. Direct access to the actor's luck attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `magicka`

*Read-only*. Access to the actor's magicka statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `magickaMultiplier`

*Read-only*. Access to the actor's magicka multiplier statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `mobToMobCollision`

Allows modifying if this actor will collide with other actors. When true (default), the actor cannot move through other actors. When false, the actor is allowed to move through other actors, and other actors can move through it.

May be useful when free movement is required in crowded situations, or to temporarily let the player move past an actor.

**Returns**:

* `result` (boolean)

***

### `movementCollision`

Controls if the mobile has movement collision active. When false, the mobile can move through any object, but can still block other mobiles, and can still be hit in combat. Actors will still follow pathgrids, ramps and stairs when navigating.

**Returns**:

* `result` (boolean)

***

### `movementFlags`

*Read-only*. Access to the root mobile object movement flags, represented as an integer. Should not be accessed directly.

**Returns**:

* `result` (number)

***

### `nextActionWeight`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `objectType`

*Read-only*. The type of mobile object. Maps to values in tes3.objectType.

**Returns**:

* `result` (number)

***

### `paralyze`

Direct access to the actor's paralyze effect attribute.

**Returns**:

* `result` (number)

***

### `personality`

*Read-only*. Direct access to the actor's personality attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `playerDistance`

The distance to the player. Updated every frame when the mobile is in an active cell.

**Returns**:

* `result` (number)

***

### `position`

A vector that represents the 3D position of the object.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `prevMovementFlags`

*Read-only*. Access to the root mobile object movement flags from the previous frame, represented as an integer. Should not be accessed directly.

**Returns**:

* `result` (number)

***

### `readiedAmmo`

The currently equipped ammo.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `readiedAmmoCount`

The number of ammo equipped for the readied ammo.

**Returns**:

* `result` (number)

***

### `readiedShield`

The currently equipped shield.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `readiedWeapon`

The currently equipped weapon.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `reference`

*Read-only*. Access to the reference object for the mobile, if any.

**Returns**:

* `result` ([tes3reference](../../types/tes3reference))

***

### `resistBlightDisease`

Direct access to the actor's blight disease resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistCommonDisease`

Direct access to the actor's common disease resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistCorprus`

Direct access to the actor's corprus disease resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistFire`

Direct access to the actor's fire resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistFrost`

Direct access to the actor's frost resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistMagicka`

Direct access to the actor's magicka resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistNormalWeapons`

Direct access to the actor's normal weapon resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistParalysis`

Direct access to the actor's paralysis resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistPoison`

Direct access to the actor's poison resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistShock`

Direct access to the actor's shock resistance effect attribute.

**Returns**:

* `result` (number)

***

### `sanctuary`

Direct access to the actor's sanctuary effect attribute.

**Returns**:

* `result` (number)

***

### `scanInterval`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `scanTimer`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `shield`

Direct access to the actor's shield effect attribute.

**Returns**:

* `result` (number)

***

### `silence`

Direct access to the actor's silence effect attribute.

**Returns**:

* `result` (number)

***

### `sound`

Direct access to the actor's sound effect attribute.

**Returns**:

* `result` (number)

***

### `speed`

*Read-only*. Direct access to the actor's speed attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `spellReadied`

*Read-only*. Friendly access to the actor's flag that controls if the actor has a spell readied.

**Returns**:

* `result` (boolean)

***

### `strength`

*Read-only*. Direct access to the actor's strength attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `swiftSwim`

Direct access to the actor's swift swim effect attribute.

**Returns**:

* `result` (number)

***

### `talkedTo`

Direct access to the actor's flag that shows it was recently talked to.

**Returns**:

* `result` (boolean)

***

### `torchSlot`

The currently equipped light.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `underwater`

*Read-only*. Friendly access to the actor's flag that controls if the actor is under water.

**Returns**:

* `result` (boolean)

***

### `velocity`

A vector that represents the 3D velocity of the object.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `waterBreathing`

Direct access to the actor's water breathing effect attribute.

**Returns**:

* `result` (number)

***

### `waterWalking`

Direct access to the actor's water walking effect attribute.

**Returns**:

* `result` (number)

***

### `weaponDrawn`

*Read-only*. Friendly access to the actor's flag that shows if the weapon model is visible. When readying a weapon, there is a short period of time at the start of the animation, where the weapon is not visible yet. This flag will only be set after this initial stage is done. This flag is still set with hand-to-hand even though it doesn't use a model. Setting this to false while a weapon is drawn will normally cause the actor to play its weapon draw animation again.

**Returns**:

* `result` (boolean)

***

### `werewolf`

*Read-only*. Friendly access to the actor's flag that controls if the actor in werewolf form.

**Returns**:

* `result` (boolean)

***

### `width`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `willpower`

*Read-only*. Direct access to the actor's willpower attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

## Methods

### `applyDamage`

Damages the actor, with options to control mitigation and difficulty scaling. Invokes the 'damage' and 'damaged' events, with 'script' source. Returns the actual damage done after armor mitigation and resistance, but before difficulty scaling.

```lua
local result = tes3mobileActor:applyDamage({ damage = ..., applyArmor = ..., resistAttribute = ..., applyDifficulty = ..., playerAttack = ..., doNotChangeHealth = ... })
```

**Parameters**:

* `params` (table)
	* `damage` (number): The amount of damage to apply.
	* `applyArmor` (boolean): *Optional*. If armor should mitigate the incoming damage. If the player is the target, armor experience will be gained.
	* `resistAttribute` (number): *Optional*. The resistance attribute that is applied to the damage. It can reduce damage or exploit weakness. Uses values from tes3.effectAttributes.
	* `applyDifficulty` (boolean): *Optional*. If the game difficulty modifier should be applied. Must be used with the 'playerAttack' argument to apply the correct modifier.
	* `playerAttack` (boolean): *Optional*. If the attack came from the player. Used for difficulty calculation.
	* `doNotChangeHealth` (boolean): *Optional*. If all armor effects except the health change should be applied. These include hit sounds, armor condition damage, and player experience gain from being hit.

**Returns**:

* `result` (number)

***

### `applyFatigueDamage`

Damages the actor's fatigue, with accompanying reaction from the reciever. Invokes the 'damageHandToHand' and 'damagedHandToHand' events, with 'script' source. Returns the actual fatigue damage done.

```lua
local result = tes3mobileActor:applyFatigueDamage(fatigueDamage, swing, alwaysPlayHitVoice)
```

**Parameters**:

* `fatigueDamage` (number): The amount of fatigue damage to apply.
* `swing` (number): *Optional*. The attack swing magnitude, range 0-1. Only modifies hit volume.
* `alwaysPlayHitVoice` (boolean): *Optional*. Always play the hit reaction voiceover.

**Returns**:

* `result` (number)

***

### `applyHealthDamage`

**Deprecated, please use applyDamage instead.**

Damages the actor.

```lua
local result = tes3mobileActor:applyHealthDamage(damage, isPlayerAttack, scaleWithDifficulty, doNotChangeHealth)
```

**Parameters**:

* `damage` (number): The amount of damage to apply.
* `isPlayerAttack` (boolean): Used to calculate difficulty scaling.
* `scaleWithDifficulty` (boolean): Apply difficulty scaling to the damage.
* `doNotChangeHealth` (boolean): Do all the audiovisual effects of damage without the health change.

**Returns**:

* `result` (boolean)

***

### `calcEffectiveDamage`

Calculates the damage that would be inflicted to an actor after armor and/or resistance. Returns the actual damage done after armor mitigation and resistance, but before difficulty scaling.

```lua
local result = tes3mobileActor:calcEffectiveDamage({ damage = ..., applyArmor = ..., resistAttribute = ... })
```

**Parameters**:

* `params` (table)
	* `damage` (number): The amount of damage to apply.
	* `applyArmor` (boolean): *Optional*. If armor should mitigate the incoming damage.
	* `resistAttribute` (number): *Optional*. The resistance attribute that is applied to the damage. It can reduce damage or exploit weakness. Uses values from tes3.effectAttributes.

**Returns**:

* `result` (number)

***

### `getActiveMagicEffects`

Fetches a filtered list of the active magic effects on the actor. Returns a table with tes3activeMagicEffect items.

```lua
local result = tes3mobileActor:getActiveMagicEffects({ effect = ..., serial = ... })
```

**Parameters**:

* `params` (table)
	* `effect` (number): *Optional*. The magic effect ID to search for.
	* `serial` (number): *Optional*. The magic instance serial to search for.

**Returns**:

* `result` (table)

***

### `getBootsWeight`

*Read-only*. Gets the weight of the boots equipped on the actor, or 0 if no boots are equipped.

```lua
local result = tes3mobileActor:getBootsWeight()
```

**Returns**:

* `result` (number)

***

### `getFatigueTerm`

Gets the fatigue-based skill scaling term used by many game mechanics, based on the actor's current and maximum fatigue. It is equal to ``max(0, fFatigueBase - fFatigueMult * max(0, 1 - fatigue.current/fatigue.base))``

```lua
local result = tes3mobileActor:getFatigueTerm()
```

**Returns**:

* `result` (number)

***

### `getPowerUseTimestamp`

Finds the timestamp a recharging power was used. Powers recharge 24 hours after this timestamp. The timestamp units are hours. The current time as a timestamp can be accessed at tes3.getSimulationTimestamp().

```lua
local timestamp = tes3mobileActor:getPowerUseTimestamp(power)
```

**Parameters**:

* `power` ([tes3spell](../../types/tes3spell)): The spell object for the power.

**Returns**:

* `timestamp` (number)

***

### `getSkillStatistic`

Fetches the statistic object of a skill with a given index. This is the way to access skills for any type of actor, as creatures have a limited version of the skill system. Note that creatures share a statistic between multiple skills (they only have combat, magic, and stealth stats), so many values will be the same.

```lua
local result = tes3mobileActor:getSkillStatistic(skillId)
```

**Parameters**:

* `skillId` (number): The index of the skill statistic to fetch.

**Returns**:

* `result` (tes3skillStatistic)

***

### `getSkillValue`

Fetches the current value of a skill with a given index. This is the way to access skills for any type of actor, as creatures have a limited version of the skill system. Note that creatures share a statistic between multiple skills (they only have combat, magic, and stealth stats), so many values will be the same.

```lua
local result = tes3mobileActor:getSkillValue(skillId)
```

**Parameters**:

* `skillId` (number): The index of the skill statistic's value to fetch.

**Returns**:

* `result` (number)

***

### `getViewToActor`

No description yet available.

```lua
local result = tes3mobileActor:getViewToActor()
```

**Returns**:

* `result` (number)

***

### `getViewToPoint`

No description yet available.

```lua
local result = tes3mobileActor:getViewToPoint()
```

**Returns**:

* `result` (number)

***

### `getViewToPointWithFacing`

No description yet available.

```lua
local result = tes3mobileActor:getViewToPointWithFacing()
```

**Returns**:

* `result` (number)

***

### `getWeaponSpeed`

Fetches the weapon speed of the actor's currently equipped weapon, or 1.0 if no weapon is equipped.

```lua
local result = tes3mobileActor:getWeaponSpeed()
```

**Returns**:

* `result` (number)

***

### `hasFreeAction`

If true, the actor isn't paralyzed, dead, stunned, or otherwise unable to take action.

```lua
local result = tes3mobileActor:hasFreeAction()
```

**Returns**:

* `result` (boolean)

***

### `hasUsedPower`

Check if a power has been used and is recharging.

```lua
local result = tes3mobileActor:hasUsedPower(power)
```

**Parameters**:

* `power` ([tes3spell](../../types/tes3spell)): The spell object for the power.

**Returns**:

* `result` (boolean)

***

### `isAffectedByObject`

Determines if the actor is currently being affected by a given alchemy, enchantment, or spell.

```lua
local result = tes3mobileActor:isAffectedByObject(object)
```

**Parameters**:

* `object` ([tes3alchemy](../../types/tes3alchemy), [tes3enchantment](../../types/tes3enchantment), [tes3spell](../../types/tes3spell)): The magic to check for.

**Returns**:

* `result` (boolean)

***

### `rechargePower`

Makes a power immediately available for casting again.

```lua
local result = tes3mobileActor:rechargePower(power)
```

**Parameters**:

* `power` ([tes3spell](../../types/tes3spell)): The spell object for the power.

**Returns**:

* `result` (number)

***

### `setPowerUseTimestamp`

Sets the timestamp a recharging power was used. Powers recharge 24 hours after this timestamp.

```lua
tes3mobileActor:setPowerUseTimestamp(power, timestamp)
```

**Parameters**:

* `power` ([tes3spell](../../types/tes3spell)): The spell object for the power.
* `timestamp` (number): The timestamp of the moment the power was casted, or 24 hours before the recharge point. The timestamp units are hours. The current time as a timestamp can be accessed at tes3.getSimulationTimestamp().

***

### `startCombat`

Forces the actor into combat with another actor.

```lua
tes3mobileActor:startCombat(target)
```

**Parameters**:

* `target` ([tes3mobileActor](../../types/tes3mobileActor))

***

### `startDialogue`

Starts dialogue with this actor for the player.

```lua
tes3mobileActor:startDialogue()
```

***

### `stopCombat`

Ends combat for the actor.

```lua
tes3mobileActor:stopCombat(force)
```

**Parameters**:

* `force` (boolean): If false, the function won't stop combat if the actor has other valid hostile targets.

***

### `updateDerivedStatistics`

Updates statistics derived from attributes, which are magicka, fatigue, and encumbrance. Will also update the UI if used on the player. Normally handled automatically when you use tes3.modStatistic.

```lua
tes3mobileActor:updateDerivedStatistics(attribute)
```

**Parameters**:

* `attribute` ([tes3statistic](../../types/tes3statistic)): *Optional*. Limits the update to statistics derived from this attribute.  e.g. ``mobile:updateDerivedStatistics(mobile.strength)``. If not present, all derived statistics will be updated.

***

### `updateOpacity`

Updates the actor's visual opacity. Used after modifying applied chameleon or invisiblity effects.

```lua
tes3mobileActor:updateOpacity()
```

***
