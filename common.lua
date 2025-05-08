--- @class WidthHeight
--- @field w number
--- @field h number

--- @class Position
--- @field x number
--- @field y number

--- @class MinMax
--- @field min number
--- @field max number

--- @class PositionAndSize: Position, WidthHeight

--- @class CardSuit<T>: { Spades: T, Hearts: T, Clubs: T, Diamonds: T}

--- @alias ColorHex [number, number, number, number]
--- @alias ColorHexRgb [number, number, number]

--- @alias Rank '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | 'Ace' | 'Jack' | 'King' | 'Queen'
--- @alias Suit 'Hearts' | 'Clubs' | 'Diamonds' | 'Spades'
--- @alias SpecialEdition 'foil' | 'holo' | 'polychrome' | 'negative' | string
--- @alias PokerHand 'Flush Five' | 'Flush House' | 'Five of a Kind' | 'Straight Flush' | 'Four of a Kind' | 'Full House' | 'Flush' | 'Straight' | 'Three of a Kind' | 'Two Pair' | 'Pair' | 'High Card'
--- @alias BlindType 'Small' | 'Big' | 'Boss'
--- @alias BlindState 'Current'  | 'Defeated'  | 'Select'  | 'Selected'  | 'Skipped'  | 'Upcoming'