--- @class balatro.Item: balatro.Center
--- @field name string
--- @field key string
--- @field set string
--- @field order number
--- @field pos Position
--- @field skip_pool? boolean
--- @field omit? boolean
--- @field atlas? string

--- @class balatro.Item.Default
--- @field max number
--- @field freq number
--- @field line string
--- @field label string
--- @field effect string
--- @field cost_mult number
--- @field config table

--- @class balatro.Item.JustPos
--- @field key string
--- @field pos Position

--- @class balatro.Item.Discoverable: balatro.Item
--- @field discovered? boolean
--- @field alerted? boolean
--- @field start_alerted? boolean

--- @class balatro.Item.Unlockable
--- @field unlocked? boolean

--- @class balatro.Item.DiscoverableUnlockable: balatro.Item.Discoverable, balatro.Item.Unlockable

--- @class balatro.Item.Blind: balatro.Item.Discoverable
--- @field set? nil
--- @field defeated? boolean
--- @field dollars number
--- @field mult number
--- @field debuff? table
--- @field vars? table
--- @field boss? MinMax | {showdown: boolean?}
--- @field boss_colour? ColorHex

--- @class balatro.Item.Tag.Config: { [any]: any }
--- @field type string

--- @class balatro.Item.Tag: balatro.Item.Discoverable
--- @field set 'Tag'
--- @field min_anite? number
--- @field requires? string
--- @field config balatro.Item.Tag.Config

--- @class balatro.Item.Stake: balatro.Item
--- @field set 'Stake'
--- @field unlocked? boolean
--- @field stake_level number

--- @class balatro.Item.Card
--- @field name string
--- @field suit Suit
--- @field value string
--- @field pos Position
--- @field atlas? string

--- @class balatro.Item.Config
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

--- @class balatro.Item.Card.Center: balatro.Item.Discoverable
--- @field cost number
--- @field cost_mult? number
--- @field config balatro.Item.Config
--- @field effect? string

--- @class balatro.Item.Calc
--- @class balatro.Item.Calc.Center: balatro.Item.Calc
--- @class balatro.Item.Calc.Card: balatro.Item.Calc

--- @class balatro.Item.Card.Sellable

--- @class balatro.Item.Joker: balatro.Item.Card.Center, balatro.Item.Calc.Center, balatro.Item.Card.Sellable
--- @field set 'Joker'
--- @field unlocked? boolean
--- @field blueprint_compat? boolean
--- @field perishable_compat? boolean
--- @field eternal_compat? boolean
--- @field rarity number
--- @field enhancement_gate? string
--- @field soul_pos? Position
--- @field unlock_condition? balatro.Item.UnlockCondition

--- @class balatro.Item.Consumable: balatro.Item.Card.Center, balatro.Item.Calc.Center, balatro.Item.Card.Sellable
--- @field consumeable boolean

--- @class balatro.Item.Tarot.Config: table
--- @field mod_conv? string
--- @field suit_conv? string
--- @field max_highlighted? number

--- @class balatro.Item.Tarot: balatro.Item.Consumable
--- @field set 'Tarot'
--- @field config balatro.Item.Tarot.Config

--- @class balatro.Item.Planet: balatro.Item.Consumable
--- @field set 'Planet'
--- @field freq? number
--- @field config { hand_type: string, softlock: boolean? }

--- @class balatro.Item.Spectral: balatro.Item.Consumable
--- @field set 'Spectral'
--- @field hidden? boolean
--- @field effect? nil

--- @class balatro.Item.Voucher: balatro.Item.Card.Center, balatro.Item.Unlockable
--- @field set 'Voucher'
--- @field available boolean
--- @field config table
--- @field requires? string[]
--- @field unlock_condition? balatro.Item.UnlockCondition
--- @field effect? nil

--- @class balatro.Item.EnhancedCard: balatro.Item.Card.Center, balatro.Item.Calc.Card
--- @field cost? number
--- @field set 'Enhanced'
--- @field max? number
--- @field label? string

--- @class balatro.Item.Edition: balatro.Item.Card.Center, balatro.Item.Calc.Card, balatro.Item.Calc.Center
--- @field cost? number
--- @field set 'Edition'
--- @field config table | { extra: number? }

--- @class balatro.Item.Booster: balatro.Item.Card.Center
--- @field set 'Booster'
--- @field weight? number
--- @field kind? balatro.Item.BoosterKind
--- @field config { extra: number, choose: number }

--- @class balatro.Item.Seal: balatro.Item.Discoverable, balatro.Item.Calc.Card
--- @field set 'Seal'
--- @field name? nil
--- @field pos? nil

--- @alias balatro.Item.BoosterKind 'Arcana' | 'Celestial' | 'Spectral' | 'Standard' | 'Buffoon' | string

--- @class balatro.Item.BackConfig: { [string]: any }
--- @field discards? number
--- @field hands? number
--- @field dollars? number
--- @field extra_discard_bonus? number
--- @field extra_hand_bonus? number
--- @field no_interest? boolean
--- @field consumables? string[]
--- @field voucher? string
--- @field vouchers? string[]
--- @field consumable_slot? number
--- @field spectral_rate? number
--- @field remove_faces? boolean
--- @field hand_size? number
--- @field joker_slot? number
--- @field ante_scaling? number
--- @field randomize_rank_suit? boolean

--- @class balatro.Item.Back: balatro.Item.DiscoverableUnlockable
--- @field set 'Back'
--- @field stake? number
--- @field config balatro.Item.BackConfig
--- @field unlock_condition? balatro.Item.UnlockCondition
--- @field omit boolean? For challenge deck

--- @class balatro.Item.UnlockCondition
--- @field type string
--- @field extra nil | number | string | {count: number, suit: string} for Vouchers, extra is always number
--- @field deck? string
--- @field stake? number
--- @field ante? number
--- @field amount? number
--- @field hidden? boolean

--- @class balatro.Center
--- @field key string
