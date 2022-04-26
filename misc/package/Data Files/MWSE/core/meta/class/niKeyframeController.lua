--- @meta
--- @diagnostic disable:undefined-doc-name

--- The controller responsible for animating transforms, using position, rotation, and scale keys.
--- @class niKeyframeController : niTimeController, niObject
--- @field data niKeyframeData *Read-only*. The keyframe data used by the controller.
--- @field lastUsedPositionIndex number The last position index that the game engine used.
--- @field lastUsedRotationIndex number The last rotation index that the game engine used.
--- @field lastUsedScaleIndex number The last scale index that the game engine used.
niKeyframeController = {}

