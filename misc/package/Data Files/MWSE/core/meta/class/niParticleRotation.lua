-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- This modifier rotates particles a constant rate.
--- @class niParticleRotation : niParticleModifier, niObject
--- @field initialAxis tes3vector3 The axis of rotation for the particles. If `.randomInitialAxis` is set to true then this won't be used.
--- @field randomInitialAxis boolean If set to true, random axis of rotation will be used to rotate each particle.
--- @field rotationSpeed number The speed at which each particle rotates.
niParticleRotation = {}

