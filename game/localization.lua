--- @class balatro.Localization
--- @field description balatro.Loc.Desc
--- @field misc balatro.Loc.Misc

--- @class balatro.Game.Localization: balatro.Localization
--- @field quips_parsed table<string, balatro.Loc.ParsedEntry>
--- @field tutorial_parsed table<string, balatro.Loc.ParsedEntry>

--- @class balatro.Loc.Desc: { [string]: table<string, balatro.Loc.NameText> }
--- @field Blind table<string, balatro.Loc.NameText>
--- @field Edition table<string, balatro.Loc.NameText>
--- @field Enhanced table<string, balatro.Loc.NameText>
--- @field Joker table<string, balatro.Loc.NameText>
--- @field Other table<string, balatro.Loc.NameText>
--- @field Planet table<string, balatro.Loc.NameText>
--- @field Spectral table<string, balatro.Loc.NameText>
--- @field Stake table<string, balatro.Loc.NameText>
--- @field Tag table<string, balatro.Loc.NameText>
--- @field Tarot table<string, balatro.Loc.NameText>
--- @field Voucher table<string, balatro.Loc.NameText>

--- @class balatro.Loc.Misc: table
--- @field achievement_descriptions table<string, string>
--- @field achievement_names table<string, string>
--- @field challenge_names table<string, string>
--- @field collabs CardSuit<table<string, string>>
--- @field dictionary table<string, string>
--- @field high_scores table<string, string>
--- @field labels table<string, string>
--- @field poker_hand_description table<PokerHand, string>
--- @field poker_hands table<PokerHand, string>
--- @field quips table<string, string[]>
--- @field ranks table<Rank, string>
--- @field suits_plural table<Suit, string>
--- @field suits_singular table<Suit, string>
--- @field tutorial table<string, string[]>
--- @field v_text table<string, string[]>

--- @class balatro.Loc.NameText
--- @field name string

--- @class balatro.Loc.ParsedEntry: { [number]: balatro.Loc.Parsed[] }
--- @field multi_line boolean

--- @class balatro.Loc.Parsed
--- @field control table<string, string>
--- @field strings string[]
