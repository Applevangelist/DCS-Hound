--- Hound databases
-- @local
-- @module HOUND.DB
-- @field HOUND.DB

do
    HOUND.DB = {}

    local l_mist = mist
    local l_math = math



    --- SAM database
    -- @table HOUND.DB.Radars
    -- @field @string Name NATO Name
    -- @field #table Assigned Which Battery this radar can belong to
    -- @field #table Role Role of radar in battery
    -- @field #string Band Radio Band the radar operates in
    -- @field #bool Primary set to True if this is a primary radar for site (usually FCR)
    -- @usage
    -- ['p-19 s-125 sr'] = {
    --     ['Name'] = "Flat Face",
    --     ['Assigned'] = {"SA-2","SA-3"},
    --     ['Role'] = {"SR"},
    --     ['Band'] = 'C',
    --     ['Primary'] = false
    -- }
    HOUND.DB.Radars = {
        -- EWR --
        ['1L13 EWR'] = {
            ['Name'] = "Box Spring",
            ['Assigned'] = {"EWR"},
            ['Role'] = {"EWR"},
            ['Band'] = 'A',
            ['Primary'] = false
        },
        ['55G6 EWR'] = {
            ['Name'] = "Tall Rack",
            ['Assigned'] = {"EWR"},
            ['Role'] = {"EWR"},
            ['Band'] = 'A',
            ['Primary'] = false
        },
        ['FPS-117'] = {
            ['Name'] = "Seek Igloo",
            ['Assigned'] = {"EWR"},
            ['Role'] = {"EWR"},
            ['Band'] = 'D',
            ['Primary'] = false
        },
        ['FPS-117 Dome'] = {
            ['Name'] = "Seek Igloo",
            ['Assigned'] = {"EWR"},
            ['Role'] = {"EWR"},
            ['Band'] = 'D',
            ['Primary'] = false
        },
        -- SAM radars --
        ['p-19 s-125 sr'] = {
            ['Name'] = "Flat Face",
            ['Assigned'] = {"SA-2","SA-3","SA-5"},
            ['Role'] = {"SR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['SNR_75V'] = {
            ['Name'] = "Fan-song",
            ['Assigned'] = {"SA-2"},
            ['Role'] = {"TR"},
            ['Band'] = 'G',
            ['Primary'] = true
        },
        ['RD_75'] = {
            ['Name'] = "Amazonka",
            ['Assigned'] = {"SA-2"},
            ['Role'] = {"RF"},
            ['Band'] = 'G',
            ['Primary'] = false
        },
        ['snr s-125 tr'] = {
            ['Name'] = "Low Blow",
            ['Assigned'] = {"SA-3"},
            ['Role'] = {"TR"},
            ['Band'] = 'I',
            ['Primary'] = true
        },
        ['Kub 1S91 str'] = {
            ['Name'] = "Straight Flush",
            ['Assigned'] = {"SA-6"},
            ['Role'] = {"SR","TR"},
            ['Band'] = 'G',
            ['Primary'] = true
        },
        ['Osa 9A33 ln'] = {
            ['Name'] = "Osa",
            ['Assigned'] = {"SA-8"},
            ['Role'] = {"SR","TR"},
            ['Band'] = 'H',
            ['Primary'] = true
        },
        ['S-300PS 40B6MD sr'] = {
            ['Name'] = "Clam Shell",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"SR"},
            ['Band'] = 'I',
            ['Primary'] = false
        },
        ['S-300PS 64H6E sr'] = {
            ['Name'] = "Big Bird",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"SR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['RLS_19J6'] = {
            ['Name'] = "Tin Shield",
            ['Assigned'] = {"SA-5"},
            ['Role'] = {"SR"},
            ['Band'] = 'E',
            ['Primary'] = false
        },
        ['S-300PS 40B6M tr'] = {
            ['Name'] = "Tomb Stone",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['SA-11 Buk SR 9S18M1'] = {
            ['Name'] = "Snow Drift",
            ['Assigned'] = {"SA-11","SA-17"},
            ['Role'] = {"SR"},
            ['Band'] = 'G',
            ['Primary'] = true
        },
        ['SA-11 Buk LN 9A310M1'] = {
            ['Name'] = "Fire Dome",
            ['Assigned'] = {"SA-11"},
            ['Role'] = {"TR"},
            ['Band'] = 'H',
            ['Primary'] = false
        },
        ['Tor 9A331'] = {
            ['Name'] = "Tor",
            ['Assigned'] = {"SA-15"},
            ['Role'] = {"SR","TR"},
            ['Band'] = 'F',
            ['Primary'] = true
        },
        ['Strela-1 9P31'] = {
            ['Name'] = "SA-9",
            ['Assigned'] = {"SA-9"},
            ['Role'] = {"RF"},
            ['Band'] = 'K',
            ['Primary'] = false
        },
        ['Strela-10M3'] = {
            ['Name'] = "SA-13",
            ['Assigned'] = {"SA-13"},
            ['Role'] = {"RF"},
            ['Band'] = 'J',
            ['Primary'] = false
        },
        ['Patriot str'] = {
            ['Name'] = "Patriot",
            ['Assigned'] = {"Patriot"},
            ['Role'] = {"SR","TR"},
            ['Band'] = 'K',
            ['Primary'] = true
        },
        ['Hawk sr'] = {
            ['Name'] = "Hawk SR",
            ['Assigned'] = {"Hawk"},
            ['Role'] = {"SR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['Hawk tr'] = {
            ['Name'] = "Hawk TR",
            ['Assigned'] = {"Hawk"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['Hawk cwar'] = {
            ['Name'] = "Hawk CWAR",
            ['Assigned'] = {"Hawk"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = false
        },
        ['RPC_5N62V'] = {
            ['Name'] = "Square Pair",
            ['Assigned'] = {"SA-5"},
            ['Role'] = {"TR"},
            ['Band'] = 'H',
            ['Primary'] = true
        },
        ['Roland ADS'] = {
            ['Name'] = "Roland TR",
            ['Assigned'] = {"Roland"},
            ['Role'] = {"TR"},
            ['Band'] = 'H',
            ['Primary'] = true
        },
        ['Roland Radar'] = {
            ['Name'] = "Roland SR",
            ['Assigned'] = {"Roland"},
            ['Role'] = {"SR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['Gepard'] = {
            ['Name'] = "Gepard",
            ['Assigned'] = {"Gepard"},
            ['Role'] = {"SR","TR"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['rapier_fsa_blindfire_radar'] = {
            ['Name'] = "Rapier",
            ['Assigned'] = {"Rapier"},
            ['Role'] = {"TR"},
            ['Band'] = 'D',
            ['Primary'] = true
        },
        ['rapier_fsa_launcher'] = {
            ['Name'] = "Rapier",
            ['Assigned'] = {"Rapier"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = false
        },
        ['NASAMS_Radar_MPQ64F1'] = {
            ['Name'] = "Sentinel",
            ['Assigned'] = {"NASAMS"},
            ['Role'] = {"SR"},
            ['Band'] = 'I',
            ['Primary'] = true
        },
        ['HQ-7_STR_SP'] = {
            ['Name'] = "HQ-7",
            ['Assigned'] = {"HQ-7"},
            ['Role'] = {"SR"},
            ['Band'] = 'F',
            ['Primary'] = false
        },
        ['HQ-7_LN_SP'] = {
            ['Name'] = "HQ-7",
            ['Assigned'] = {"HQ-7"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['2S6 Tunguska'] = {
            ['Name'] = "Tunguska",
            ['Assigned'] = {"Tunguska"},
            ['Role'] = {"SR","TR"},
            ['Band'] = 'F',
            ['Primary'] = true
        },
        ['ZSU-23-4 Shilka'] = {
            ['Name'] = "Shilka",
            ['Assigned'] = {"Shilka"},
            ['Role'] = {"RF"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['Dog Ear radar'] = {
            ['Name'] = "Dog Ear",
            ['Assigned'] = {"AAA"},
            ['Role'] = {"SR"},
            ['Band'] = 'G',
            ['Primary'] = true
        },
        ['SON_9'] = {
            ['Name'] = "Fire Can",
            ['Assigned'] = {"AAA"},
            ['Role'] = {"TR"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        -- non AA radars
        ['Silkworm_SR'] = {
            ['Name'] = "Silkworm",
            ['Assigned'] = {"Silkworm"},
            ['Role'] = {"AS"},
            ['Band'] = 'K',
            ['Primary'] = true
        },
        -- WWII stuff
        ['FuSe-65'] = {
            ['Name'] = "Würzburg",
            ['Assigned'] = {"AAA"},
            ['Role'] = {"TR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['FuMG-401'] = {
            ['Name'] = "EWR",
            ['Assigned'] = {"EWR"},
            ['Role'] = {"EWR"},
            ['Band'] = 'B',
            ['Primary'] = false
        },
        ['Flakscheinwerfer_37'] = {
            ['Name'] = "AAA Searchlight",
            ['Assigned'] = {"AAA"},
            ['Role'] = {"None"},
            ['Band'] = 'L',
            ['Primary'] = false
        },
        -- highdigitsams radars --
        ['S-300PS 64H6E TRAILER sr'] = {
            ['Name'] = "Big Bird",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"SR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['S-300PS SA-10B 40B6MD MAST sr'] = {
            ['Name'] = "Clam Shell",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"SR"},
            ['Band'] = 'I',
            ['Primary'] = false
        },
        ['S-300PS 40B6M MAST tr'] = {
            ['Name'] = "Flap Lid",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['S-300PS 30H6 TRAILER tr'] = {
            ['Name'] = "Flap Lid",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['S-300PS 30N6 TRAILER tr'] = {
            ['Name'] = "Flap Lid",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['S-300PMU1 40B6MD sr'] = {
            ['Name'] = "Clam Shell",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"SR"},
            ['Band'] = 'I',
            ['Primary'] = false
        },
        ['S-300PMU1 64N6E sr'] = {
            ['Name'] = "Big Bird",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"SR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['S-300PMU1 30N6E tr'] = {
            ['Name'] = "Flap Lid",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['S-300PMU1 40B6M tr'] = {
            ['Name'] = "Grave Stone",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['S-300V 9S15 sr'] = {
            ['Name'] = 'Bill Board',
            ['Assigned'] = {"SA-12"},
            ['Role'] = {"SR"},
            ['Band'] = 'E',
            ['Primary'] = false
        },
        ['S-300V 9S19 sr'] = {
            ['Name'] = 'High Screen',
            ['Assigned'] = {"SA-12"},
            ['Role'] = {"SR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['S-300V 9S32 tr'] = {
            ['Name'] = 'Grill Pan',
            ['Assigned'] = {"SA-12"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['S-300PMU2 92H6E tr'] = {
            ['Name'] = 'Grave Stone',
            ['Assigned'] = {"SA-20"},
            ['Role'] = {"TR"},
            ['Band'] = 'I',
            ['Primary'] = true
        },
        ['S-300PMU2 64H6E2 sr'] = {
            ['Name'] = "Big Bird",
            ['Assigned'] = {"SA-20"},
            ['Role'] = {"SR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['S-300VM 9S15M2 sr'] = {
            ['Name'] = 'Bill Board M',
            ['Assigned'] = {"SA-23"},
            ['Role'] = {"SR"},
            ['Band'] = 'E',
            ['Primary'] = false
        },
        ['S-300VM 9S19M2 sr'] = {
            ['Name'] = 'High Screen M',
            ['Assigned'] = {"SA-23"},
            ['Role'] = {"SR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        ['S-300VM 9S32ME tr'] = {
            ['Name'] = 'Grill Pan M',
            ['Assigned'] = {"SA-23"},
            ['Role'] = {"TR"},
            ['Band'] = 'K',
            ['Primary'] = true
        },
        ['SA-17 Buk M1-2 LN 9A310M1-2'] = {
            ['Name'] = "Fire Dome M",
            ['Assigned'] = {"SA-17"},
            ['Role'] = {"TR"},
            ['Band'] = 'H',
            ['Primary'] = false
        },
        ['34Ya6E Gazetchik E decoy'] = {
            ['Name'] = "Flap Lid",
            ['Assigned'] = {"SA-10"},
            ['Role'] = {"TR"},
            ['Band'] = 'J',
            ['Primary'] = true
        },
        ['Fire Can radar'] = {
            ['Name'] = "Fire Can",
            ['Assigned'] = {"AAA"},
            ['Role'] = {"TR"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        -- SAM Assets pack
        ['EWR 55G6U NEBO-U'] = {
            ['Name'] = "Tall Rack",
            ['Assigned'] = {"EWR"},
            ['Role'] = {"EWR"},
            ['Band'] = 'A',
            ['Primary'] = false
        },
        ['EWR P-37 BAR LOCK'] = {
            ['Name'] = "Bar lock",
            ['Assigned'] = {"EWR"},
            ['Role'] = {"SA-5","EWR"},
            ['Band'] = 'E',
            ['Primary'] = false
        },
        ['EWR 1L119 Nebo-SVU'] = {
            ['Name'] = "Nebo-SVU",
            ['Assigned'] = {"EWR"},
            ['Role'] = {"EWR"},
            ['Band'] = 'A',
            ['Primary'] = false
        },
        ['EWR Generic radar tower'] = {
            ['Name'] = "Civilian Radar",
            ['Assigned'] = {"EWR"},
            ['Role'] = {"EWR"},
            ['Band'] = 'C',
            ['Primary'] = false
        },
        -- Naval Assets --
        ['Type_052B'] = {
            ['Name'] = "Type 052B",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['Type_052C'] = {
            ['Name'] = "Type 052C",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['Type_054A'] = {
            ['Name'] = "Type 054A",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['Type_071'] = {
            ['Name'] = "Type 071",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['Type_093'] = {
            ['Name'] = "Type 093",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['USS_Arleigh_Burke_IIa'] = {
            ['Name'] = "Arleigh Burke",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['CV_1143_5'] = {
            ['Name'] = "Kuznetsov",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'F',
            ['Primary'] = true
        },
        ['KUZNECOW'] = {
            ['Name'] = "Kuznetsov",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'F',
            ['Primary'] = true
        },
        ['Forrestal'] = {
            ['Name'] = "Forrestal",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['VINSON'] = {
            ['Name'] = "Nimitz",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['CVN_71'] = {
            ['Name'] = "Nimitz",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['CVN_72'] = {
            ['Name'] = "Nimitz",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['CVN_73'] = {
            ['Name'] = "Nimitz",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['Stennis'] = {
            ['Name'] = "Nimitz",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['CVN_75'] = {
            ['Name'] = "Nimitz",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['La_Combattante_II'] = {
            ['Name'] = "La Combattante",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['ALBATROS'] = {
            ['Name'] = "Grisha",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['MOLNIYA'] = {
            ['Name'] = "Molniya",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['MOSCOW'] = {
            ['Name'] = "Moskva",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['NEUSTRASH'] = {
            ['Name'] = "Neustrashimy",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['PERRY'] = {
            ['Name'] = "Oliver H. Perry",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['PIOTR'] = {
            ['Name'] = "Kirov",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['REZKY'] = {
            ['Name'] = "Krivak",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['LHA_Tarawa'] = {
            ['Name'] = "Tarawa",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['TICONDEROG'] = {
            ['Name'] = "Ticonderoga",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
    -- South Atlantic naval assets
        ['hms_invincible'] = {
            ['Name'] = "Invincible",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
        ['leander-gun-achilles'] = {
            ['Name'] = "Leander",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'F',
            ['Primary'] = true
        },
        ['leander-gun-andromeda'] = {
            ['Name'] = "Leander",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'F',
            ['Primary'] = true
        },
        ['leander-gun-ariadne'] = {
            ['Name'] = "Leander",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'F',
            ['Primary'] = true
        },
        ['leander-gun-condell'] = {
            ['Name'] = "Condell",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'K',
            ['Primary'] = true
        },
        ['leander-gun-lynch'] = {
            ['Name'] = "Condell",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'K',
            ['Primary'] = true
        },
        -- None Combat vessels
        ['BDK-775'] = {
            ['Name'] = "Ropucha",
            ['Assigned'] = {"Naval"},
            ['Role'] = {"Naval"},
            ['Band'] = 'E',
            ['Primary'] = true
        },
    }

    --- Enums for Phonetic AlphaBet
    -- @table HOUND.DB.PHONETICS
    -- @field Characters Phonetic representation
    -- @usage  ['A'] = "Alpha"
    HOUND.DB.PHONETICS =  {
        ['A'] = "Alpha",
        ['B'] = "Bravo",
        ['C'] = "Charlie",
        ['D'] = "Delta",
        ['E'] = "Echo",
        ['F'] = "Foxtrot",
        ['G'] = "Golf",
        ['H'] = "Hotel",
        ['I'] = "India",
        ['J'] = "Juliette",
        ['K'] = "Kilo",
        ['L'] = "Lima",
        ['M'] = "Mike",
        ['N'] = "November",
        ['O'] = "Oscar",
        ['P'] = "Papa",
        ['Q'] = "Quebec",
        ['R'] = "Romeo",
        ['S'] = "Sierra",
        ['T'] = "Tango",
        ['U'] = "Uniform",
        ['V'] = "Victor",
        ['W'] = "Whiskey",
        ['X'] = "X ray",
        ['Y'] = "Yankee",
        ['Z'] = "Zulu",
        ['1'] = "One",
        ['2'] = "Two",
        ['3'] = "Three",
        ['4'] = "Four",
        ['5'] = "Five",
        ['6'] = "Six",
        ['7'] = "Seven",
        ['8'] = "Eight",
        ['9'] = "Niner",
        ['0'] = "Zero",
        [' '] = ",",
        ['.'] = "Decimal"
    }

    --- Units that use DMM format
    -- @table HOUND.DB.useDecMin
    -- @field UnitType Bool Value
    -- @usage ['F-16C_blk50'] = true
    HOUND.DB.useDecMin =  {
        ['F-16C_blk50'] = true,
        ['F-16C_50'] = true,
        ['M-2000C'] = true,
        ['A-10C'] = true,
        ['A-10C_2'] = true,
        ['AH-64D_BLK_II'] = true,
    }

    --- Valid platform parameters
    -- @table HOUND.DB.Platform
    -- @field UnitTypeName contains table of properties
    -- @usage ['C-130'] = {antenna = {size = 35, factor = 1}}

    HOUND.DB.Platform =  {
        [Object.Category.STATIC] = {
            ['Comms tower M'] = {antenna = {size = 80, factor = 1},ins_error=0},
            ['Cow'] = {antenna = {size = 1000, factor = 10},ins_error=0}
        },
        [Object.Category.UNIT] = {
            -- Ground Units
            ['MLRS FDDM'] = {antenna = {size = 15, factor = 1},ins_error=0},
            ['SPK-11'] = {antenna = {size = 15, factor = 1},ins_error=0},
            -- Helicopters
            ['CH-47D'] = {antenna = {size = 12, factor = 1},ins_error=0},
            ['CH-53E'] = {antenna = {size = 10, factor = 1},ins_error=0},
            ['MIL-26'] = {antenna = {size = 20, factor = 1},ins_error=50},
            ['SH-60B'] = {antenna = {size = 8, factor = 1},ins_error=0},
            ['UH-60A'] = {antenna = {size = 8, factor = 1},ins_error=0},
            ['UH-60L'] = {antenna = {size = 8, factor = 1},ins_error=0}, -- community UH-69L
            ['Mi-8MT'] = {antenna = {size = 8, factor = 1},ins_error=0},
            ['UH-1H'] = {antenna = {size = 4, factor = 1},ins_error=50},
            ['KA-27'] = {antenna = {size = 4, factor = 1},ins_error=50},
            -- Airplanes
            ['C-130'] = {antenna = {size = 35, factor = 1},ins_error=0},
            ['Hercules'] = {antenna = {size = 35, factor = 1},ins_error=0}, -- Anubis' C-130J
            ['EC130'] = {antenna = {size = 35, factor = 1},ins_error=0},  -- Secret Squirrel EC-130
            ['RC135RJ'] = {antenna = {size = 40, factor = 1},ins_error=0}, -- Secret Squirrel RC-135
            -- ['KC135MPRS'] = {antenna = {size = 40, factor = 1}, require = { TASK={'~Refueling'}}},
            -- ['KC-135'] = {antenna = {size = 40, factor = 1}, require = { TASK={'~Refueling'}}}
            ['C-17A'] = {antenna = {size = 40, factor = 1},ins_error=0}, -- stand-in for RC-135, tuned antenna size to match
            ['S-3B'] = {antenna = {size = 18, factor = 0.8},ins_error=0},
            ['E-3A'] = {antenna = {size = 9, factor = 0.5},ins_error=0},
            ['E-2C'] = {antenna = {size = 7, factor = 0.5},ins_error=0},
            ['Tu-95MS'] = {antenna = {size = 50, factor = 1},ins_error=50},
            ['Tu-142'] = {antenna = {size = 50, factor = 1},ins_error=0},
            ['IL-76MD'] = {antenna = {size = 48, factor = 0.8},ins_error=50},
            ['H-6J'] = {antenna = {size = 3.5, factor = 1},ins_error=100},
            ['An-30M'] = {antenna = {size = 25, factor = 1},ins_error=50},
            ['A-50'] = {antenna = {size = 9, factor = 0.5},ins_error=0},
            ['An-26B'] = {antenna = {size = 26, factor = 1},ins_error=100},
            ['C-47'] = {antenna = {size = 12, factor = 1},ins_error=100},
            ['P3C_Orion'] = {antenna = {size = 25, factor = 1},ins_error=0}, -- MAM P-3C_Orion
            ['CLP_P8'] = {antenna = {size = 35, factor = 1},ins_error=0}, -- CLP P-8A posidon
            ['CLP_TU214R'] = {antenna = {size = 40, factor = 1},ins_error=0}, -- CLP TU-214R
            ['EA_6B'] = {antenna = {size = 9, factor = 1},ins_error=0}, --VSN EA-6B
            ['EA-18G'] = {antenna = {size = 14, factor = 1},ins_error=0}, --CJS EF-18G
            ['Su-25T'] = {antenna = {size = 3.5, factor = 1}, require = {CLSID='{Fantasmagoria}'},ins_error=50},
            ['AJS37'] = {antenna = {size = 4.5, factor = 1}, require = {CLSID='{U22A}'},ins_error=50},
            ['F-16C_50'] = {antenna = {size = 1.45, factor = 1},require = {CLSID='{AN_ASQ_213}'},ins_error=0},
            ['JF-17'] = {antenna = {size = 3.25, factor = 1}, require = {CLSID='{DIS_SPJ_POD}'},ins_error=0},
            -- Mirage F1 placeholders. Thanks Viboa and Aerges for supplying the typeNames for the module's aircrafts.
            ['Mirage-F1CE'] = {antenna = {size = 3.7, factor = 1}, require = {CLSID='{TMV_018_Syrel_POD}'},ins_error=100}, -- temporary for intial release, CE had not INS, therefor could do ELINT.
            ['Mirage-F1EE'] = {antenna = {size = 3.7, factor = 1}, require = {CLSID='{TMV_018_Syrel_POD}'},ins_error=50}, -- does not reflect features in actual released product
            ['Mirage-F1M-CE'] = {antenna = {size = 3.7, factor = 1}, require = {CLSID='{TMV_018_Syrel_POD}'},ins_error=0}, -- does not reflect features in actual released product
            ['Mirage-F1M-EE'] = {antenna = {size = 3.7, factor = 1}, require = {CLSID='{TMV_018_Syrel_POD}'},ins_error=0}, -- does not reflect features in actual released product
            ['Mirage-F1CR'] = {antenna = {size = 4, factor = 1}, require = {CLSID='{ASTAC_POD}'},ins_error=0}, -- AI only (FAF)
            ['Mirage-F1EQ'] = {antenna = {size = 3.7, factor = 1}, require = {CLSID='{TMV_018_Syrel_POD}'},ins_error=50}, -- AI only (Iraq)
            ['Mirage-F1EDA'] = {antenna = {size = 3.7, factor = 1}, require = {CLSID='{TMV_018_Syrel_POD}'},ins_error=50}, -- AI only (Qatar)
        }
    }

    --- Band vs wavelength
    -- @table HOUND.DB.Bands
    -- @field Band wavelength in meters
    -- @usage ['E'] = 0.119917
    HOUND.DB.Bands =  {
        ['A'] = 1.713100,
        ['B'] = 0.799447,
        ['C'] = 0.399723,
        ['D'] = 0.199862,
        ['E'] = 0.119917,
        ['F'] = 0.085655,
        ['G'] = 0.059958,
        ['H'] = 0.042827,
        ['I'] = 0.033310,
        ['J'] = 0.019986,
        ['K'] = 0.009993,
        ['L'] = 0.005996,
    }

    --- Hound callsigns
    -- @table HOUND.DB.CALLSIGNS
    -- @field NATO list of RC-135 callsigns (source: https://henney.com/chm/callsign.htm)
    -- @field GENERIC list of generic callsigns for hound, mostly vacuum cleaners and fictional detectives
    HOUND.DB.CALLSIGNS = {
        NATO = {
            "ABLOW", "ACTON", "AGRAM", "AMINO", "AWOKE", "BARB", "BART", "BAZOO",
            "BOGUE", "BOOT", "BRAY", "CAMAY", "CAPON", "CASEY", "CHIME", "CHISUM",
            "COBRA", "COSMO", "CRISP", "DAGDA", "DALLY", "DEVON", "DIVE", "DOZER",
            "DUPLE", "EXOR", "EXUDE", "EXULT", "FLOSS", "FLOUT", "FLUKY", "FURR",
            "GENUS", "GOBO", "GOLLY", "GOOFY", "GROUP", "HAKE", "HARMO",
            "HERMA", "HEXAD", "HOLE", "HURDS", "HYMN", "IOTA", "JOSS", "KELT", "LARVA",
            "LUMPY", "MAFIA", "MINE", "MORTY", "MURKY", "NEVIN", "NEWLY", "NORTH",
            "OLIVE", "ORKIN", "PARRY", "PATIO", "PATSY", "PATTY", "PERMA", "PITTS",
            "POKER", "POOK", "PRIME", "PYTHON", "RAGU", "REMUS", "RINGY", "RITZ",
            "RIVET", "ROSE", "RULE", "RUNNY", "SAME", "SAVOY", "SCENT",
            "SCROW", "SEAT", "SLAG", "SLOG", "SNOOP", "SPRY", "STINT", "STOB", "TAKE",
            "TALLY", "TAPE", "TOLL", "TONUS", "TOPCAT", "TORA", "TOTTY", "TOXIC",
            "TRIAL", "TRYST", "VALVO", "VEIN", "VELA", "VETCH", "VINE", "VULCAN",
            "WATT", "WORTH", "ZEPEL", "ZIPPY"
        },
        GENERIC = {
            "VACUUM", "HOOVER", "KIRBY","ROOMBA","DYSON","SHERLOCK","WATSON","GADGET",
            "HORATIO","CAINE","CHRISTIE","BENSON","GIBBS","COLOMBO","HOLT","DIAZ",
            "SCULLY","MULDER","MARVIN","MARS","MORNINGSTAR","STEELE","CASTEL","BECKETT",
            "INDIANA","JONES","LARA","CROFT","VENTURA","SCOOBY","SHAGGY"
        }
    }

    --- DB functions
    -- @section Functions

    --- Get radar object Data
    -- @param typeName DCS Tye name
    -- @return Radar information table
    function HOUND.DB.getRadarData(typeName)
        if not HOUND.DB.Radars[typeName] then return end
        local data = l_mist.utils.deepCopy(HOUND.DB.Radars[typeName])
        data.isEWR = setContainsValue(data.Role,"EWR")
        return data
    end

    --- check if canidate Object is a valid platform
    -- @param candidate DCS Object (Unit or Static Object)
    -- @return Bool. True if object is valid platform
    function HOUND.DB.isValidPlatform(candidate)
        if type(candidate) ~= "table" or type(candidate.isExist) ~= "function" or not candidate:isExist()
             then return false
        end

        local isValid = false
        local mainCategory = candidate:getCategory()
        local type = candidate:getTypeName()

        if setContains(HOUND.DB.Platform,mainCategory) then
            if setContains(HOUND.DB.Platform[mainCategory],type) then
                if HOUND.DB.Platform[mainCategory][type]['require'] then
                    local platformData = HOUND.DB.Platform[mainCategory][type]
                    -- TODO: actually make logic here
                    if setContains(platformData['require'],'CLSID') then
                        local required = platformData['require']['CLSID']
                        -- then if payload is valid (currently always retuns true)
                        isValid = HOUND.Utils.hasPayload(candidate,required)
                    end
                    if setContains(platformData['require'],'TASK') then
                        local required = platformData['require']['TASK']
                        -- check for tasking requirements (for now will always return false)
                        isValid = not HOUND.Utils.hasTask(candidate,required)
                    end
                else
                    isValid = true
                end
            end
        end
        return isValid
    end

    --- Get Platform data
    -- @local
    -- @param DCS_Unit platform unit
    -- @return platform data
    function HOUND.DB.getPlatformData(DCS_Unit)
        if type(DCS_Unit) ~= "table" or not DCS_Unit.getTypeName or not DCS_Unit.getCategory then return end
        -- if not HOUND.DB.isValidPlatform(DCS_Unit) then return end

        local platformData={
            pos = l_mist.utils.deepCopy(DCS_Unit:getPosition().p),
            isStatic = false,
            isAerial = false,
        }

        local mainCategory = DCS_Unit:getCategory()
        local typeName = DCS_Unit:getTypeName()
        local DbInfo = HOUND.DB.Platform[mainCategory][typeName]

        local errorDist = DbInfo.ins_error or 0
        platformData.posErr = HOUND.Utils.Vector.getRandomVec2(errorDist)
        platformData.posErr.y = 0
        platformData.ApertureSize = (DbInfo.antenna.size * DbInfo.antenna.factor) or 0

        if DCS_Unit:getCategory() == Object.Category.STATIC then
            platformData.isStatic = true
            -- platformData.pos.y = platformData.pos.y + DCS_Unit:getDesc()["box"]["max"]["y"]
        else
            local PlatformUnitCategory = DCS_Unit:getDesc()["category"]
            if PlatformUnitCategory == Unit.Category.HELICOPTER or PlatformUnitCategory == Unit.Category.AIRPLANE then
                platformData.isAerial = true
            end
            -- if PlatformUnitCategory == Unit.Category.GROUND_UNIT then
            --     platformData.pos.y = platformData.pos.y + DCS_Unit:getDesc()["box"]["max"]["y"]
            -- end
        end
        if not platformData.isAerial then
            platformData.pos.y = platformData.pos.y + DCS_Unit:getDesc()["box"]["max"]["y"]
        end
        return platformData
    end

    --- Get defraction
    -- for band and effective antenna size return angular resolution
    -- @local
    -- @param band Radar transmission band (A-L) as defined in HOUND.DB
    -- @param antenna_size Effective antenna size for platform as defined in HOUND.DB
    -- @return angular resolution in Radians for Band Antenna combo

    function HOUND.DB.getDefraction(band,antenna_size)
        if band == nil or antenna_size == nil or antenna_size == 0 then return l_math.rad(30) end
        return HOUND.DB.Bands[band]/antenna_size
    end

    --- get Effective Aperture size for unit
    -- @local
    -- @param DCS_Unit Unit requested (used as platform)
    -- @return Effective aperture size in meters
    function HOUND.DB.getApertureSize(DCS_Unit)
        if type(DCS_Unit) ~= "table" or not DCS_Unit.getTypeName or not DCS_Unit.getCategory then return 0 end
        local mainCategory = DCS_Unit:getCategory()
        local typeName = DCS_Unit:getTypeName()
        if setContains(HOUND.DB.Platform,mainCategory) then
            if setContains(HOUND.DB.Platform[mainCategory],typeName) then
                return HOUND.DB.Platform[mainCategory][typeName].antenna.size *  HOUND.DB.Platform[mainCategory][typeName].antenna.factor
            end
        end
        return 0
    end

    --- Get emitter Band
    -- @local
    -- @param DCS_Unit Radar unit
    -- @return Char radar band
    function HOUND.DB.getEmitterBand(DCS_Unit)
        if type(DCS_Unit) ~= "table" or not DCS_Unit.getTypeName then return 'C' end
        local typeName = DCS_Unit:getTypeName()
        if setContains(HOUND.DB.Radars,typeName) then
            return HOUND.DB.Radars[typeName].Band
        end
        return 'C'
    end

    --- Elint Function - Get sensor precision
    -- @param platform Instance of DCS Unit which is the detecting platform
    -- @param emitterBand Radar Band (frequency) of radar (A-L)
    -- @return angular resolution in Radians of platform against specific Radar frequency
    function HOUND.DB.getSensorPrecision(platform,emitterBand)
        return HOUND.DB.getDefraction(emitterBand,HOUND.DB.getApertureSize(platform)) or l_math.rad(20.0) -- precision
    end
end
