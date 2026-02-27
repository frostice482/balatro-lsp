--- @class balatro.Item.Bare
--- @field key string

--- @class balatro.Item: balatro.Item.Bare
--- @field name string
--- @field key string
--- @field set string
--- @field order number
--- @field pos Position
--- @field skip_pool? boolean
--- @field omit? boolean
--- @field atlas? string
--- @field config? table

--- @class balatro.Item.Default
--- @field max number
--- @field freq number
--- @field line string
--- @field label string
--- @field effect string
--- @field cost_mult number

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
