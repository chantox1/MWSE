--- @meta
--- @diagnostic disable:undefined-doc-name

--- A structure containing properties specific to scroll panes.
--- @class tes3uiScrollPane
--- @field contentPane tes3uiElement *Read-only*. The content element of this pane.
--- @field positionX number The horizontal scroll offset in pixels.
--- @field positionY number The vertical scroll offset in pixels.
--- @field scrollbarVisible boolean If `true`, the scrollbar will be visible.
tes3uiScrollPane = {}

--- Updates the scrollbar slider and scrollbar limits after adding or removing elements to the content container. Because content size depends on layout, this must be run after calling `updateLayout` on the widget element. Only required if the content size changes.
function tes3uiScrollPane:contentsChanged() end
