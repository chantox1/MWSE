-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- This node adjusts its render-time orientation so that the local z axis will face the camera. It supports multiple modes: camera parallel, or rotation around the local Y axis.
--- @class niBillboardNode : niNode, niAVObject, niObjectNET, niObject
--- @field mode integer The orientation mode.
--- `0` Always face camera. Local z-axis becomes parallel to the camera. Minimizes rotation difference from the previous frame for smoother motion.
--- `1` Rotate about up vector. The object is rotated around its local y-axis so that its z-axis is pointing towards the camera.
--- `2` Rigid face camera. Local z-axis becomes parallel to the camera. Does not depend on previous frame.
--- 
niBillboardNode = {}

--- Creates a new, empty niBillboardNode, with the mode set to rotate about the model-space up vector.
--- @return niBillboardNode node No description yet available.
function niBillboardNode.new() end

--- Updates the world transform to point at a camera. Used automatically during rendering. This method is only needed when you need to get the world transform without rendering.
--- @param camera niCamera No description yet available.
function niBillboardNode:rotateToCamera(camera) end

