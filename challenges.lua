--- @class balatro.Game
--- @field CHALLENGES balatro.Challenge[]

--- @class balatro.Challenge
--- @field name string
--- @field id string
--- @field rules balatro.Challenge.Rule
--- @field jokers balatro.Challenge.Joker[]
--- @field consumeables balatro.Challenge.IdField[]
--- @field vouchers balatro.Challenge.IdField[]
--- @field deck balatro.Challenge.Deck
--- @field restrictions balatro.Challenge.Resrictions

--- @class balatro.Challenge.Joker
--- @field id string
--- @field eternal? boolean
--- @field edition SpecialEdition | nil
--- @field pinned? boolean

--- @class balatro.Challenge.Rule
--- @field custom balatro.Challenge.RuleInfo[]
--- @field modifiers balatro.Challenge.RuleInfo[]

--- @class balatro.Challenge.Deck
--- @field type 'Challenge Deck' | string
--- @field cards? balatro.Challenge.DeckCard[]

--- @class balatro.Challenge.DeckCard
--- @field s 'D' | 'C' | 'H' | 'S'
--- @field r '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9'

--- @class balatro.Challenge.Resrictions
--- @field banned_cards balatro.Challenge.IdField[]
--- @field banned_tags balatro.Challenge.IdField[]
--- @field banned_other balatro.Challenge.IdField[]

--- @class balatro.Challenge.IdField: table
--- @field id string

--- @class balatro.Challenge.RuleInfo: balatro.Challenge.IdField
--- @field value any
