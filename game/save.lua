--- @class balatro.Save
--- @field [string] any
--- @field cardAreas table<string, balatro.CardArea.Save>
--- @field tags table<number, balatro.Tag.Save>
--- @field GAME balatro.Game.Current
--- @field STATE balatro.Game.StateEnum
--- @field ACTION any
--- @field BLIND balatro.Blind.Save
--- @field BACK balatro.Back.Save
--- @field VERSION string

--- @class balatro.Save.Metrics.Send
--- @field type string | 'save_metrics'
--- @field save_metrics balatro.Metrics

--- @class balatro.Save.Progress.Send
--- @field type string | 'save_progress'
--- @field save_progress balatro.Metrics

--- @alias balatro.Save.Progress.UDA
--- |+ 'u' unlocked
--- |+ 'd' discovered
--- |+ 'a' alerted

--- @class balatro.Save.Progress
--- unlocked, discovered, alerted
--- key is the center key
--- @field UDA table<string, balatro.Save.Progress.UDA>
--- @field SETTINGS balatro.Settings
--- @field PROFILE balatro.Profile

--- @class balatro.Save.Settings
--- @field type string | 'save_settings'
--- @field save_settings balatro.Settings
--- @field profile_num number
--- @field save_profile balatro.Profile

--- @class balatro.Save.Run
--- @field type string | 'save_run'
--- @field save_table balatro.Save
--- @field profile_num number

