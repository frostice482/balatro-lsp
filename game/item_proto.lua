--- @class balatro.Item: balatro.Center
--- @field name string
--- @field key string
--- @field set string
--- @field order number
--- @field pos Position
--- @field skip_pool? boolean
--- @field omit? boolean

--- @class balatro.Item.Default
--- @field max number
--- @field freq number
--- @field line string
--- @field label string
--- @field effect string
--- @field cost_mult number
--- @field config table

--- @class balatro.Item.JustPos
--- @field pos Position

--- @class balatro.Item.Discoverable: balatro.Item
--- @field discovered? boolean
--- @field alerted? boolean
--- @field start_alerted? boolean

--- @class balatro.Item.DiscoverableUnlockable: balatro.Item.Discoverable, balatro.Item
--- @field unlocked? boolean

--- @class balatro.Item.Blind: balatro.Item.Discoverable
--- @field set? nil
--- @field defeated? boolean
--- @field dollars number
--- @field mult number
--- @field debuff? table
--- @field vars? table
--- @field boss? MinMax | {showdown: boolean?}
--- @field boss_colour? ColorHex

--- @class balatro.Item.Tag: balatro.Item.Discoverable
--- @field set 'Tag'
--- @field min_anite? number
--- @field requires? string
--- @field config table | {type: string}

--- @class balatro.Item.Seal: balatro.Item.Discoverable
--- @field set 'Seal'
--- @field name nil
--- @field pos nil

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

--- @class balatro.Item.Effect
--- @field effect? string
--- @field config table

--- @class balatro.Item.Buyable: balatro.Item.Effect, balatro.Item.Discoverable
--- @field cost number
--- @field cost_mult? number

--- @class balatro.Item.Joker: balatro.Item.Buyable
--- @field set 'Joker'
--- @field unlocked? boolean
--- @field blueprint_compat? boolean
--- @field perishable_compat? boolean
--- @field eternal_compat? boolean
--- @field rarity number
--- @field enhancement_gate? string

--- @class balatro.Item.Consumable: balatro.Item.Buyable
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
--- @field effect nil

--- @class balatro.Item.Voucher: balatro.Item.DiscoverableUnlockable
--- @field set 'Voucher'
--- @field available boolean
--- @field cost number
--- @field config table
--- @field requires? string
--- @field unlock_condition? balatro.Item.UnlockCondition

--- @class balatro.Item.BackConfig: { [string]: any }
--- @field discards? number
--- @field hands? number
--- @field dollars? number
--- @field extra_discard_bonus? number
--- @field extra_hand_bonus? number
--- @field no_interest? boolean
--- @field joker_slow? number
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

--- @class balatro.Item.EnhancedCard: balatro.Item, balatro.Item.Effect
--- @field set 'Enhanced'
--- @field max? number
--- @field label? string

--- @class balatro.Item.Edition: balatro.Item.DiscoverableUnlockable
--- @field set 'Edition'
--- @field atlas? string
--- @field config { extra: number? }

--- @class balatro.Item.Booster: balatro.Item.Discoverable
--- @field set 'Booster'
--- @field weight? number
--- @field kind? balatro.Item.BoosterKind
--- @field cost number
--- @field atlas string
--- @field config { extra: number, choose: number }

--- @alias balatro.Item.BoosterKind 'Arcana' | 'Celestial' | 'Spectral' | 'Standard' | 'Buffoon' | string

--- @class balatro.Item.UnlockCondition
--- @field type string
--- @field extra nil | number | string | {count: number, suit: string} for Vouchers, extra is always number
--- @field deck? string
--- @field stake? number
--- @field ante? number
--- @field amount? number

--- @class balatro.Center
--- @field key string
