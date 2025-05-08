--- @class balatro.Settings: table
--- @field COMP balatro.Settings.Comp
--- @field DEMO balatro.Settings.Demo
--- @field ACHIEVEMENTS_EARNED balatro.Settings.AchievementEarned
--- @field crashreports boolean
--- @field colourblind_option boolean
--- @field language string
--- @field screenshake number
--- @field run_stake_stickers boolean
--- @field rumble boolean Set to balatro.Game.F_RUMBLE
--- @field play_button_pos number
--- @field GAMESPEED number
--- @field paused boolean
--- @field SOUND balatro.Settings.Sound
--- @field WINDOW balatro.Settings.Window
--- @field CUSTOM_DECK balatro.Settings.CustomDecks
--- @field GRAPHICS balatro.Settings.Graphics
--- @field QUEUED_CHANGE table `Game:start_up()`
--- @field music_control balatro.Settings.MusicControl `Game:start_up()`
--- @field perf_mode boolean
--- @field profile number
--- @field reduced_motion boolean
--- @field tutorial_complete boolean
--- @field tutorial_progress table
--- @field version string

--- @class balatro.Timers: { [string]: number }
--- @field TOTAL number
--- @field REAL number
--- @field REAL_SHADER number
--- @field UPTIME number
--- @field BACKGROUND number

--- @alias balatro.TimerType 'TOTAL' | 'REAL' | 'REAL_SHADER' | 'UPTIME' | 'BACKGROUND'

--- @class balatro.Frames
--- @field DRAW number
--- @field MOVE number

--- @class balatro.ExpTimes
--- @field xy number
--- @field scale number
--- @field r number

--- @class balatro.Settings.Sound
--- @field xy number
--- @field scale number
--- @field r number

--- @class balatro.Settings.Display
--- @field name string
--- @field screen_res WidthHeight

--- @class balatro.Settings.Window
--- @field screenmode "Windowed" | "Fullscreen" | "Borderless"
--- @field vsync number -1: adaptive, 0: off, 1: on
--- @field selected_display number
--- @field display_names string[]
--- @field DISPLAYS balatro.Settings.Display[]

--- @class balatro.Settings.CustomDecks: { [string]: balatro.Settings.CustomDeckData }
--- @field Collabs balatro.Settings.CustomDeckData

--- @alias balatro.Settings.CustomDeckData CardSuit<string>

--- @class balatro.Settings.Graphics
--- @field texture_scaling number
--- @field shadows 'On' | 'Off' | boolean Yeah it's string in the source
--- @field crt number
--- @field bloom number

--- @class balatro.Settings.MusicControl
--- @field desired_track string
--- @field current_track string
--- @field lerp number

--- @class balatro.Settings.Comp Competition / Content specific setting
--- @field name string
--- @field prev_name string
--- @field submission_name boolean?
--- @field score number

--- @class balatro.Settings.Demo Demo specific setting
--- @field total_uptime number
--- @field timed_CTA_shown boolean
--- @field win_CTA_shown boolean
--- @field quit_CTA_shown boolean

--- @class balatro.Settings.AchievementEarned: { [string]: boolean? }
--- @field _100000k boolean?                100,000K
--- @field _1000k boolean?                  1,000K
--- @field _10k boolean?                    10K
--- @field ante_up boolean?                 Ante Up!
--- @field ante_upper boolean?              Ante Upper!
--- @field astronomy boolean?               Astronomy
--- @field big_hands boolean?               Big Hands
--- @field card_discarder boolean?          Card Discarder
--- @field card_player boolean?             Card Player
--- @field cartomancy boolean?              Cartomancy
--- @field clairvoyance boolean?            Clairvoyance
--- @field completionist boolean?           Completionist
--- @field completionist_plus boolean?      Completionist+
--- @field completionist_plus_plus boolean? Completionist++
--- @field extreme_couponer boolean?        Extreme Couponer
--- @field flushed boolean?                 Flushed
--- @field heads_up boolean?                Heads Up
--- @field high_stakes boolean?             High Stakes
--- @field legendary boolean?               Legendary
--- @field low_stakes boolean?              Low Stakes
--- @field mid_stakes boolean?              Mid Stakes
--- @field nest_egg boolean?                Nest Egg
--- @field retrograde boolean?              Retrograde
--- @field roi boolean?                     ROI
--- @field royale boolean?                  Royale
--- @field rule_bender boolean?             Rule Bender
--- @field rule_breaker boolean?            Rule Breaker
--- @field shattered boolean?               Shattered
--- @field speedrunner boolean?             Speedrunner
--- @field tiny_hands boolean?              Tiny Hands
--- @field you_get_what_you_get boolean?    You Get What You Get
