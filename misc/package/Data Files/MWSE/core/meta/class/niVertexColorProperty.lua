-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- A rendering property that allows the application to control the method used to compute colors for each vertex in a geometry object. This class enables effects such as static pre-lighting, dynamic lighting, etc.
--- @class niVertexColorProperty : niProperty, niObjectNET, niObject
--- @field lighting integer Describes how vertex colors influence lighting.
--- 
--- Value | Mode                   | Description
--- ----- | ---------------------- | -----------------
--- 0     | LIGHT_MODE_EMISSIVE    | Only the emissive component of the lighting equation is used. No dynamic lights are considered in the lighting process.
--- 1	  | LIGHT_MODE_EMI_AMB_DIF | The emissive, ambient, and diffuse components of the lighting equation are all used.
--- @field source integer Determines how vertex and material colors are mixed on subclasses of niAVObject.
--- 
--- Value | Mode                   | Description
--- ----- | ---------------------- | -----------------
--- 0     | VERT_MODE_SRC_IGNORE   | Emissive, ambient, and diffuse colors are all specified by the niMaterialProperty.
--- 1	  | VERT_MODE_SRC_EMISSIVE | Emissive colors are specified by the source vertex colors. Ambient and Diffuse are specified by the niMaterialProperty.
--- 2	  | VERT_MODE_SRC_AMB_DIF  | Ambient and Diffuse colors are specified by the source vertex colors. Emissive is specified by the niMaterialProperty (Default).
niVertexColorProperty = {}

--- Creates a new niVertexColorProperty with `lighting` set to `LIGHT_MODE_EMI_AMB_DIF` and `source` set to `VERT_MODE_SRC_IGNORE`.
--- @return niVertexColorProperty property No description yet available.
function niVertexColorProperty.new() end

