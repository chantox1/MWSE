-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- A core game object used for storing world simulation data.
--- @class tes3worldController
--- @field aiDistanceScale number A value in the range [0, 1]. The (relative) maximum distance setting for AI simulation. Corresponds to the AI distance option in the Options menu.
--- @field allMobileActors tes3iterator *Read-only*. The list of all active mobile actors ([`tes3mobileActor`](https://mwse.github.io/MWSE/types/tes3mobileActor/)). Mobile actors expire after 72 hours if they have not been in a loaded cell.
--- @field armCamera tes3worldControllerRenderCamera *Read-only*. The access to the first person arms camera.
--- @field audioController tes3audioController *Read-only*. The audio controller.
--- @field blindnessFader tes3fader *Read-only*. Screen overlay fader for the blind effect.
--- @field characterRenderTarget tes3worldControllerRenderTarget *Read-only*. 
--- @field charGenState tes3globalVariable *Read-only*. The `charGenState` global variable. Indicates progress through character generation. Has a value of `-1` when chargen is complete.
--- @field countMusicTracksBattle number *Read-only*. The number of available battle music tracks.
--- @field countMusicTracksExplore number *Read-only*. The number of available explore music tracks.
--- @field criticalDamageSound tes3sound The sound played when an actor takes damage from a critical hit. It plays instead of the normal health damage sound.
--- @field cursorOff boolean If the target crosshair is disabled. Corresponds to the "Crosshair" option in the Options menu.
--- @field day tes3globalVariable *Read-only*. The `Day` global variable, indicating the current day. Day numbering starts at `1` for the first day of a month.
--- @field daysPassed tes3globalVariable *Read-only*. The `DaysPassed` global variable, indicating the days passed since the game started for this character.
--- @field deadFloatScale number 
--- @field defaultLandSound tes3sound This it the default sound played when the player lands, after a jump or a fall.
--- @field defaultLandWaterSound tes3sound This it the default sound played when the player lands in the water, after a jump or a fall.
--- @field deltaTime number The time interval (in seconds) between this frame and the last frame. Useful for calculations that involve movement or damage over a period of time.
--- @field difficulty number A number in the range [-1, 1]. Corresponds to the "Difficulty" option in the Options menu.
--- @field drowningDamageSound tes3sound The sound played when an actor takes health damage while drowning. It plays instead of the normal health damage sound.
--- @field drownSound tes3sound The sound played when an actor is losing health by drowning.
--- @field enchantedItemEffect niTextureEffect *Read-only*. The animated texture effect that is applied onto equipped enchanted items.
--- @field enchantedItemEffectCreated boolean *Read-only*. If the enchantedItemEffect is available.
--- @field enchantedItemEffectTextures tes3iterator *Read-only*. An array of textures used for the enchanted item effect.
--- @field flagLevitationDisabled boolean If levitation is disabled.
--- @field flagTeleportingDisabled boolean If teleporting is disabled.
--- @field globalScripts tes3iterator *Read-only*. A list of active global scripts.
--- @field handToHandHit2Sound tes3sound A sound played when a hand to hand attack hits. For each attack, `handToHandHitSound` or `handToHandHitSound2` are randomly chosen.
--- @field handToHandHitSound tes3sound A sound played when a hand to hand attack hits. For each attack, `handToHandHitSound` or `handToHandHitSound2` are randomly chosen.
--- @field healthDamageSound tes3sound The sound played when health damage is taken.
--- @field heavyArmorHitSound tes3sound The sound played when a heavy armor piece is hit.
--- @field helpDelay number A number in the range [0, 2]. The delay in seconds before a tooltip appears. Corresponds to the "Menu help delay" option in the Options menu.
--- @field hitFader tes3fader *Read-only*. Screen overlay fader that pulses when damage is taken.
--- @field hour tes3globalVariable *Read-only*. The `GameHour` global variable, indicating the time of day.
--- @field hudStyle number No known effect.
--- @field inputController tes3inputController *Read-only*. The controller responsible for player input.
--- @field instance HINSTANCE *Read-only*. 
--- @field itemRepairSound tes3sound The sound played when an item is repaired.
--- @field lastFrameTime number *Read-only*. The value of `tes3.worldController.systemTime` at the start of the previous frame. Measured in milliseconds since the program was started.
--- @field lightArmorHitSound tes3sound The sound played when a light armor piece is hit.
--- @field mapController tes3mapController *Read-only*. The controller responsible for the world and local maps.
--- @field maxFPS number Maximum framerate target for the engine's FPS limiter.
--- @field mediumArmorHitSound tes3sound The sound played when a medium armor piece is hit.
--- @field menuAlpha number A value in the range [0, 1]. The alpha value of the black background of menus. Corresponds to the "Menu transparency" option in the Options menu.
--- @field menuCamera tes3worldControllerRenderCamera *Read-only*. The access to the camera used to render menus.
--- @field menuClickSound tes3sound The sound played when a UI button or other control is clicked.
--- @field menuController tes3uiMenuController *Read-only*. The controller responsible for the menu system.
--- @field menuSizeSound tes3sound Unused sound. Not used when a menu is resized.
--- @field missSound tes3sound The sound played when a weapon fails its to-hit check.
--- @field mobManager tes3mobManager *Read-only*. The manager responsible for mobile objects and collision.
--- @field month tes3globalVariable *Read-only*. The `Month` global variable, indicating the current month. Month numbering starts at `0` for the first month, Morning Star.
--- @field monthsToRespawn tes3globalVariable *Read-only*. The `monthsToRespawn` global variable, used by the game to count the time left until containers are respawned. This is decremented at the end of a month (or end of a day with the appropriate MCP option). When it reaches `0`, containers are respawned.
--- @field mouseSensitivityX number The horizontal camera rotation sensitivity. Corresponds to the "Horizontal sensitivity" option in the Options menu.
--- @field mouseSensitivityY number The vertical camera rotation sensitivity. Corresponds to the "Vertical sensitivity" option in the Options menu.
--- @field musicSituation number The kind of music being played. Only updates when music is not muted.
--- `0` Explore music
--- `1` Combat music
--- `2` Main menu music
--- 
--- Note: These values are available as [`tes3.musicSituation`](https://mwse.github.io/MWSE/references/music-situations/) constants
--- @field nodeCursor niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. The scenegraph node for the target crosshair.
--- @field parentWindowHandle HWND *Read-only*. Handle to the parent window.
--- @field projectionDistance number 
--- @field quests tes3iterator *Read-only*. A list of all available [`tes3quest`](https://mwse.github.io/MWSE/types/tes3quest/)s.
--- @field quickSaveWhenResting boolean Controls if auto-save on resting or waiting is enabled. Corresponds to the "Auto-save when rest" option in the Options menu.
--- @field rechargingItems tes3iterator *Read-only*. A list of enchanted items that are recharging (type [`tes3rechargingItem`](https://mwse.github.io/MWSE/types/tes3rechargingItem/)). Items in the list may not all belong to the player.
--- @field shaderWaterReflectTerrain boolean If pixel shader water reflection includes terrain. Not functional with MGE enabled.
--- @field shaderWaterReflectUpdate number Period between reflection updates for pixel shader water. Not functional with MGE enabled.
--- @field shadowCamera tes3worldControllerRenderCamera *Read-only*. The access to the camera used for shadows rendering.
--- @field shadows number An integer in the range [0,6]. Controls the amount of actor shadows drawn. Corresponds to the "Real-time shadows" option in the Options menu.
--- @field showSubtitles boolean If subtitles are shown. Corresponds to the "Subtitles" option in the Options menu.
--- @field simulationTimeScalar number A scalar used for simulation time. At the start of every frame, the `deltaTime` is multiplied by this value. Doing this here is safer than doing it in another event.
--- @field splashController tes3splashController *Read-only*. Access to the splash controller.
--- @field splashscreenCamera tes3worldControllerRenderCamera *Read-only*. The access to the camera used to render splashscreens.
--- @field stopGameLoop boolean When true, the game simulation loop will stop. Not normally used, and may have other unknown effects.
--- @field sunglareFader tes3fader *Read-only*. Screen overlay fader for sunglare.
--- @field systemTime number *Read-only*. Time in milliseconds since the program was started.
--- @field timescale tes3globalVariable *Read-only*. The `timescale` global variable. Used to convert real time to in-game time.
--- @field transitionFader tes3fader *Read-only*. Screen overlay fader for cell transitions.
--- @field useBestAttack boolean Automatically choose the best attack direction for attacks. Corresponds to the "Always use best attack" option in the Options menu.
--- @field vfxManager tes3vfxManager *Read-only*. Access to the VFX manager.
--- @field viewHeight number *Read-only*. The height of the UI viewport in pixels. Affected by UI scaling. For screen resolution, use [`tes3.getViewportSize()`](https://mwse.github.io/MWSE/apis/tes3/#tes3getviewportsize).
--- @field viewWidth number *Read-only*. The width of the UI viewport in pixels. Affected by UI scaling. For screen resolution, use [`tes3.getViewportSize()`](https://mwse.github.io/MWSE/apis/tes3/#tes3getviewportsize).
--- @field weaponSwishSound tes3sound The sound played when an attack with a melee weapon is performed. It always plays when a melee attack is released, irrespective of hit or miss.
--- @field weatherController tes3weatherController *Read-only*. The weather controller.
--- @field werewolfFader tes3fader *Read-only*. Screen overlay fader for werewolf vision.
--- @field werewolfFOV number The camera FOV when the player is a werewolf.
--- @field worldCamera tes3worldControllerRenderCamera *Read-only*. The access to the world camera.
--- @field year tes3globalVariable *Read-only*. The `Year` global variable, indicating the current year.
tes3worldController = {}

--- This function applies an enchantment's effects to a scene node.
--- @param node niBillboardNode|niCollisionSwitch|niNode|niSwitchNode A scene node to which to apply the enchantment's effects.
--- @param enchantment tes3enchantment The enchantment's effects to apply.
--- @return boolean result No description yet available.
function tes3worldController.applyEnchantEffect(node, enchantment) end

