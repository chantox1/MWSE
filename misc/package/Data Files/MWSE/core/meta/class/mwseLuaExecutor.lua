--- @meta

--- A handle to a command excuted using `os.execute` configured to run asynchronously.
--- @class mwseLuaExecutor
--- @field command string The command originally passed to `os.execute`.
--- @field errorCode number The error code of the program, or 0 if there was no error.
--- @field exitCode number|nil The exit code of the program, or nil if the program has not yet finished.
--- @field ready boolean If true, the program is no longer running and output can be read.
mwseLuaExecutor = {}

--- Reads the current output of the program, and clears the output buffer.
--- @return string output The output written to stdout by the program.
function mwseLuaExecutor:getOutput() end

--- Pauses the main thread, locking up the program until the program has finished.
function mwseLuaExecutor:wait() end
