--- @class balatro.Item.Card.Calc
--- @class balatro.Item.Card.Base.Calc: balatro.Item.Card.Calc
--- @class balatro.Item.Card.Center.Calc: balatro.Item.Card.Calc

--- @class balatro.Item.Card.Base: balatro.Item.Card.Base.Calc
--- @field name string
--- @field suit Suit
--- @field value string
--- @field pos Position
--- @field atlas? string

--#region centers

--- @class balatro.Item.Card.Config
--- @field mult? number
--- @field h_mult? number
--- @field h_x_mult? number
--- @field h_dollars? number
--- @field p_dollars? number
--- @field t_mult? number
--- @field t_chips? number
--- @field Xmult? number
--- @field h_size? number
--- @field d_size? number
--- @field extra? any
--- @field type? string

--- @class balatro.Item.Card.Center: balatro.Item.Discoverable, balatro.Item.Card.Center.Calc
--- @field cost number
--- @field cost_mult? number
--- @field config balatro.Item.Card.Config
--- @field effect? string

--- @class balatro.Item.Card.Sellable

--- @class balatro.Item.Joker: balatro.Item.Card.Center, balatro.Item.Card.Sellable
--- @field set 'Joker'
--- @field unlocked? boolean
--- @field blueprint_compat? boolean
--- @field perishable_compat? boolean
--- @field eternal_compat? boolean
--- @field rarity number
--- @field enhancement_gate? string
--- @field soul_pos? Position
--- @field unlock_condition? balatro.Item.UnlockCondition

--- @class balatro.Item.Voucher: balatro.Item.Card.Center, balatro.Item.Unlockable
--- @field set 'Voucher'
--- @field config table
--- @field requires? string[]
--- @field unlock_condition? balatro.Item.UnlockCondition
--- @field effect? nil

--- @class balatro.Item.Booster.Config: table
--- @field extra number
--- @field choose? number

--- @class balatro.Item.Booster: balatro.Item.Card.Center
--- @field set 'Booster'
--- @field weight? number
--- @field kind? balatro.Item.BoosterKind
--- @field config balatro.Item.Booster.Config

--#region consumable

--- @class balatro.Item.Consumable: balatro.Item.Card.Center, balatro.Item.Card.Sellable
--- @field consumeable boolean

--- @class balatro.Item.Tarot.Config: table
--- @field mod_conv? string
--- @field suit_conv? string
--- @field max_highlighted? number
--- @field remove_card? boolean
--- @field extra? any

--- @class balatro.Item.Tarot: balatro.Item.Consumable
--- @field set 'Tarot'
--- @field config balatro.Item.Tarot.Config

--- @class balatro.Item.Planet.Config: table
--- @field hand_type string
--- @field softlock? boolean

--- @class balatro.Item.Planet: balatro.Item.Consumable
--- @field set 'Planet'
--- @field config balatro.Item.Planet.Config

--- @class balatro.Item.Spectral.Config: table
--- @field max_highlighted? number
--- @field extra? any

--- @class balatro.Item.Spectral: balatro.Item.Consumable
--- @field set 'Spectral'
--- @field effect? string
--- @field config balatro.Item.Spectral.Config

--#endregion consumable
--#endregion centers

--#region part of card

--- @class balatro.Item.Card.Part: balatro.Item, balatro.Item.Card.Base.Calc, balatro.Item.Card.Center.Calc

--- @class balatro.Item.EnhancedCard: balatro.Item.Card.Part
--- @field set 'Enhanced'

--- @class balatro.Item.Edition: balatro.Item.Card.Part
--- @field set 'Edition'

--- @class balatro.Item.Seal: balatro.Item.Card.Part
--- @field set 'Seal'
--- @field name? string
--- @field pos? Position

--#endregion

--- @alias balatro.Item.BoosterKind 'Arcana' | 'Celestial' | 'Spectral' | 'Standard' | 'Buffoon' | string
