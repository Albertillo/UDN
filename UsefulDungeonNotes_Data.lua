-- Each Mechanic has 5 properties, {en, es, role, type, text_prop}
-- Roles can be all, dps, healer, tank
-- type can be "title", "note", "mechanic". Title for zone titles, note for monsters name to make a sub section and mechanic for general mechanics
-- text_prop is only used in the mechanic type, text_prop = "tab" generates a tab before the text for each "note" monster mechanic

UsefulDungeonNotesData = {
	-- Midnight Season 1
    -- 1. Magisters' Terrace
    [2811] = {
    name = { en = "Magisters' Terrace", es = "Bancal del Magister" },

    ["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
        -- First zone
        { en = "First Area", es = "Primera zona", role = "all", type = "title" },
		
		{ en = "Arcane Sentry", es = "Centinela Arcano", role = "all", type = "note" },
        { en = "Dispel root from tank or get rid of it if you can", 
          es = "Dispelea el root del tanque o quítatela si puedes", 
          role = "healer", type = "mechanic", text_prop = "tab" },
        { en = "Channels a player causing big damage", 
          es = "Canaliza a un jugador haciendo mucho daño", 
          role = "healer", type = "mechanic", text_prop = "tab" },
        { en = "Big AoE damage", 
          es = "Mucho daño de AoE", 
          role = "healer", type = "mechanic", text_prop = "tab" },
		
		{ en = "Arcane Magister", es = "Magister Arcano", role = "all", type = "note" },
        { en = "Kick or dispel polymorph\n", 
          es = "Corta o dispelea polimorfia\n", 
          role = "interrupt", type = "mechanic", text_prop = "tab" },
		
		{ en = "In the library don't touch circles and click books for haste buffs", 
          es = "En la biblioteca no toques los círculos y haz clic en los libros para obtener buffs de celeridad", 
          role = "all", type = "mechanic" },
		
		{ en = "Blazing Pyromancer", es = "Piromántica llameante", role = "all", type = "note" },
        { en = "Kick pyroblast", 
          es = "Corta Piroexplosión", 
          role = "interrupt", type = "mechanic", text_prop = "tab" },
        { en = "Dodge AoE\n", 
          es = "Esquiva el AoE\n", 
          role = "all", type = "mechanic", text_prop = "tab" },

        { en = "Blightscale Wyrm explode when killed", 
          es = "Las Vermis de escamsa brillantes explota al morir", 
          role = "all", type = "mechanic" },

        { en = "Clear at least one side of the zone before first boss", 
          es = "Limpia al menos un lado de la zona antes del primer boss", 
          role = "all", type = "mechanic" },


        -- Second zone
        { en = "Second Area", es = "Segunda zona", role = "all", type = "title" },
		
		{ en = "Runed Spellbreaker", es = "Rompehechizos rúnica", role = "all", type = "note" },
        { en = "Spread out before Runic Glaive", 
          es = "Separaos antes de Guja Rúnica", 
          role = "all", type = "mechanic", text_prop = "tab" },

        { en = "Dodge frontal", 
          es = "Esquiva el frontal", 
          role = "all", type = "mechanic", text_prop = "tab" },


        -- Third zone
        { en = "Third Area\n", es = "Tercera zona\n", role = "all", type = "title" },

        { en = "Everyone has to channel the Waystone", 
          es = "Todos tienen que canalizar la Waystone", 
          role = "all", type = "mechanic" },
		
		{ en = "Shadowrift Voidcaller", es = "Clamavacío de falla de las Sombras", role = "all", type = "note" },
        { en = "Kill adds", 
          es = "Mata los adds", 
          role = "dps", type = "mechanic", text_prop = "tab" },

        { en = "Big AoE Damage during Consuming Shadows\n", 
          es = "Hay mucho daño AoE durante Sombras acuciantes\n", 
          role = "healer", type = "mechanic", text_prop = "tab" },

		{ en = "Devouring Tyrant", es = "Tirano de la devoración", role = "all", type = "note" },
        { en = "Defensive CD on Devouring Strike", 
          es = "Usa defensivo en Golpe devorador", 
          role = "tank", type = "mechanic", text_prop = "tab" },

        { en = "Kill him fast", 
          es = "Mátalo rápido", 
          role = "dps", type = "mechanic", text_prop = "tab" },
    },


    --------------------------------------------------------------------
    -- BOSSES
    --------------------------------------------------------------------

    ["ARCANOTRON"] = {
        name = { en = "Arcanotron", es = "Arcanotron" },

        { en = "Defensive CD on Repulsing Slam. Will get knockback", 
          es = "Usa defensivo en Embate de rechazo. Te empujará", 
          role = "tank", type = "mechanic" },

        { en = "Everyone will knockback with Arcane Expulsion. It will also make a pool", 
          es = "Expulsión Arcana empuja a todos y deja un charco", 
          role = "all", type = "mechanic" },

        { en = "Dispel debuff", 
          es = "Dispelea el debuff", 
          role = "healer", type = "mechanic" },

        { en = "While Refueling protocol soak orbs before reaching boss (careful with damage)", 
          es = "Absorbe orbes antes de que lleguen al boss durante Protocolo de reabastecimiento (cuidado con el daño)", 
          role = "all", type = "mechanic" },

        { en = "Orbs leave a pool after soaked", 
          es = "Los orbes dejan un charco al soakearlos", 
          role = "all", type = "mechanic" },
    },


    ["SERANEL"] = {
        name = { en = "Seranel", es = "Seranel" },

        { en = "Dodge AoE and normally don't enter the big purple pool", 
          es = "Esquiva el AoE y no entres normalmente en el charco morado grande", 
          role = "all", type = "mechanic" },

        { en = "When having a circle around you go to big purple pool (one by one)", 
          es = "Si tienes un círculo alrededor, id al charco morado grande (de uno en uno)", 
          role = "all", type = "mechanic" },

        { en = "Big AoE damage after going to the big purple pool", 
          es = "Mucho daño AoE después de entrar al charco morado grande", 
          role = "healer", type = "mechanic" },

        { en = "Go to the big purple pool before the boss finishes casting Wave of Silence", 
          es = "Id al charco morado grande antes de que el boss termine de castear Ola de silencio", 
          role = "all", type = "mechanic" },
    },


    ["GEMELLUS"] = {
        name = { en = "Gemellus", es = "Gemellus" },

        { en = "Pools will appear under players with an arrow on top of them", 
          es = "Aparecen charcos bajo los jugadores que tienen una flecha encima", 
          role = "all", type = "mechanic" },

        { en = "When you have an arrow pointing a jellyfish, go to them to take out the absorb shield", 
          es = "Si tienes una flecha apuntando a una medusa, ve hacia ella para quitarle el escudo de absorción", 
          role = "all", type = "mechanic" },

        { en = "Astral Grasp does big AoE damage and pulls everyone. Don't get close the boss here", 
          es = "Agarre astral hace mucho daño de AoE y atrae a todos. No te acerques al boss", 
          role = "healer", type = "mechanic" },
    },


    ["DEGENTRIUS"] = {
        name = { en = "Degentrius", es = "Degentrius" },

        { en = "There must always be a player in each quadrant the boss makes", 
          es = "Debe haber un jugador en cada cuadrante que crea el boss", 
          role = "all", type = "mechanic" },

        { en = "Don't touch the rays", 
          es = "No toques los rayos", 
          role = "all", type = "mechanic" },

        { en = "Soak Unstable Void Essence", 
          es = "Soakea Esencia del Vacío inestables", 
          role = "all", type = "mechanic" },

        { en = "Dispel debuff, but be careful because it will summon orbs", 
          es = "Dispelea el debuff, pero cuidado porque generará orbes", 
          role = "healer", type = "mechanic" },

        { en = "Dodge orbs", 
          es = "Esquiva los orbes", 
          role = "all", type = "mechanic" },

        { en = "When the tank has a big circle use Defensive CD. Don't soak while having it", 
          es = "El tanque debe usar defensivo cuando tenga un círculo grande. No soakees mientras lo tengas", 
          role = "tank", type = "mechanic" },

        { en = "Someone else must soak when the tank has the big AoE", 
          es = "Otro jugador debe soakear cuando el tanque tenga el círculo grande", 
          role = "all", type = "mechanic" },
    },
},


    -- 2. Maisara Caverns
    [2874] = {
    name = { en = "Maisara Caverns", es = "Cavernas de Maisara" },

    ["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
        -- First zone
        { en = "First Area\n", es = "Primera zona\n", role = "all", type = "title" },

        { en = "Dodge AoE and frontals",
          es = "Esquiva el AoE y los frontales",
          role = "all", type = "mechanic" },

        { en = "Heal absorb shield",
          es = "Cura el escudo de absorción",
          role = "healer", type = "mechanic" },

        { en = "Free 8 prisioners",
          es = "Libera a 8 prisioneros",
          role = "all", type = "mechanic" },

        { en = "Dispel Hex Guardian DoT",
          es = "Dispelea el DoT de Guardián del maleficio",
          role = "healer", type = "mechanic" },

        { en = "Kick Hex from Ritual Hexxers",
          es = "Corta el Hex de los Aojadores de ritual",
          role = "interrupt", type = "mechanic" },

        { en = "Kick Hooking Snare from Headhunters",
          es = "Corta el Trampa con gancho de los Rebanacabezas",
          role = "interrupt", type = "mechanic" },
		
		{ en = "Kick Shrink from Umbral Shadowbinder",
          es = "Corta Encoger de Viculadora de sombras umbría",
          role = "interrupt", type = "mechanic" },
		  
		{ en = "Hulking Juggernaut", es = "Gigante descomunal", role = "all", type = "note" },
        { en = "Defensive CD on Rending Gore",
          es = "Usa defensivo en Cornada desgarradora",
          role = "tank", type = "mechanic", text_prop = "tab" },

        { en = "Big AoE damage\n",
          es = "Mucho daño de AoE\n",
          role = "healer", type = "mechanic", text_prop = "tab" },

        { en = "Click the cauldrons inside the tents for a buff",
          es = "Haz clic en los calderos dentro de los edificios para coger un buff",
          role = "all", type = "mechanic" },


        -- Second zone
        { en = "Second Area\n", es = "Segunda zona\n", role = "all", type = "title" },

        { en = "Dodge walking ghosts",
          es = "Esquiva los fantasmas caminando",
          role = "all", type = "mechanic" },

        { en = "Dodge AoE and frontals",
          es = "Esquiva el AoE y los frontales",
          role = "all", type = "mechanic" },
		  
		{ en = "After killing a ghost kick their cast so they don't reappear",
          es = "Después de matar un fantasma, corta su casteo para que no reaparezca",
          role = "interrupt", type = "mechanic" },
		
		{ en = "Restless Gnarldin", es = "Gnarldin inquieto", role = "all", type = "note" },
        { en = "Big physical tank hit",
          es = "Golpe físico fuerte al tanque",
          role = "tank", type = "mechanic", text_prop = "tab" },
		
		{ en = "Rokh'zal", es = "Rokh'zal", role = "all", type = "note" },
        { en = "Dispel magic",
          es = "Dispelea magia",
          role = "healer", type = "mechanic", text_prop = "tab" },

        { en = "Kill ghost hand on altar fast",
          es = "Mata rápido la mano fantasma en el altar",
          role = "dps", type = "mechanic", text_prop = "tab" },
		
		{ en = "Bound Defender", es = "Defensor vinculado", role = "all", type = "note" },
        { en = "When shielded must be attacked from behind",
          es = "Cuando tiene escudo pégale por detrás",
          role = "dps", type = "mechanic", text_prop = "tab" },

		{ en = "Hollow Soulrender", es = "Desgarrador de almas hueco", role = "all", type = "note" },
        { en = "Kick shadowfrost blast",
          es = "Corta Explosión de Fríosombra",
          role = "interrupt", type = "mechanic", text_prop = "tab" },
        { en = "Big AoE damage",
          es = "Mucho daño de AoE",
          role = "healer", type = "mechanic", text_prop = "tab" },
        { en = "Separate from group when you have a circle",
          es = "Sepárate del grupo si tienes un círculo",
          role = "all", type = "mechanic", text_prop = "tab" },


        -- Bridge zone
        { en = "Bridge Area\n", es = "Zona del puente\n", role = "all", type = "title" },

        { en = "Dodge green balls",
          es = "Esquiva las bolas verdes",
          role = "all", type = "mechanic" },

        { en = "Zul'jan does big AoE damage",
          es = "Zul'jan hace mucho daño de AoE",
          role = "healer", type = "mechanic" },
    },


    --------------------------------------------------------------------
    -- BOSSES
    --------------------------------------------------------------------

    ["MUROJIN_NEKRAXX"] = {
        name = { en = "Muro'jin & Nekraxx", es = "Muro'jin y Nekraxx" },

        { en = "Kill them close",
          es = "Matadlos juntos",
          role = "tank", type = "mechanic" },

        { en = "Tank with a wall behind you",
          es = "Tanquea delante de una pared",
          role = "tank", type = "mechanic" },

        { en = "Defensive CD on Flanking Spear",
          es = "Usa defensivo en Lanza de flanco",
          role = "tank", type = "mechanic" },

        { en = "Dodge AoE, frontals and traps",
          es = "Esquiva AoE, los frontales y las trampas",
          role = "all", type = "mechanic" },

        { en = "Dispel Disease",
          es = "Dispelea enfermedad",
          role = "healer", type = "mechanic" },

        { en = "If you have an arrow go on top of a trap. Dodge the pool after the boss hits you",
          es = "Si tienes una flecha, métete en una trampa. Esquiva el charco después del golpe del boss",
          role = "all", type = "mechanic" },
    },


    ["VORDAZA"] = {
        name = { en = "Vordaza", es = "Vordaza" },

        { en = "Move so the phantoms who fixate players hit each other",
          es = "Movéos para que los fantasmas que os fijan se choquen entre sí",
          role = "all", type = "mechanic" },

        { en = "When they hit each other they disappear, do big damage and leave a pool",
          es = "Cuando se tocan desaparecen, hacen mucho daño y dejan un charco",
          role = "healer", type = "mechanic" },

        { en = "Dodge orbs and frontals",
          es = "Esquiva los orbes y los frontales",
          role = "all", type = "mechanic" },

        { en = "During the orbs there will be big AoE damage",
          es = "Durante los orbes habrá mucho daño de AoE",
          role = "healer", type = "mechanic" },
    },


    ["RAKTUL"] = {
        name = { en = "Rak'tul", es = "Rak'tul" },

        { en = "Defensive CD before third Spiritbreaker hit. Will also get knockback and leave a pool",
          es = "Usa defensivo antes del tercer golpe de Rompespíritus. También te empuja y deja un charco",
          role = "tank", type = "mechanic" },

        { en = "Dodge AoE",
          es = "Esquiva el AoE",
          role = "all", type = "mechanic" },

        { en = "When there is a green arrow on you spread a bit. Boss will jump and summon a totem. Destroy it",
          es = "Si tienes una flecha verde, sepárate un poco. El boss saltará y convocará un tótem. Destrúyelo",
          role = "dps", type = "mechanic" },

        { en = "At 100% energy cross the bridge without touching ghosts. Kick or CC ghosts for more movement speed",
          es = "Al 100% de energía cruza el puente sin tocar fantasmas. Corta o CCea a los fantasmas para correr más",
          role = "interrupt", type = "mechanic" },
    },
},


    -- 3. Nexus-Point Xenas
    [2915] = {
    name = { en = "Nexus-Point Xenas", es = "Punto de Nexo Xenas" },

    ["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
        -- General
        { en = "General", es = "General", role = "all", type = "title" },
		
		{ en = "Lingering Image", es = "Imagen persistente", role = "all", type = "note" },
        { en = "Defensive CD on Searing Rend",
          es = "Usa defensivo en Desgarramiento abrasador",
          role = "tank", type = "mechanic", text_prop = "tab" },

        { en = "Dodge frontals and AoE",
          es = "Esquiva los frontales y el AoE",
          role = "all", type = "mechanic", text_prop = "tab" },


        -- Right zone
        { en = "Right Zone", es = "Zona derecha", role = "all", type = "title" },
		
		{ en = "Duskfright Herald", es = "Heraldo sustocaso", role = "all", type = "note" },
        { en = "Entropic Leech does big damage\n",
          es = "Sanguijuela entrópica hace mucho daño\n",
          role = "healer", type = "mechanic", text_prop = "tab" },

        { en = "Kick or stop casts from Smudges",
          es = "Corta o detén los casteos de los Borrones",
          role = "interrupt", type = "mechanic" },

        { en = "Dispel Curses",
          es = "Dispelea maldiciones",
          role = "healer", type = "mechanic" },
		
		{ en = "Null Sentinel", es = "Centinela nulo", role = "all", type = "note" },
        { en = "Point it out of the group",
          es = "Ponlo mirando fuera del grupo",
          role = "tank", type = "mechanic", text_prop = "tab" },

        { en = "Will do AoE damage and knockback",
          es = "Hará daño de AoE y empujará",
          role = "healer", type = "mechanic", text_prop = "tab" },

        { en = "Dodge frontals and AoE\n",
          es = "Esquiva los frontales y el AoE\n",
          role = "all", type = "mechanic", text_prop = "tab" },

        { en = "After boss everyone must click the conduit",
          es = "Después del boss todos deben hacer clic en el conducto",
          role = "all", type = "mechanic" },


        -- Left zone
        { en = "Left Zone\n", es = "Zona izquierda\n", role = "all", type = "title" },

        { en = "Dodge lasers and AoE",
          es = "Esquiva los láseres y el AoE",
          role = "all", type = "mechanic" },
		{ en = "When Flux Engineers die they leave a battery. Destroy it",
          es = "Cuando los Ingenieros de flujo mueren dejan una batería. Destrúyela",
          role = "dps", type = "mechanic" },
		
		{ en = "Corewright Arcanist", es = "Arcanista nucleoartesano", role = "all", type = "note" },
        { en = "Spread out",
          es = "Separáos",
          role = "all", type = "mechanic", text_prop = "tab" },

        { en = "Dispel magic",
          es = "Dispelea magia",
          role = "healer", type = "mechanic", text_prop = "tab" },
		
		{ en = "Circuit Seer", es = "Vidente de circuito", role = "all", type = "note" },
        { en = "Big AoE damage\n",
          es = "Mucho daño de AoE\n",
          role = "healer", type = "mechanic", text_prop = "tab" },

        { en = "After boss everyone must click the conduit",
          es = "Después del boss todos deben hacer clic en el conducto",
          role = "all", type = "mechanic" },


        -- Last zone
        { en = "Last Zone\n", es = "Última zona\n", role = "all", type = "title" },

        { en = "Everyone must click the console in the middle of the dungeon",
          es = "Todos deben hacer clic en la consola en el centro de la mazmorra",
          role = "all", type = "mechanic" },

        { en = "Radiant swarms fixate players. Don't let them touch you",
          es = "Los Enjambres radiantes fijan jugadores. No dejes que te toquen",
          role = "all", type = "mechanic" },
    },


    --------------------------------------------------------------------
    -- BOSSES
    --------------------------------------------------------------------

    ["NYSARRA"] = {
        name = { en = "Nysarra", es = "Nysarra" },

        { en = "Defensive CD on Umbral Slash",
          es = "Usa defensivo en Latigazo umbrío",
          role = "tank", type = "mechanic" },

        { en = "When having a big circle move out of the group",
          es = "Si tienes un círculo grande, aléjate del grupo",
          role = "all", type = "mechanic" },

        { en = "Kill adds",
          es = "Mata los adds",
          role = "dps", type = "mechanic" },
		
		{ en = "Kick Nullify",
          es = "Corta Anular",
          role = "interrupt", type = "mechanic" },
		  
        { en = "Dodge AoE",
          es = "Esquiva el AoE",
          role = "all", type = "mechanic" },

        { en = "Stand in the yellow beam",
          es = "Ponte en el rayo amarillo",
          role = "all", type = "mechanic" },

        { en = "Yellow beam does big damage",
          es = "El rayo amarillo hace mucho daño",
          role = "healer", type = "mechanic" },
    },


    ["KASRETH"] = {
        name = { en = "Kasreth", es = "Kasreth" },

        { en = "Don't touch the beams and dodge pools",
          es = "No toques los rayos y esquiva los charcos",
          role = "all", type = "mechanic" },

        { en = "Kick Arcane Zap",
          es = "Corta Electrocución Arcana",
          role = "interrupt", type = "mechanic" },

        { en = "If you have an arrow over you go to beam intersections (to get rid of many at once)",
          es = "Si tienes una flecha sobre ti, ve a las intersecciones de rayos (para quitar varios a la vez)",
          role = "all", type = "mechanic" },

        { en = "At 100% energy, dodge big AoE. There will be knockback.",
          es = "Al 100% de energía, esquiva el AoE grande. Después empujará",
          role = "all", type = "mechanic" },

        { en = "After big AoE heal the Healing Absorb",
          es = "Después del AoE grande, cura la absorción de daño",
          role = "healer", type = "mechanic" },
    },


    ["LOTHRAXION"] = {
        name = { en = "Lothraxion", es = "Lothraxion" },

        { en = "Defensive CD on Searing Rend",
          es = "Usa defensivo en Desgarramiento abrasador",
          role = "tank", type = "mechanic" },

        { en = "Dodge AoEs",
          es = "Esquiva los AoEs",
          role = "all", type = "mechanic" },

        { en = "If you have a circle around you, go to the edges",
          es = "Si tienes un círculo, ve a los bordes",
          role = "all", type = "mechanic" },

        { en = "Don't be in the way of the yellow arrows",
          es = "No te pongas la dirección a la que apuntan las flechas amarillas",
          role = "all", type = "mechanic" },

        { en = "At 100% energy many copies will appear. Kick the one without big horns",
          es = "Al 100% de energía aparecerán muchas copias. Interrumpe la que no tiene cuernos grandes",
          role = "interrupt", type = "mechanic" },
    },
},

    -- 4. Windrunner Spire 
    [2805] = {
    name = { en = "Windrunner Spire", es = "Aguja Brisaveloz" },

    ["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
        -- First zone
        { en = "First Area\n", es = "Primera zona\n", role = "all", type = "title" },

        { en = "Kick casters",
          es = "Corta a los casters",
          role = "interrupt", type = "mechanic" },

        { en = "Move mobs out of the barriers",
          es = "Mueve a los enemigos fuera de las barreras",
          role = "tank", type = "mechanic" },
		
		{ en = "Dispel poisons",
          es = "Dispelea venenos",
          role = "healer", type = "mechanic" },

        { en = "Spread out when having a circle",
          es = "Sepárate cuando tengas un círculo",
          role = "all", type = "mechanic" },
		
		{ en = "Dragonhawk", es = "Dracohalcón", role = "all", type = "note" },
        { en = "Kick Fire Spit (big damage)",
          es = "Corta el Flema de fuego (mucho daño)",
          role = "interrupt", type = "mechanic", text_prop = "tab" },
		
		{ en = "Bloated Lasher", es = "Azotador hinchado", role = "all", type = "note" },
        { en = "Stacks damage on tank",
          es = "Acumula daño en el tanque",
          role = "tank", type = "mechanic", text_prop = "tab" },


        -- Second zone
        { en = "Second Area\n", es = "Segunda zona\n", role = "all", type = "title" },

        { en = "Kick Ardent Cutthroats",
          es = "Corta a los Degolladores fervientes",
          role = "interrupt", type = "mechanic" },

        { en = "DPS down the Devoted Woebringer shield (big damage)",
          es = "Rompe el escudo de la Portadesgracias devota (mucho daño)",
          role = "dps", type = "mechanic" },
		
		{ en = "Flash Behemoth", es = "Behemoth", role = "all", type = "note" },
        { en = "Move from pools and careful from the Brutal Chop",
          es = "Muévete de los charcos y cuidado con Corte Brutal",
          role = "tank", type = "mechanic", text_prop = "tab" },


        -- Third zone
        { en = "Third Area\n", es = "Tercera zona\n", role = "all", type = "title" },

        { en = "Dodge Phalanx Breaker charge (orange lines)",
          es = "Esquiva la carga de Rompedor de falanges (líneas naranjas)",
          role = "all", type = "mechanic" },

        { en = "Dodge AoE of Shiftshot Archers (can be stopped)",
          es = "Esquiva el AoE de los arqueros (se puede cortar)",
          role = "all", type = "mechanic" },

        { en = "Spectral Axethrowers gives bleed to players (can be stopped)",
          es = "Los Lanzahachas espectrales aplican sangrado a los jugadores (se puede cortar)",
          role = "all", type = "mechanic" },
		
		{ en = "Kick Chain Lightning from Phantasmal Mystic.",
          es = "Corta Cadena de relámpagos de Místico fantasmal. ",
          role = "interrupt", type = "mechanic" },
		  
        { en = "Defensive CD on Flame Nova",
          es = "Usa defensivo en Nova de llamas",
          role = "tank", type = "mechanic" },
    },


    --------------------------------------------------------------------
    -- BOSSES
    --------------------------------------------------------------------

    ["EMBERDAWN"] = {
        name = { en = "Emberdawn", es = "Brasalbor" },

        { en = "When having a circle go to the edges",
          es = "Si tienes un círculo, ve a los bordes",
          role = "all", type = "mechanic" },

        { en = "Dodge AoE and frontals",
          es = "Esquiva el AoE y los frontales",
          role = "all", type = "mechanic" },

        { en = "Defensive CD on Searing Beak",
          es = "Usa defensivo en Pico abrasador",
          role = "tank", type = "mechanic" },

        { en = "Healing CD on Burning Gale",
          es = "Usa CD de curación en Vendaval abrasador",
          role = "healer", type = "mechanic" },
    },


    ["DERELICT_DUO"] = {
        name = { en = "Derelict Duo", es = "Dúo Derelicto" },

        { en = "Kill together",
          es = "Mátalos juntos",
          role = "dps", type = "mechanic" },

        -- Kalis
        { en = "Kalis", es = "Kalis", role = "all", type = "note" },

        { en = "Dispel curse",
          es = "Dispelea maldición",
          role = "healer", type = "mechanic", text_prop = "tab" },

        { en = "Kick Shadowbolt",
          es = "Corta Descarga de las sombras",
          role = "interrupt", type = "mechanic", text_prop = "tab" },

        -- Latch
        { en = "Latch", es = "Trancón", role = "all", type = "note" },

        { en = "When Kalis channels, the player that he points with the red arrow must go behind her",
          es = "Cuando Kalis canaliza, el jugador al que apunta con la flecha roja debe ir detrás de ella",
          role = "all", type = "mechanic", text_prop = "tab" },

        { en = "Dodge AoE",
          es = "Esquiva el AoE",
          role = "all", type = "mechanic", text_prop = "tab" },

        { en = "Put puddles on the edges",
          es = "Coloca los charcos en los bordes",
          role = "all", type = "mechanic", text_prop = "tab" },

        { en = "Defensive CD on Bone Hack",
          es = "Usa defensivo en Corte óseo",
          role = "tank", type = "mechanic", text_prop = "tab" },
    },


    ["KROLUK"] = {
        name = { en = "Commander Kroluk", es = "Comandante Kroluk" },

        { en = "Defensive CD on Rampage",
          es = "Usa defensivo en Desenfreno",
          role = "tank", type = "mechanic" },

        { en = "Dodge AoE",
          es = "Esquiva el AoE",
          role = "all", type = "mechanic" },

        { en = "Run with big circle from the group",
          es = "Corre lejos del grupo si tienes un círculo grande",
          role = "all", type = "mechanic" },

        { en = "Don't be alone in purple circles",
          es = "No estés solo dentro de los círculos morados",
          role = "all", type = "mechanic" },

        { en = "At 66% and 33% HP there will be AoE damage",
          es = "Al 66% y 33% de vida habrá daño de AoE",
          role = "healer", type = "mechanic" },

        { en = "Kill adds",
          es = "Mata los adds",
          role = "dps", type = "mechanic" },
    },


    ["RESTLESS_HEART"] = {
        name = { en = "The Restless Heart", es = "El Corazón Inquieto" },

        { en = "Dodge AoE",
          es = "Esquiva el AoE",
          role = "all", type = "mechanic" },

        { en = "Go to the arrows to jump over the big AoE",
          es = "Ve a las flechas para saltar el AoE grande",
          role = "all", type = "mechanic" },

        { en = "Use Defensive CD when targeted with the frontal",
          es = "Usa defensivo cuando seas objetivo del frontal",
          role = "tank", type = "mechanic" },

        { en = "Guststrike knockbacks the tank. Use defensive",
          es = "Golpe de ráfaga de viento empuja al tanque. Usa defensivo",
          role = "tank", type = "mechanic" },

        { en = "When having a circle around you go next to a puddle to cleanse it",
          es = "Si tienes un círculo, ve junto a un charco para limpiarlo",
          role = "all", type = "mechanic" },
    },
},


    -- 5. Algeth'ar Academy 
    [2526] = {
		name = { en = "Algeth'ar Academy", es = "Academia Algeth'ar" },

		["Trash"] = {
			name = { en = "Trash", es = "Pulls" },
			{ en = "Take the trainer for your secondary stat Black-Crit, Orange-Haste, Blue-Mastery, Green-Healing taken, Red-Versatility", 
			es = "Elige el instructor para tu estadística secundaria Negro-Crít., Naranja-Cele, Azul-Maestría, Verde-Curación recibida, Rojo-Versa", role = "all", type = "mechanic" },
			
			--Plant zone
			{ en = "Plant Area\n", es = "Zona de plantas\n", role = "all", type = "title" },
			{ en = "Dodge AoE", es = "Esquiva AoE", role = "all", type = "mechanic" },
			{ en = "Bleed on tank", es = "Sangrado en tanque", role = "healer", type = "mechanic" },
			{ en = "Aggravated Skitterfly jumps and damages a player. Too many can kill", es = "Escurriposa agravada saltan y hacen daño. Pullear muchos puede matar", role = "all", type = "mechanic" },
			
			--Guardian Sentry
			{ en = "Guardian Sentry\n", es = "Centinela guardián\n", role = "all", type = "title" },
			{ en = "Tank looking to the wall", es = "El tanque debe estar con espalda a la pared", role = "tank", type = "mechanic" },
			{ en = "When casting big circle hide behind a column", es = "Escóndete detrás de las columnas con el círculo grande", role = "all", type = "mechanic" },
			
			--Bird zone
			{ en = "Bird Area\n", es = "Zona de los pájaros\n", role = "all", type = "title" },
			{ en = "Small birds gives the tank a stacking bleed", es = "Los pájaros pequeños hacen un sangrado al tanque", role = "healer", type = "mechanic" },
			{ en = "Dodge frontal of Alpha Eagles", es = "Esquiva los frontales de las Águilas alfa", role = "all", type = "mechanic" },
			{ en = "Throw 3 orbs of the same type to one of the goals", es = "Lanza 3 orbes del mismo tipo a uno de los círculos", role = "all", type = "mechanic" },
			
			--Vexamus zone
			{ en = "Vexamus Area", es = "Zona de Vexamus", role = "all", type = "title" },
			{ en = "Vicious Ravager", es = "Devastador sañoso", role = "all", type = "note" },
			{ en = "Charge a player and does a frontal\n", es = "Carga a un jugador y hace un frontal\n", role = "all", type = "mechanic", text_prop = "tab" },
			{ en = "Kick Manafiends and books", es = "Corta los Malignos de maná y los libros", role = "interrupt", type = "mechanic" },
			{ en = "Spread if you have a circle", es = "Sepárate si tienes un círculo", role = "all", type = "mechanic" },
			
			--Last boss zone
			{ en = "Last Boss Area\n", es = "Zona del último boss\n", role = "all", type = "title" },
			{ en = "Dodge Echoknight Whirlwind attack", es = "Esquiva el Torbellino del Caballero del eco", role = "all", type = "mechanic" },
			{ en = "Defensive CD on Arcane Smash", es = "Usa defensivo en Machaque Arcano", role = "tank", type = "mechanic" },
		},

		["OVERGROWN_ANCIENT"] = {
			name = { en = "Overgrown Ancient", es = "Anciano desmesurado" },
			{ en = "Defensive CD on Bark Breaker", es = "Usa defensivo en Rompecortezas", role = "tank", type = "mechanic" },
			{ en = "Dodge AoEs", es = "Esquiva AoEs", role = "all", type = "mechanic" },
			{ en = "Kill adds", es = "Mata adds", role = "dps", type = "mechanic" },
			{ en = "Dispel Poison", es = "Dispelea veneno", role = "healer", type = "mechanic" },
			{ en = "Kick treant", es = "Corta al Antárbol", role = "interrupt", type = "mechanic" },
			{ en = "Stand on green circle", es = "Quédate en el círculo verde", role = "all", type = "mechanic" },
		},

		["CRAWTH"] = {
			name = { en = "Crawth", es = "Crawth" },
			{ en = "Defensive CD on Savage Peck", es = "Usa defensivo en Picotazo salvaje", role = "tank", type = "mechanic" },
			{ en = "Dont overlap circles", es = "Separar los circulos", role = "all", type = "mechanic" },
			{ en = "Dodge frontal", es = "Esquiva el frontal", role = "all", type = "mechanic" },
			{ en = "At 75% and 45% throw 3 orbs of one type to their goal (Wind first recommended)", es = "Al 75% y 45% lanza 3 orbes de un mismo tipo al círculo (se recomienda viento primero)", role = "all", type = "mechanic" },
			{ en = "Wind side:", es = "Orbes de viento:",role = "all", type = "note"},
			{ en = "Pick up motes, you will be immune to winds. Dodge stuff.", es = "Coge motas, serás inmune a vientos. Esquiva cosas", role = "all", type = "mechanic", text_prop = "tab" },
			{ en = "Fire side:", es = "Orbes de fuego:",role = "all", type = "note"},
			{ en = "Use DPS CD here and Dodge AoE.", es = "Usa CDs de DPS y esquiva AoE", role = "all", type = "mechanic", text_prop = "tab" },
		},

		["VEXAMUS"] = {
			name = { en = "Vexamus", es = "Vexamus" },
			{ en = "Soak orbs before reaching boss (no more than one)", es = "Soakea orbes antes de que lleguen al boss (no más de uno)", role = "all", type = "mechanic" },
			{ en = "Point frontal out of the group", es = "Aleja el frontal del grupo", role = "tank", type = "mechanic" },
			{ en = "Take circles to the edges", es = "Lleva los círculos a los lados de la sala", role = "all", type = "mechanic" },
			{ en = "At 100% energy there will be large AoE damage and knockback", es = "A 100% de energía habrá mucho daño AoE y empujará", role = "healer", type = "mechanic" },
			{ en = "Dodge AoE", es = "Esquiva AoE", role = "all", type = "mechanic" },
		},

		["ECHO_OF_DARAGOSA"] = {
			name = { en = "Echo of Daragosa", es = "Eco de Daragosa" },
			{ en = "Having 3 stacks of Overwhelming Power leaves a pool under you that summon orbs", es = "Si tienes 3 stacks de Poder sobrecogedor aparecerá un charco debajo de ti que invocará orbes", role = "all", type = "mechanic" },
			{ en = "If you are going to get 3 stacks go to one side of the room to leave it", es = "Si vas a tener 3 stacks ve a un lado de la sala a dejar el charco", role = "all", type = "mechanic" },
			{ en = "Dodge AoE and orbs. Every damaging mechanic gives a stack of Overwhelming power", es = "Esquiva AoE y orbes. Cada mecánica de daño te dará Poder Sobrecogedor", role = "all", type = "mechanic" },
			{ en = "When brought to the boss place run away", es = "Cuando el boss te atraiga corre", role = "all", type = "mechanic" },
		},

	},


    -- 6. Pit of Saron
	[658] = {
		name = { en = "Pit of Saron", es = "Foso de Saron" },

		["Trash"] = {
			name = { en = "Trash", es = "Pulls" },
			{ en = "Release 6 captives", es = "Libera a 6 captivos", role = "all", type = "mechanic" },
			{ en = "Quarry Tormentor", es = "Torturador de presas", role = "all", type = "note" },
			{ en = "Healing absorb + DoT. Be careful", es = "Absorción de curación + DoT, ten cuidado", role = "healer", type = "mechanic", text_prop = "tab" },
			{ en = "Gloombound Shadebringers", es = "Portasombras ligado a la penumbra", role = "all", type = "note" },
			{ en = "Kick Shadowbolt", es = "Corta Descarga de las sombras", role = "interrupt", type = "mechanic", text_prop = "tab" },
			{ en = "Rotting Ghouls", es = "Necrófago putrefacto", role = "all", type = "note" },
			{ en = "Stacking disease on tank. Dispel", es = "Enfermedad que stackea en el tanque. Dispelea", role = "healer", type = "mechanic", text_prop = "tab" },
			{ en = "Ymirjar Graveblade", es = "Ymirjar Hojatumba", role = "all", type = "note" },
			{ en = "If you have Frostbane slash use CD with Frost damage. Move from the AoE", es = "Usa defensivo con daño de escarcha cuando tengas Tajo de Perdición de Escarcha. Muévelo del AoE", role = "tank", type = "mechanic", text_prop = "tab" },
			{ en = "Wrathbone Enforcer", es = "Déspota hueso de cólera", role = "all", type = "note" },
			{ en = "20% increase damage received when Sunderstrike. Dont pull too many", es = "Con Golpe resquebrajador aumenta el daño recibido. No pullees muchos", role = "tank", type = "mechanic", text_prop = "tab" },
			{ en = "Dreadpulse Lich", es = "Exánime pulsopavor", role = "all", type = "note" },
			{ en = "At 50% HP pulses of damage. Channels a player too", es = "A 50% HP hace pulsos de daño. Canaliza también un jugador", role = "healer", type = "mechanic", text_prop = "tab" },
			{ en = "Plungetalon Gargoyle", es = "Gárgola garfaclavada", role = "all", type = "note" },
			{ en = "Stun when channeling Plungegrip", es = "Stunea cuando canalice Agarre en picado", role = "all", type = "mechanic", text_prop = "tab" },
			{ en = "Iceborn Protodrake", es = "Protodraco Hielonato", role = "all", type = "note" },
			{ en = "Avoid frontal. Kill first the dude on top", es = "Esquiva el frontal. Mata primero al tío encima", role = "dps", type = "mechanic", text_prop = "tab" },
			{ en = "Rimebone Coldwraith", es = "Geliespectro hueso de Helada", role = "all", type = "note" },
			{ en = "Kick Icebolt. Beware of the speed debuff", es = "Corta Descarga de hielo. Cuidado con el debuff de velocidad", role = "interrupt", type = "mechanic", text_prop = "tab" },
			{ en = "Glacieth", es = "Glacieth", role = "all", type = "note" },
			{ en = "Dont block the way with the pools, they get bigger. Dont be in front of it", es = "No bloquees el camino con los charcos, se hacen grandes. No estés delante suya", role = "all", type = "mechanic", text_prop = "tab" },
		},

		["FORGEMASTER_GARFROST"] = {
			name = { en = "Forgemaster Garfrost", es = "Maestro de Forjas Garfrost" },
			{ en = "Spread a bit when Throw Saronite. Have it close to the group", es = "Separáos cuando lance saronita. Ponedlas cerca del grupo", role = "all", type = "mechanic" },
			{ en = "Orebreaker does a big hit on tank, use it next to a saronite", es = "Rompemenas pega fuerte al tanque. Ponlo cerca de la saronita", role = "tank", type = "mechanic" },
			{ en = "Dispel the frost increase damage", es = "Dispelea", role = "healer", type = "mechanic" },
			{ en = "Avoid AoE", es = "Esquiva el AoE", role = "all", type = "mechanic" },
			{ en = "Hide behind a saronite when a beam is on you", es = "Escóndete detrás de la saronita cuando salga un rayo de ti", role = "all", type = "mechanic" },
		},

		["ICK_AND_KRICK"] = {
			name = { en = "Ick and Krick", es = "Ick y Krick" },
			{ en = "Heal Shade Shift", es = "Cura Cambio sombrío", role = "healer", type = "mechanic" },
			{ en = "Adds have priority to kill. Kick their Shadowbind too", es = "Mata adds con prioridad. Córtalos también", role = "dps", type = "mechanic" },
			{ en = "Blight Smash leaves a pool, dont drop it on a purple circle", es = "Machaque de añublo deja un charco, no lo dejes en los círculos morados", role = "tank", type = "mechanic" },
			{ en = "Kick Death Bolt from Krick", es = "Corta Descarga Mortal de Krick", role = "interrupt", type = "mechanic" },
			{ en = "At 100% energy they fixate a player. Run", es = "A 100% de energía fijan a un jugador. Corre", role = "all", type = "mechanic" },
		},

		["SCOURGELORD_TYRANNUS"] = {
			name = { en = "Scourgelord Tyrannus", es = "Señor de la Plaga Tyrannus" },
			{ en = "Dodge AoE", es = "Esquiva AoE", role = "all", type = "mechanic" },
			{ en = "Heal Bone Infusion", es = "Cura Infusión de huesos", role = "healer", type = "mechanic" },
			{ en = "Defensive CD on Scourgelord's Brand and get out of the circle after knockback", es = "Usa defensivo con Marca del señor de la Plaga y quítate del círculo después de que te empuje", role = "tank", type = "mechanic" },
			{ en = "Go to the bone piles with a green ray if you have a circle", es = "Ve a los montones de huesos con un rayo verde si tienes un círculo", role = "all", type = "mechanic" },
			{ en = "Army of the dead summon adds from every pile left. Kill the one from the green ray pile first", es = "Ejército de muertos invoca adds de cada montón de huesos que no se haya quitado. Mata primero al del montón del rayo verde", role = "dps", type = "mechanic" },
		},

	},

    -- 7. Seat of the Triumvirate
    [1753] = {
    name = { en = "Seat of the Triumvirate", es = "Trono del Triunvirato" },

    ["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
        -- First Area
        { en = "First Area", es = "Primera zona", role = "all", type = "title" },
        { en = "Merciless Subjugators", es = "Subyugadora despiadada", role = "all", type = "note" },
		{ en = "Big DoT chain damage. Heal Leeching Void", es = "Mucho daño en cadena. Cura Vacío parasitante", role = "healer", type = "mechanic", text_prop = "tab" },
        { en = "After killing the subjugators the first boss appears", es = "Tras matar a los subyugadores aparece el primer boss", role = "all", type = "mechanic", text_prop = "tab" },

        -- Second Area
        { en = "Second Area\n", es = "Segunda zona\n", role = "all", type = "title" },
        { en = "Kill 4 Rift Wardens to close 4 rifts", es = "Mata 4 Celadores de falla para cerrar 4 de ellas", role = "all", type = "mechanic" },
        { en = "Rift Warden", es = "Celador de falla", role = "all", type = "note" },
		{ en = "Constant pulsing damage", es = "Pulsos de daño constantes", role = "healer", type = "mechanic", text_prop = "tab" },
        { en = "Tank them close to the rif\n", es = "Tanquéalos cerca de la falla\n", role = "tank", type = "mechanic", text_prop = "tab" },
        { en = "Kick adds and kill", es = "Corta a los adds y mátalos", role = "interrupt", type = "mechanic" },
        { en = "Umbral War Adept", es = "Adepto de guerra Umbrío", role = "all", type = "note" },
		{ en = "Knocks back the tank. Dodge AoE", es = "Empuja al tanque. Esquiva el AoE", role = "tank", type = "mechanic", text_prop = "tab" },

        -- Third Area
        { en = "Third Area\n", es = "Tercera zona\n", role = "all", type = "title" },
        { en = "Dodge AoE and frontals", es = "Esquiva AoE y frontales", role = "all", type = "mechanic" },
        { en = "Void Infused Destroyers cast a DoT, don't pull too many", es = "Los Destructores imbuidos de vacío aplican un DoT, no pullear muchos", role = "healer", type = "mechanic" },
        { en = "Kick Dire Voidbenders", es = "Corta a las Dominadoras del vacío temible", role = "interrupt", type = "mechanic" },
        { en = "Grand Shadow-Weaver", es = "Gran tejesombras", role = "all", type = "note" },
		{ en = "Creates a star that shoots orbs. Dodge", es = "Crea una estrella que lanza orbes. Esquiva", role = "all", type = "mechanic", text_prop = "tab" },
        { en = "They channel big damage with Void Infusion", es = "Canalizan mucho daño con Infusión del Vacío", role = "healer", type = "mechanic", text_prop = "tab" },
    },

    ["ZURAAL"] = {
        name = { en = "Zuraal", es = "Zuraal" },

        { en = "Defensive CD on Void Slash", es = "Usa defensivo en Tajo del Vacío", role = "tank", type = "mechanic" },
        { en = "If you get a circle go far to leave a pool", es = "Si tienes un círculo, aléjate para dejar el charco", role = "all", type = "mechanic" },
        { en = "Dodge frontal", es = "Esquiva el frontal", role = "all", type = "mechanic" },
        { en = "Kill adds before reaching boss. They leave a pool and do AoE when killed", es = "Mata los adds antes de que lleguen al boss. Dejan charco y hacen AoE al morir", role = "dps", type = "mechanic" },
        { en = "At 100% energy adds buff the boss. Kill them before that", es = "A 100% energía los adds potencian al boss. Mátalos antes", role = "dps", type = "mechanic" },
    },

    ["SAPRISH"] = {
        name = { en = "Saprish", es = "Saprish" },

        { en = "Kick Shadewing Dread Screech", es = "Corta Chirrido aterrador de Alasombría", role = "interrupt", type = "mechanic" },
        { en = "Dark Fang leaves bleed on players", es = "Colmillo oscuro deja sangrado en jugadores", role = "healer", type = "mechanic" },
        { en = "Dodge AoE", es = "Esquiva AoE", role = "all", type = "mechanic" },
        { en = "When having a circle go next to bombs to clear them", es = "Si tienes un círculo, ve junto a las bombas para limpiarlas", role = "all", type = "mechanic" },
        { en = "Overload ignites all bombs left", es = "Sobrecarga enciende todas las bombas restantes", role = "all", type = "mechanic" },
    },

    ["VICEROY_NEZHAR"] = {
        name = { en = "Viceroy Nezhar", es = "Virrey Nezhar" },

        { en = "Kick Mind Blast", es = "Corta Explosión Mental", role = "interrupt", type = "mechanic" },
        { en = "Heal Mass Void Infusion", es = "Cura Infusión del Vacío en masa", role = "healer", type = "mechanic" },
        { en = "Kill tentacles fast. They channel heavy damage", es = "Mata los tentáculos rápido. Hacen mucho daño canalizado", role = "dps", type = "mechanic" },
        { en = "At 100% go to the center. Big damage", es = "Al 100% ve al centro. Mucho daño", role = "healer", type = "mechanic" },
    },

    ["LURA"] = {
        name = { en = "L'ura", es = "L'ura" },

        { en = "Dodge big rotating beams", es = "Esquiva los rayos que giran", role = "all", type = "mechanic" },
        { en = "When marked with white lines, align them with the bigger notes", es = "Si tienes unas líneas blancas apuntando a ti, alinéalas con las notas más grandes", role = "all", type = "mechanic" },
        { en = "Use CDs during stun", es = "Usa CDs durante el stun", role = "dps", type = "mechanic" },
        { en = "Dodge AoE", es = "Esquiva AoE", role = "all", type = "mechanic" },
    },
},

    -- 8. Skyreach
   [1209] = {
    name = { en = "Skyreach", es = "Trecho Celestial" },

    ["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
        -- First Area
        { en = "First Area", es = "Primera zona", role = "all", type = "title" },
		
		{ en = "Dread Raven", es = "Cuervo aterrador", role = "all", type = "note" },
        { en = "Knockbacks you, don't be near the edge. Use Defensive.", es = "Te empuja, no estés cerca del borde. Usa defensivo.", role = "tank", type = "mechanic", text_prop = "tab" },
        { en = "Kill it first", es = "Mátalo primero", role = "dps", type = "mechanic", text_prop = "tab" },
        { en = "Pulses of big damage\n", es = "Pulsos de mucho daño\n", role = "healer", type = "mechanic", text_prop = "tab" },

        { en = "Adorned Bladetalons give bleeding stacks to the tank", es = "Los Garracorvo adornados aplican sangrado al tanque", role = "healer", type = "mechanic" },
        { en = "Kick Repel from Gale-Callers", es = "Corta Repeler de los Clamavendadales", role = "interrupt", type = "mechanic" },

        -- Second Area
        { en = "Second Area\n", es = "Segunda zona\n", role = "all", type = "title" },

        { en = "Kill the Solar Orb before it explodes", es = "Rompe el Orbe Solar antes de que explote", role = "dps", type = "mechanic" },
        { en = "Dodge AoE", es = "Esquiva AoE", role = "all", type = "mechanic" },
        { en = "Kick the Blinding Sun Priestess", es = "Corta a la Sacerdotisa del sol cegador", role = "interrupt", type = "mechanic" },
        { en = "Solar Constructs channel a player hard", es = "Los Ensamblajes solares hacen daño fuerte canalizado a un jugador", role = "healer", type = "mechanic" },

        -- Third Area
        { en = "Third Area\n", es = "Tercera zona\n", role = "all", type = "title" },
        { en = "Birds mark players, use CC so you don't get hit", es = "Los pájaros marcan jugadores, CCea para que no te den", role = "all", type = "mechanic" },

        -- Fourth Area
        { en = "Fourth Area\n", es = "Cuarta zona\n", role = "all", type = "title" },
        { en = "After finishing the maze click on the vortex to turn the maze off", es = "Tras terminar la zona de vientos haz clic en el vórtice para desactivarlo", role = "all", type = "mechanic" },
    },

    ["RANJIT"] = {
        name = { en = "Ranjit", es = "Ranjit" },

        { en = "Knocks back players, don't be near the edge", es = "Empuja a los jugadores, no estés cerca del borde", role = "all", type = "mechanic" },
        { en = "Dodge everything", es = "Esquiva todo", role = "all", type = "mechanic" },
        { en = "Be careful with the bleed", es = "Cuidado con el sangrado", role = "healer", type = "mechanic" },
        { en = "If you see an arrow don't be in front of it", es = "Si ves una flecha no te pongas delante", role = "all", type = "mechanic" },
    },

    ["ARAKNATH"] = {
        name = { en = "Araknath", es = "Araknath" },

        { en = "Dodge the frontal (tank included)", es = "Esquiva el frontal (incluido el tanque)", role = "all", type = "mechanic" },
        { en = "Block the rays by soaking them", es = "Bloquea los rayos soakeándolos", role = "all", type = "mechanic" },
        { en = "Rays do a lot of damage", es = "Los rayos hacen mucho daño", role = "healer", type = "mechanic" },
        { en = "Dodge AoE", es = "Esquiva AoE", role = "all", type = "mechanic" },
        { en = "Tank be always at melee range", es = "El tanque debe estar siempre a melee", role = "tank", type = "mechanic" },
    },

    ["RUKHRAN"] = {
        name = { en = "Rukhran", es = "Rukhran" },

        { en = "Defensive CD for Burning Claws", es = "Usa defensivo para Garras Ardientes", role = "tank", type = "mechanic" },
        { en = "Kill adds before they reach a player they fixate", es = "Mata los adds antes de que alcancen al jugador fijado", role = "all", type = "mechanic" },
        { en = "Adds explode after dying and leave an egg. Dodge", es = "Los adds explotan al morir y dejan un huevo. Esquiva", role = "all", type = "mechanic" },
        { en = "Don't let explosions touch other eggs", es = "No dejes que las explosiones toquen otros huevos", role = "all", type = "mechanic" },
        { en = "When the boss goes flying hide behind the pillar", es = "Cuando el boss vuele escóndete detrás del pilar", role = "all", type = "mechanic" },
        { en = "Tank be always at melee range", es = "El tanque debe estar siempre a melee", role = "tank", type = "mechanic" },
    },
},
	--Murder Row
	[2813] = {
	name = { en = "Murder Row", es = "Frontal de la Muerte" },

	["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
		{ en = "Before first boss",
		 es = "Antes del primer boss",
		 type = "title" },

		{ en = "Row Hooligans",
		 es = "Gamberro del Frontal",
		 type = "note" },

		{ en = "They leap to players and put bleeds",
		 es = "Saltan a jugadores y ponen sangrados",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Snitches event",
		 es = "Evento de soplones",
		 type = "note" },

		{ en = "To unlock the first boss you have to interrogate four snitches",
		 es = "Para desbloquear el primer boss tienes que interrogar a cuatro soplones",
		 type = "mechanic", text_prop = "tab" },

		{ en = "You need to be out of combat to do it",
		 es = "Tienes que estar fuera de combate para interactuar",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Street sneaks",
		 es = "Acechador callejero",
		 type = "note" },

		{ en = "The poison reduces HP by 30% and is a DoT. Dispel it",
		 es = "El veneno reduce HP un 30% y es un DoT. Dispeléalo",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Bribed enemies",
		 es = "Enemigos sobornados",
		 type = "note" },

		{ en = "Shield bash is a tank buster be careful if you have the poison. Use defensives",
		 es = "Azote de escudo puede ser peligroso si tienes el veneno. Usa defensivos",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Seductive satyrs",
		 es = "Sátiros seductores",
		 type = "note" },

		{ en = "Kick Seduction (disorients you)",
		 es = "Corta Seducción (desorienta)",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Massive Felwyrm",
		 es = "Vermivil enorme",
		 type = "note" },

		{ en = "Dispel Corroding spittle",
		 es = "Dispelea Babas corrosivas",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "After first boss",
		 es = "Después del primer boss",
		 type = "title" },

		{ en = "Take a disguise from the NPC next to the checkpoint",
		 es = "Coge un disfraz del NPC al lado del checkpoint",
		 type = "mechanic" },

		{ en = "At the top of the building Selenar will give you a role for the next RP event. Take it. You can see it as a debuff",
		 es = "Arriba del edificio Selenar te va a dar un rol para el evento de RP. Puedes ver cual es en los debuff",
		 type = "mechanic" },

		{ en = "RP event",
		 es = "Evento de RP",
		 type = "note" },

		{ en = "If cleaner, take the broom and clean the puddles on the floor",
		 es = "Si te toca limpiar, coge la escoba y limpia los charcos en el suelo",
		 type = "mechanic", text_prop = "tab" },

		{ en = "If server, bring meat, cheese and drink to tables",
		 es = "Si te toca servir, lleva la carne, bebida y queso a las mesas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "If entertainer, catch the notes that fall from the ceiling",
		 es = "Si te toca entertener, coge las notas que van cayendo",
		 type = "mechanic", text_prop = "tab" },

		{ en = "The mobs before the second boss try to flee at low HP",
		 es = "Los bichos antes del segundo boss intentan escapar cuando tienen poca vida",
		 type = "mechanic" },

		{ en = "After second boss",
		 es = "Después del segundo boss",
		 type = "title" },

		{ en = "There are many casters, be careful",
		 es = "Hay muchos casters, ten cuidado",
		 type = "mechanic", role = "interrupt" },

		{ en = "Imps",
		 es = "Diablillos",
		 type = "note" },

		{ en = "They don't do a lot of damage, but many of them can be a problem",
		 es = "No hacen mucho daño pero muchos pueden ser un problema",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Flayers",
		 es = "Despellejadores",
		 type = "note" },

		{ en = "Bleed",
		 es = "Sangrado",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Kick enrage",
		 es = "Corta los adds",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Fel Invoker",
		 es = "Invocador",
		 type = "note" },

		{ en = "Kick channel",
		 es = "Corta canalizado",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Corrupted Warlock",
		 es = "Brujo corrupto",
		 type = "note" },

		{ en = "Dispel curse",
		 es = "Dispelea la maldición",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "CC on channel",
		 es = "CC cuando canalice",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Lucsei",
		 es = "Lucsei",
		 type = "note" },

		{ en = "Move from AoE",
		 es = "Esquiva áreas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "After third boss",
		 es = "Después del tercer boss",
		 type = "title" },

		{ en = "Golem",
		 es = "Golem",
		 type = "note" },

		{ en = "Huge AoE damage when channeling",
		 es = "Mucho daño cuando canaliza",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Dodge AoE and beam (when you have an arrow)",
		 es = "Esquiva áreas y rayo (cuando tengas una flecha)",
		 type = "mechanic", text_prop = "tab" },

	},

	--------------------------------------------------------------------
	-- BOSSES
	--------------------------------------------------------------------

	["KYSTIA_MANAHEART"] = {
		name = { en = "Kystia", es = "Kystia" },
		{ en = "Hit the pet. At 20% you can damage the boss",
		 es = "Pégale a la pet, Al 20% le puedes pegar al boss",
		 type = "mechanic", role = "dps" },

		{ en = "When the pet reaches 20% HP there will be huge AoE damage",
		 es = "Cuando la pet llegue al 20% hay mucho daño en área",
		 type = "mechanic", role = "healer" },

		{ en = "Dispel Corroding spittle",
		 es = "Dispelea Babas corrosivas",
		 type = "mechanic", role = "healer" },

		{ en = "Chaos Barrage does a magic hit, be careful",
		 es = "Tromba de caos hace daño mágico fuerte, ten cuidado",
		 type = "mechanic", role = "tank" },

		{ en = "Kick or CC the copies",
		 es = "Corta o CCea las copias",
		 type = "mechanic", role = "interrupt" },

		{ en = "Move from AoE and rotating frontals",
		 es = "Esquiva áreas y los frontales que giran",
		 type = "mechanic" },

	},
	["ZAEN_BLADESORROW"] = {
		name = { en = "Zaen", es = "Zaen" },
		{ en = "Killing Spree does heavy AoE damage",
		 es = "Asesinato múltiple hace mucho daño en área",
		 type = "mechanic", role = "healer" },

		{ en = "Dispel poison",
		 es = "Dispelea el veneno",
		 type = "mechanic", role = "healer" },

		{ en = "If you have a red circle, go to the green barrel to explode it",
		 es = "Si tienes un círculo rojo, ve al barril verde para explotarlo",
		 type = "mechanic" },

		{ en = "If you have a red line, go behind a barrel. There can be more than one person in each barrel",
		 es = "Si tienes una línea roja ve detrás de un barril, puede haber más de uno detrás de cada barril",
		 type = "mechanic" },

	},
	["XATHUUX"] = {
		name = { en = "Xathuux", es = "Xathuux" },
		{ en = "The boss throws an axe to a player, destroy it ASAP",
		 es = "El boss lanza un hacha a un jugador, rómpela",
		 type = "mechanic", role = "dps" },

		{ en = "After 100% use CDs, boss takes more damage",
		 es = "CDs después de que llegue al 100% de energía, recibe más daño",
		 type = "mechanic", role = "dps" },

		{ en = "At 100% energy it does huge AoE damage",
		 es = "Al 100% de energía hace mucho daño en área",
		 type = "mechanic", role = "healer" },

		{ en = "CD on frontal. It follows you, so don't hit other players",
		 es = "Defensivo cuando haga el frontal. Te sigue así que no le des a otros jugadores",
		 type = "mechanic", role = "tank" },

		{ en = "After 100% use CD, boss has more attack speed. Move him from the puddles",
		 es = "Defensivo después del 100% de energía, pega más rápido. Esquiva los charcos",
		 type = "mechanic", role = "tank" },

		{ en = "Spread with green circles",
		 es = "Separáos con los círculos verdes",
		 type = "mechanic" },

		{ en = "Dodge AoE",
		 es = "Esquiva áreas",
		 type = "mechanic" },

	},
	["LITHIEL"] = {
		name = { en = "Lithiel", es = "Lithiel" },
		{ en = "Kill adds ASAP",
		 es = "Mata los adds",
		 type = "mechanic", role = "dps" },

		{ en = "After the circle there is magic damage",
		 es = "Después del círculo hay daño mágico",
		 type = "mechanic", role = "healer" },

		{ en = "Kite the infernal",
		 es = "Kitea al infernal",
		 type = "mechanic", role = "tank" },

		{ en = "Kick Chaos Bolt",
		 es = "Corta la Descarga de Caos",
		 type = "mechanic", role = "interrupt" },

		{ en = "If you have a circle spread but not too much. Adds will appear",
		 es = "Si tienes un círculo sepárate pero no mucho, salen adds",
		 type = "mechanic" },

		{ en = "Use the gateway when the big wave appears",
		 es = "Usa el portal cuando salga la onda expansiva grande",
		 type = "mechanic" },

	},
	},

	--The Blinding Vale
	[2859] = {
	name = { en = "The Blinding Vale", es = "El Valle Cegador" },

	["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
		{ en = "Before first boss",
		 es = "Antes del primer boss",
		 type = "title" },

		{ en = "At the start it's recommended going left",
		 es = "Se recomienda ir por la izquierda al principio",
		 type = "mechanic", role = "tank" },

		{ en = "There will be magic dots on people. Dispel them",
		 es = "Dispelea los DoTs (magia)",
		 type = "mechanic", role = "healer" },

		{ en = "Radiant Spellsower",
		 es = "Siembrahechizos",
		 type = "note" },

		{ en = "Kick casts (especially Light Bolt)",
		 es = "Corta casteos (sobretodo las descargas de luz)",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "When low HP they will try to wake up Lashers, CC them",
		 es = "Cuando le queda poca vida intentará despertar azotadores, ccéalos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Virid Grovekeeper",
		 es = "Guardia de la arboleda",
		 type = "note" },

		{ en = "Big AoE damage",
		 es = "Mucho daño en área",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Lasher",
		 es = "Azotador",
		 type = "note" },

		{ en = "If you walk over them or taunt them they will wake up",
		 es = "Si pasas por encima o los taunteas se despiertan",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Sporeblight Belcher",
		 es = "Eructador",
		 type = "note" },

		{ en = "Heavy pulsing AoE damage",
		 es = "Mucho daño en área de pulso",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Blossoms in the map",
		 es = "Flores en el mapa",
		 type = "note" },

		{ en = "If you have Herbalism you can interact with them to get 5% haste and 20% speed",
		 es = "Si tienes herboristería puedes interactuar para ganar 5% de cele y 20% de velocidad",
		 type = "mechanic", text_prop = "tab" },

		{ en = "After first boss",
		 es = "Después del primer boss",
		 type = "title" },

		{ en = "Lightfeather Petalwing",
		 es = "Alapétalo",
		 type = "note" },

		{ en = "Kick disorienting",
		 es = "Corta el desorientar",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Move from frontals",
		 es = "Esquiva frontales",
		 type = "mechanic" },

		{ en = "After second boss",
		 es = "Después del segundo boss",
		 type = "title" },

		{ en = "Interact with the bird to move to the next zone",
		 es = "Habla con el pájaro para ir a la siguiente zona",
		 type = "mechanic" },

		{ en = "Luminous Thornmaw",
		 es = "Faucespino",
		 type = "note" },

		{ en = "Move from frontals",
		 es = "Esquiva los frontales",
		 type = "mechanic", text_prop = "tab" },

		{ en = "The bleed goes out if you top the person with it",
		 es = "El sangrado se quita levantándolo a tope",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Leafy Grovecrawler",
		 es = "Reptarboledas",
		 type = "note" },

		{ en = "Kick cast",
		 es = "Corta casteo",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "After third boss",
		 es = "Después del tercer boss",
		 type = "title" },

		{ en = "Left side has less mobs",
		 es = "El lado izquierdo tiene menos bichos",
		 type = "mechanic" },

		{ en = "Potatoad Matriarch",
		 es = "Matriarca sapotata",
		 type = "note" },

		{ en = "Physical hit and knockback on tank",
		 es = "Daño físico y tira para atrás al tanque",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Poison over the whole group. If overlapped with other mechanics it's dangerous",
		 es = "Veneno en todo el grupo, si se junta con otras mecánicas puede ser peligroso",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Kill eggs with cleave",
		 es = "Rompe los huevos con cleave",
		 type = "mechanic", role = "dps" },

	},

	--------------------------------------------------------------------
	-- BOSSES
	--------------------------------------------------------------------

	["LIGHTBLOSSOM_TRINITY"] = {
		name = { en = "Lightblossom Trinity", es = "Trinidad de floración" },
		{ en = "Big damage when someone intercepts Kezkitt beam",
		 es = "Mucho daño cuando alguien intercepta el rayo de Kezkitt",
		 type = "mechanic", role = "healer" },

		{ en = "Meittik does a physical hit that summons three green pools",
		 es = "Meittik hace un golpe físico que deja 3 charcos",
		 type = "mechanic", role = "tank" },

		{ en = "They share HP",
		 es = "Comparten vida",
		 type = "mechanic" },

		{ en = "If you have a big circle, get out of the group. Dodge Lekshi after he jumps over you",
		 es = "Si tienes un círculo grande sepárate del grupo. Esquiva a Lekshi cuando salte sobre ti",
		 type = "mechanic" },

		{ en = "Don't get in the way of the yellow arrows from Lekshi",
		 es = "No te pongas en medio de las flechas amarillas de Lekshi",
		 type = "mechanic" },

		{ en = "Someone has to intercept the beams from Kezkitt",
		 es = "Alguien se tiene que poner en medio de los rayos de Kezkitt",
		 type = "mechanic" },

	},
	["IKUZZ"] = {
		name = { en = "Ikuzz", es = "Ikuzz" },
		{ en = "Break the roots after the red circles ASAP",
		 es = "Rompe las raíces después del círculo rojo cuanto antes",
		 type = "mechanic", role = "dps" },

		{ en = "When roots appear around the room there will be heavy pulsing damage",
		 es = "Cuando aparezcan raíces por el mapa va a haber mucho daño por pulsos",
		 type = "mechanic", role = "healer" },

		{ en = "From 40% HP there will be pulsing damage all the time",
		 es = "A partir del 40% mucho daño por pulsos todo el rato",
		 type = "mechanic", role = "healer" },

		{ en = "After knocking back the group you will have red circles, stack but without letting them touch each other. Breakable roots will appear",
		 es = "Desués de tirar para atrás el grupo habrá círculos rojos, separaos pero no mucho, salen raíces que hay que romper",
		 type = "mechanic" },

		{ en = "Movement freeing abilities work with roots",
		 es = "Habilidades para liberar movimiento funcionan con raíces",
		 type = "mechanic" },

		{ en = "If the boss fixates you, run away and make him pass over the roots. They will disappear",
		 es = "Si el boss te persigue corre y haz que pase por las raíces. Desaparecerán",
		 type = "mechanic" },

		{ en = "If you run over a root, it will root you. Break it",
		 es = "Si pasas por encima de una raíz en enraizará, rómpela en ese caso",
		 type = "mechanic" },

	},
	["RUIA"] = {
		name = { en = "Ruia", es = "Ruia" },
		{ en = "First phase",
		 es = "Primera fase",
		 type = "title" },

		{ en = "Six rays will appear from each character, after that there will be damage in that direction. Don't be in their way. You can pixel stack so nobody has to take damage",
		 es = "Van a salir seis rayos de cada jugador, no ponerse en su dirección. Si todo el mundo se pone en el mismo píxel se evita todo el daño",
		 type = "mechanic" },

		{ en = "Dodge AoE and whirlwinds",
		 es = "Esquiva áreas y torbellinos",
		 type = "mechanic" },

		{ en = "Second phase (70% HP)",
		 es = "Segunda fase (70% HP)",
		 type = "title" },

		{ en = "If you top the bleed it desappears",
		 es = "Si curas al tope se quita el sangrado",
		 type = "mechanic", role = "healer" },

		{ en = "If you get an arrow on top of you, the boss is going to do a frontal on you. Use a defensive",
		 es = "Si tienes una flecha sobre ti, el boss te hará un frontal. Tira defensivo",
		 type = "mechanic" },

		{ en = "Be careful with other people frontals",
		 es = "Cuidado con los frontales de otros jugadores",
		 type = "mechanic" },

		{ en = "Third phase (40% HP)",
		 es = "Tercera fase (40% HP)",
		 type = "title" },

		{ en = "Phase 1 and 2 mechanics at the same time",
		 es = "Mecánicas de la fase 1 y 2 a la vez",
		 type = "mechanic" },

	},
	["ZIEKKET"] = {
		name = { en = "Ziekket", es = "Ziekket" },
		{ en = "Kill adds",
		 es = "Mata a los adds",
		 type = "mechanic", role = "dps" },

		{ en = "Kick adds",
		 es = "Corta los adds",
		 type = "mechanic", role = "interrupt" },

		{ en = "Intercept orbs",
		 es = "Intercepta los orbes",
		 type = "mechanic" },

		{ en = "If you have a beam fixed over you, use defensive and point it to the adds corpses",
		 es = "Si tienes un frontal largo fijado sobre ti, usa defensivo y apunta a los cadáveres de los adds",
		 type = "mechanic" },

	},
	},

	--Den of Nalorakk
	[2825] = {
	name = { en = "Den of Nalorakk", es = "Guarida de Narolakk" },

	["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
		{ en = "Before first boss",
		 es = "Antes del primer boss",
		 type = "title" },

		{ en = "Gather six offerings. Some are barrels and other fish spots",
		 es = "Recoge seis ofrendas. Algunas son barriles y otras puntos de pesca",
		 type = "mechanic" },

		{ en = "Going right at first recommended (one more offering there)",
		 es = "Se recomienda ir a la derecha (hay una ofrenda más)",
		 type = "mechanic" },

		{ en = "Spirit of Hunger",
		 es = "Espíritu de hambre",
		 type = "note" },

		{ en = "Priority target. If it summons a totem, break it ASAP",
		 es = "Objetivo prioritario. Si saca un totem rómpelo lo antes que puedas",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Dispel curse",
		 es = "Dispelea las maldiciones",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Big AoE damage",
		 es = "Mucho daño en área",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Earthwhisper Tender",
		 es = "Cuidador susurratierra",
		 type = "note" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "After first boss",
		 es = "Después del primer boss",
		 type = "title" },

		{ en = "Territorial Matriarch",
		 es = "Matriarca territorial",
		 type = "note" },

		{ en = "Kite it when the small adds die (it enrages)",
		 es = "Kitealo cuando mueran los bichos pequeños (se pone en enrage)",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Snow area",
		 es = "Zona nevada",
		 type = "title" },

		{ en = "Winds push you back. There are shelters to avoid this (dry spots)",
		 es = "Los vientos te tiran para atrás. Hay zonas secas donde no te afecta",
		 type = "mechanic" },

		{ en = "Frigid Mauler",
		 es = "Aplastador gélido",
		 type = "note" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Avatar of Determination",
		 es = "Avatar de la determinación",
		 type = "note" },

		{ en = "When it roots everyone, break roots ASAP",
		 es = "Cuando enraice, rompe las raices cuanto antes",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "After being fred run away from the big circle",
		 es = "Cuando os liberéis corred fuera del círculo que aparece",
		 type = "mechanic", text_prop = "tab" },

		{ en = "You can skip the elemental before the next boss",
		 es = "Podeis saltaros el elemental de antes del segundo boss",
		 type = "mechanic" },

		{ en = "After second boss",
		 es = "Después del segundo boss",
		 type = "title" },

		{ en = "Interact with the campfire to go to the next zone",
		 es = "Interactúa con la hoguera para ir a la siguiente zona",
		 type = "mechanic" },

		{ en = "Stormbound mystic",
		 es = "Mística vinculada a la tormenta",
		 type = "note" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Grizzled Warbringer",
		 es = "Belisario curtido",
		 type = "note" },

		{ en = "Destroy totem ASAP",
		 es = "Destruye los totems lo antes que puedas",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Big AoE damage",
		 es = "Mucho daño en área",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Loyal Saberfang",
		 es = "Colmillo de sable leal",
		 type = "note" },

		{ en = "Don't pull too many at once, their bleed stacks",
		 es = "No pullees muchos a la vez, su sangrado stackea",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Loa Speaker Nanea",
		 es = "Portavoz de loa Nanea",
		 type = "note" },

		{ en = "Destroy totem ASAP",
		 es = "Destruye los totems lo antes que puedas",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "If you have a circle, go to the edges",
		 es = "Si tienes un círculo ve a los bordes",
		 type = "mechanic", text_prop = "tab" },

	},

	--------------------------------------------------------------------
	-- BOSSES
	--------------------------------------------------------------------

	["THE_HOARDMONGER"] = {
		name = { en = "The Hoardmonger", es = "Acaparatesoros " },
		{ en = "Big damage on Ravenous Bellow or Hardy Bellow",
		 es = "Mucho daño en bramido",
		 type = "mechanic", role = "healer" },

		{ en = "Dispel poisons",
		 es = "Disepelea venenos",
		 type = "mechanic", role = "healer" },

		{ en = "Defensive on Ravenous Bellow or Hardy Bellow",
		 es = "Defensivo en bramido",
		 type = "mechanic" },

		{ en = "Soak small green circles. They leave a poison DoT that stacks. Be careful",
		 es = "Soakea los círculitos verdes. Dejan un DoT que stackean, ten cuidado",
		 type = "mechanic" },

		{ en = "Dodge frontals",
		 es = "Esquiva frontales",
		 type = "mechanic" },

	},
	["SENTINEL_OF_WINTER"] = {
		name = { en = "Sentinel of Winter", es = "Centinela del invierno" },
		{ en = "Everyone has to channel the orb to summon the boss",
		 es = "Teneis que canalizar todos el orbe para empezar el boss",
		 type = "mechanic" },

		{ en = "The floor is ice, so it you will slip",
		 es = "El suelo es hielo, resbala",
		 type = "mechanic" },

		{ en = "Dispel DoTs (magic)",
		 es = "Dispelea DoTs (magia)",
		 type = "mechanic", role = "healer" },

		{ en = "After the DoT stack until some circles appear and dodge them. Some whirlwinds will appear",
		 es = "Después del DoT juntarse hasta que aparezcan unos círculos y esquivar los tornados que aparecen",
		 type = "mechanic" },

		{ en = "Kill adds",
		 es = "Matad adds",
		 type = "mechanic", role = "dps" },

		{ en = "Kick adds",
		 es = "Cortad adds",
		 type = "mechanic", role = "interrupt" },

		{ en = "After killing the add, soak the circle that appears under it. It will leave a pool",
		 es = "Después de matar al add, soakea el círculo que aparece, saldrá un charco debajo",
		 type = "mechanic" },

		{ en = "After the adds the boss will push players. Stay in the pools where you killed the adds",
		 es = "Después de los adds el boss empuja, quedaros en los charcos donde murieron los adds",
		 type = "mechanic" },

		{ en = "Big AoE damage during the pushing fase",
		 es = "Mucho daño en area en la fase que empuja",
		 type = "mechanic", role = "healer" },

		{ en = "Bring the boss to one of the pools when the two adds die",
		 es = "Cuando los dos adds vayan a morir lleva al boss a uno de los charcos",
		 type = "mechanic", role = "tank" },

	},
	["NAROLAKK"] = {
		name = { en = "Narolakk", es = "Narolakk" },
		{ en = "Defensive when Loa Speaker Nanea makes a shield",
		 es = "Defensivo cuando la Portavoz de loa Nanea haga un escudo",
		 type = "mechanic", role = "tank" },

		{ en = "If you have a green circle separate from the group. They will leave an echo",
		 es = "Si tienes un círculo sepárate del grupo. Dejarán un eco del boss",
		 type = "mechanic" },

		{ en = "When Loa Speaker Nanea makes a shield, stand behind it",
		 es = "Cuando la Portavoz de loa Nanea haga un escudo quedate detrás de él",
		 type = "mechanic" },

		{ en = "After that, the group will get knockbacked. Go to the circle to soak it",
		 es = "Después el grupo se empujará hacia atrás. Ve hacia el círculo que hay y soakéalo",
		 type = "mechanic" },

		{ en = "When the echos turn red and start running to Nanea, intercept them so they don't reach her",
		 es = "Cuando los ecos se ponen rojos irán a por la portavoz. Intercéptalos para que no le den",
		 type = "mechanic" },

	},
	},

	--Voidscar Arena
	[2923] = {
	name = { en = "Voidscar Arena", es = "Arena Lacravacua" },

	["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
		{ en = "Before first boss",
		 es = "Antes del primer boss",
		 type = "title" },

		{ en = "Going right at first recommended",
		 es = "Se recomienda ir al principio por la derecha",
		 type = "mechanic", role = "tank" },

		{ en = "Many kicks in the first pulls. Kick all you can",
		 es = "Corta todo lo que puedas, hay muchos casteos en las primeras pull",
		 type = "mechanic", role = "interrupt" },

		{ en = "Voidtouched magi",
		 es = "Magi tocado por el vacío",
		 type = "note" },

		{ en = "Priority target",
		 es = "Objetivo prioritario",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "If you have a circle, separate from the group and use a defensive",
		 es = "Si tienes un círculo sepárate y tira defensivo",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Raj'kess",
		 es = "Raj'kess",
		 type = "note" },

		{ en = "Destroy orbs ASAP",
		 es = "Rompe los orbes antes de que terminen de castear",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "When she does the long channel there is heavy AoE damage",
		 es = "Cuando hace el canalizado hay mucho daño en área",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Spread, she does chain lightnings",
		 es = "Separáos, hace cadenas de relámpagos",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Dodge stuff",
		 es = "Esquiva cosas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "At the first boss room kill everything to spawn it",
		 es = "Mata todo en la sala del primer boss para que aparezca",
		 type = "mechanic" },

		{ en = "Dispel the tank when needed",
		 es = "Dispelea al tanque cuando sea necesario",
		 type = "mechanic", role = "healer" },

		{ en = "Kite mobs from the turtles shields",
		 es = "Kitea a los bichos de los escudos de las tortugas",
		 type = "mechanic", role = "tank" },

		{ en = "Chitigoth",
		 es = "Chitigoth",
		 type = "note" },

		{ en = "Heavy AoE damage when channeling",
		 es = "Mucho daño cuando canaliza",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Dodge stuff",
		 es = "Esquiva cosas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Brutok",
		 es = "Brutok",
		 type = "note" },

		{ en = "Tank it close and facing to a wall, it will do charges and get stun",
		 es = "Tanquéalo cerca y mirando a la pared. Hace cargas que luego lo stunean",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "After the stun it will do a big hit on the tank, use defensive",
		 es = "Después del stun va a pegarle fuerte al tanque, usa defensivos",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "After first boss",
		 es = "Después del primer boss",
		 type = "title" },

		{ en = "You can go left or right at the stairs. Right has some mini-bosses, left has more bleeds and poisons",
		 es = "Puedes ir a la derecha o a la izquierda en las escaleras. A la derecha hay mini bosses y a la izquierda más sangrado y venenos",
		 type = "mechanic" },

		{ en = "Kilivore Screamer",
		 es = "Vociferador",
		 type = "note" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Watchful Harrower",
		 es = "Lacerante atento",
		 type = "note" },

		{ en = "Soak AoE and then run out of it",
		 es = "Soakea el área y después sal de ella rápido",
		 type = "mechanic", text_prop = "tab" },

		{ en = "If you have a circle, separate from the group",
		 es = "Si tienes un círculo, sepárate del grupo",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Brutal Overseer",
		 es = "Sobrestante brutal",
		 type = "note" },

		{ en = "Break his absorb shield ASAP",
		 es = "Rompe el escudo de absorción lo antes posible",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Dodge stuff",
		 es = "Esquiva cosas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Take the portal to go the next boss",
		 es = "Coge el portal para ir al siguiente boss",
		 type = "mechanic" },

		{ en = "After second boss",
		 es = "Después del segundo boss",
		 type = "title" },

		{ en = "You have to kill the three mini bosses shown on the minimap to go to the final boss",
		 es = "Tienes que matar los tres mini bosses que se marcan en el mapa para ir al útimo boss",
		 type = "mechanic" },

		{ en = "Devouring Brutalizer (mini boss)",
		 es = "Devoradores (mini bosses)",
		 type = "note" },

		{ en = "DoT on the whole party",
		 es = "DoT en todo el grupo",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Channel on you, use defensive if necessary",
		 es = "Canalizado en ti, usa defensivo si es necesario",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "On Devour run away or it heals",
		 es = "Al hacer devorar corre o se cura",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Agitated Voidscythe",
		 es = "Guadaña de vacío",
		 type = "note" },

		{ en = "Dispel poison",
		 es = "Dispelea venenos",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Bleed on tank, be careful",
		 es = "Sangrado en el tanque, ten cuidado",
		 type = "mechanic", text_prop = "tab", role = "tank" },

	},

	--------------------------------------------------------------------
	-- BOSSES
	--------------------------------------------------------------------

	["TAZRAH"] = {
		name = { en = "Taz'Rah", es = "Taz'Rah" },
		{ en = "The boss starts just when it appears",
		 es = "El boss empieza en cuanto aparece",
		 type = "mechanic" },

		{ en = "When there are balls on top of the pools  there will be high AoE damage",
		 es = "Cuando aparecen bolas en los charcos va a haber mucho daño en área",
		 type = "mechanic", role = "healer" },

		{ en = "Void blast hits hard and has a knockback. Use defensive",
		 es = "Explosión de vacío pega fuerte y empuja hacia atrás. Usa defensivo",
		 type = "mechanic", role = "tank" },

		{ en = "The boss creates four images that do charges on players, don't overlap them",
		 es = "El boss crea cuatro copias que hacen cargas sobre los jugadores, no las sobrepongas",
		 type = "mechanic" },

		{ en = "Dodge pools and the orbs that come out from them",
		 es = "Esquiva charcos y los orbes que salen de ellos",
		 type = "mechanic" },

	},
	["ATROXUS"] = {
		name = { en = "Atroxus", es = "Atroxus" },
		{ en = "Kill adds ASAP",
		 es = "Mata el add cuanto antes",
		 type = "mechanic", role = "dps" },

		{ en = "When the add is out there is a lot of damage",
		 es = "Cuando el add está vivo hace mucho daño en área",
		 type = "mechanic", role = "healer" },

		{ en = "When there's a white circle around the boss, an add will appear near one of the two green puddles, tank the boss near those puddles alternating them",
		 es = "Cuando el boss tiene un círculo blanco va a aparecer un add en uno de los dos charcos verdes del mapa. Tanquea el boss cerca de ellos y alternándolos",
		 type = "mechanic", role = "tank" },

		{ en = "Defensive on Hulking Claw, leaves a non dispelleable DoT",
		 es = "Defensivo en Zarpa Descomunal. Deja un DoT no dispeleable",
		 type = "mechanic", role = "tank" },

		{ en = "Dodge AoE and frontals",
		 es = "Esquiva áreas y frontales",
		 type = "mechanic" },

	},
	["CHARONUS"] = {
		name = { en = "Charonus", es = "Charonus" },
		{ en = "After the circle there's AoE damage",
		 es = "Hay daño en área después del círculo",
		 type = "mechanic", role = "dps" },

		{ en = "Point the frontal out of the group and the sucking pools, if possible",
		 es = "Apunta el frontal fuera del grupo y, si se puede, de los charcos que tiran de ti",
		 type = "mechanic", role = "dps" },

		{ en = "If you have a circle, spread",
		 es = "Si tienes un círculo, sepárate",
		 type = "mechanic", role = "healer" },

		{ en = "There are three pools with a ball that sucks all the players constantly",
		 es = "Hay tres charcos con una bola que tiran constantemente de los jugadores",
		 type = "mechanic", role = "tank" },

		{ en = "The closer you are, the more damage and suck you",
		 es = "Cuanto más cerca estés, más pegan y tiran de ti",
		 type = "mechanic" },

		{ en = "If you have an orb after you, make it pass through the sucking pools (one per person)",
		 es = "Si te sigue un orbe, pásalo por los charcos que tiran de ti (uno por persona)",
		 type = "mechanic" },

		{ en = "If you have an arrow, go to the edge of the room. The rest must not be in front of the boss",
		 es = "Si tienes una flecha vete al borde de la sala, los demás no deben ponerse frente al boss",
		 type = "mechanic" },

	},
	},

	--Altar of Fangs
	[2993] = {
	name = { en = "Altar of Fangs", es = "Altar de los Colmillos" },

	["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
		{ en = "Before first boss",
		 es = "Antes del primer boss",
		 type = "title" },

		{ en = "To go to the first boss you have to destroy the totems marked in the minimap",
		 es = "Para ir al primer boss tienes que destruir los totems que se marcan en el minimapa",
		 type = "mechanic" },

		{ en = "Primal Serpent",
		 es = "Serpiente primigenia",
		 type = "note" },

		{ en = "Kick or reduces haste",
		 es = "Corta o reduce celeridad",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Twinfang Harrower",
		 es = "Lacerante de colmillos gemelos",
		 type = "note" },

		{ en = "Dodge rotating frontal",
		 es = "Esquiva el frontal giratorio",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Ritual Chieftain",
		 es = "Jefe de ritual",
		 type = "note" },

		{ en = "Priority target",
		 es = "Objetivo prioritario",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Healing absorbs on the group",
		 es = "Absorción de sanación en el grupo",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "When every totem is destroyed, jump down to the first boss",
		 es = "Cuando se destruyen todo los totems se puede saltar abajo hacia el primer boss",
		 type = "mechanic" },

		{ en = "After first boss",
		 es = "Después del primer boss",
		 type = "title" },

		{ en = "High Evolutionist",
		 es = "Alto evolucionador",
		 type = "note" },

		{ en = "Dispel poison",
		 es = "Dispelea el veneno",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Kick poison and Evolve",
		 es = "Corta el veneno y evolucionar",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Rattling Withe",
		 es = "Retuerto tintineante",
		 type = "note" },

		{ en = "Non dispelleable DoT on tank and pulsing AoE damage",
		 es = "DoT no dispeleable en el tanque y mucho daño en área",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Dodge AoE and eggs",
		 es = "Esquiva áreas y huevos",
		 type = "mechanic" },

		{ en = "When all the mobs are killed in the second boss room, it will appear",
		 es = "Cuando matas a todos en la sala del segundo boss, aparece",
		 type = "mechanic" },

		{ en = "After second boss",
		 es = "Después del segundo boss",
		 type = "title" },

		{ en = "Deactivate the four totems channeling",
		 es = "Desactiva los cuatro totems con rayos",
		 type = "note" },

		{ en = "Blade of the altar",
		 es = "Hoja del altar",
		 type = "note" },

		{ en = "Jumps on players, stack",
		 es = "Salta en jugadores, juntaros",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Ascendant Serpent",
		 es = "Sierpe ascendente",
		 type = "note" },

		{ en = "If you have a circle separate a bit, adds will appear",
		 es = "Si tienes un círculo sepárate un poco pero no mucho, aparecen adds",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Kill adds ASAP",
		 es = "Mata los adds lo más rápido que puedas",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Ula'tek Chosen",
		 es = "Elegido de Ula'tek",
		 type = "note" },

		{ en = "AoE damage",
		 es = "Daño en área",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Dodge stuff",
		 es = "Esquiva cosas",
		 type = "mechanic", text_prop = "tab" },

	},

	--------------------------------------------------------------------
	-- BOSSES
	--------------------------------------------------------------------

	["RAVI"] = {
		name = { en = "Ravi", es = "Ravi" },
		{ en = "While the boss has the absorb shield it does AoE damage",
		 es = "Mientras el boss tenga escudo de absorción hace daño en área",
		 type = "mechanic", role = "healer" },

		{ en = "There are three piles. Bring always the boss to the piles without meat (can get BIG absorb shield)",
		 es = "Hay tres pilas. Lleva siempre al boss a la pila sin carne (le da un escudo de absorción GORDO)",
		 type = "mechanic", role = "tank" },

		{ en = "Soak swirls",
		 es = "Soakea las áreas marcadas",
		 type = "mechanic" },

		{ en = "Dodge stuff",
		 es = "Esquiva cosas",
		 type = "mechanic" },

	},
	["THE_WRITHING_COIL"] = {
		name = { en = "The Writhing Coil", es = "La Espiral Retorcida" },
		{ en = "First phase",
		 es = "Primera fase",
		 type = "note" },

		{ en = "Non dispelleable DoT on the whole party. High HPS requirement boss",
		 es = "DoT no dispeleable en todo el grupo. Hace falta mucho HPS en el boss",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Defensive on Swipe if necessary",
		 es = "Defensivo en Sacudida si es necesario",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Kick three times Toxic Atrophy (set a kicking order)",
		 es = "Corta tres veces seguidas Veneno Sincronicado (fijar orden de corte)",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Dodge stuff",
		 es = "Esquiva cosas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Second phase",
		 es = "Segunda fase",
		 type = "note" },

		{ en = "When pulled, run until your beam is green",
		 es = "Cuando tire de ti, corre hasta que el rayo que tienes se vuelva verde",
		 type = "mechanic", text_prop = "tab" },

		{ en = "After that the boss divides in snakes, kick them and kill them",
		 es = "Después de eso el boss se divide en serpientes. Corta todo y pégales",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "This phase is 20 seconds long and boss gets extra damage. Use CDs to damage the snakes (the damage to them also affects the boss)",
		 es = "La fase dura 20 segundos y el boss recibe más daño. Tira CDs con la serpiente (el daño también afecta al boss)",
		 type = "mechanic", text_prop = "tab", role = "dps" },

	},
	["ZULJAN"] = {
		name = { en = "Zul'jan", es = "Zul'jan" },
		{ en = "Defensive on Chop Down",
		 es = "Defensivo con Hachazo limpio",
		 type = "mechanic", role = "tank" },

		{ en = "The boss makes pools all the time, move it without blocking the space for the ritual beams",
		 es = "El boss hace charcos todo el rato, ve moviéndolo sin bloquear el espacio para los rayos del ritual",
		 type = "mechanic", role = "tank" },

		{ en = "Don't be in front of the big red arrow on the floor. Axes that are there until next phase will appear ",
		 es = "No te pongas en frente de la flecha roja gigante en el suelo. Aparecen hachas que están hasta la siguiente fase",
		 type = "mechanic" },

		{ en = "If you have a red frontal fixed on you move a bit from the group",
		 es = "Si tienes un frontal fijado en ti sepárate un poco del grupo",
		 type = "mechanic" },

		{ en = "Ritual and DoT",
		 es = "Ritual y DoT",
		 type = "note" },

		{ en = "Soak the four beams during the ritual. You get a few stacks of a 50 second DoT",
		 es = "Durante el ritual sokead los cuatro rayos. Deja un DoT de 50 segundos",
		 type = "mechanic", text_prop = "tab" },

		{ en = "If the DoT expires, it will one-shot you",
		 es = "Si se agota el tiempo del DoT, te one-shotea",
		 type = "mechanic", text_prop = "tab" },

		{ en = "To take out stacks, you need to get damage from the red frontal or axes",
		 es = "Para quitarte stacks tienes que recibir daño de hachas o del frontal que se fija en alguien",
		 type = "mechanic", text_prop = "tab" },

	},
	},

	--Ruby Life Pools
	[2521] = {
	name = { en = "Ruby Life Pools", es = "Estanques de Vida Rubí" },

	["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
		{ en = "Before first boss",
		 es = "Antes del primer boss",
		 type = "title" },

		{ en = "Don't run over the eggs",
		 es = "No pases por encima de los huevos",
		 type = "mechanic" },

		{ en = "Chillweaver",
		 es = "Tejefrío",
		 type = "note" },

		{ en = "Kick bolts and shield",
		 es = "Corta desgargas y escudo",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Primal Juggernaut",
		 es = "Gigate primigenio",
		 type = "note" },

		{ en = "Big hits on tank",
		 es = "Golpes gordos en el tanque",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Draghar",
		 es = "Draghar",
		 type = "note" },

		{ en = "When doing frontals don't point him to other mobs, they will be aggroed",
		 es = "No apuntes los frontales a otros bichos o se aggrean",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Dodge AoE",
		 es = "Esquiva áreas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Kill him to go to the first boss",
		 es = "Mátalo para poder ir al primer boss",
		 type = "mechanic", text_prop = "tab" },

		{ en = "After first boss",
		 es = "Después del primer boss",
		 type = "title" },

		{ en = "Take a drake to go to the next area",
		 es = "Coge un dragón para ir a la siguiente zona",
		 type = "mechanic" },

		{ en = "Thunderhead",
		 es = "Tronatesta",
		 type = "note" },

		{ en = "Dispel magic DoTs, high damage",
		 es = "Dispelea los DoTs (magia), hacen mucho daño",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Thunder jaw does heavy damage and knocks back",
		 es = "Fauces de trueno hace mucho daño y tira hacia atrás",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Dodge AoEs",
		 es = "Esquiva áreas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Flamegullet",
		 es = "Gargantardiente",
		 type = "note" },

		{ en = "Pulsing damage at 50% HP",
		 es = "Daño de pulso al 50%",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Dodge frontal",
		 es = "Esquiva frontales",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Blazebound Destroyer",
		 es = "Destructor vinculado a las llamas",
		 type = "note" },

		{ en = "Big AoE damage",
		 es = "Mucho daño en área",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Kick casts, big hit on tank",
		 es = "Corta casteos, pegan mucho al tanque",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Dodge AoE when it dies",
		 es = "Cuando muere hace un área, esquiva",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Primalists",
		 es = "Primalistas",
		 type = "note" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Ashseer Flamelasher",
		 es = "Primalista danzallamas",
		 type = "note" },

		{ en = "Stop or stun when channeling, they do high AoE damage",
		 es = "Corta o stunea cuando canalice, mucho daño en área",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Separate from the group if you have a circle. It will lift you afterwards so you won't be able to move for a while",
		 es = "Si tienes un círculo sepárate. Te levantará después así que no podrás moverte por un momento",
		 type = "mechanic", text_prop = "tab" },

		{ en = "After second boss",
		 es = "Después del segundo boss",
		 type = "title" },

		{ en = "Tempest Channeler",
		 es = "Canalizadora",
		 type = "note" },

		{ en = "Defensive on Lightning torrent",
		 es = "Defensivo con torrente",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Big AoE pulsing damage and individual damage (on Lightning torrent)",
		 es = "Mucho daño en área por pulsos e individual",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Ryvati",
		 es = "Ryvati",
		 type = "note" },

		{ en = "Same mechanics as Tempest Channeler",
		 es = "Mismas mecánicas que la canalizadora",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Break shield ASAP",
		 es = "Rompe el escudo lo más rápido que puedas",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Heavy AoE damage when shielded",
		 es = "Mucho daño en área cuando tiene el escudo",
		 type = "mechanic", text_prop = "tab", role = "healer" },

	},

	--------------------------------------------------------------------
	-- BOSSES
	--------------------------------------------------------------------

	["MELIDRUSSA"] = {
		name = { en = "Melidrussa", es = "Melidrussa" },
		{ en = "Kill the adds ASAP or you won't be able to damage the boss",
		 es = "Mata los adds lo más rápido que puedas o no le puedes pegar al boss",
		 type = "mechanic", role = "dps" },

		{ en = "Big pulsing damage when big circle pulls everyone",
		 es = "Cuando el círculo grande atrae al grupo hay mucho daño por pulsos en área",
		 type = "mechanic", role = "healer" },

		{ en = "Kick her casts",
		 es = "Corta los casteos",
		 type = "mechanic", role = "interrupt" },

		{ en = "If you have a circle go out of the group",
		 es = "Si tienes un círculo sepárate",
		 type = "mechanic" },

		{ en = "Dodge AoE and run away when pulled to them",
		 es = "Esquiva areas y cuando te atraigan corre",
		 type = "mechanic" },

	},
	["KOKIA"] = {
		name = { en = "Kokia", es = "Kokia" },
		{ en = "Add",
		 es = "Add",
		 type = "note" },

		{ en = "Kill ASAP",
		 es = "Mátalo cuanto antes",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Kick its casts",
		 es = "Corta los casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Use defensive on Searing blows",
		 es = "Usa defensivo en Golpes abrasadores",
		 type = "mechanic", role = "tank" },

		{ en = "If you have a small circle, the boss will throw a ball at you, point it out of the group",
		 es = "Si tienes un círculo pequeño tirará una bola sobre ti, apúntala fuera del grupo",
		 type = "mechanic" },

		{ en = "If you have a big circle, separate a bit from the group but not too much, an add will appear",
		 es = "Si tienes un círculo grande sepárate pero no mucho, sale un add",
		 type = "mechanic" },

	},
	["KYRAKKA_AND_ERKHART"] = {
		name = { en = "Kyrakka & Erkhart", es = "Kyrakka & Erkhart" },
		{ en = "Boss",
		 es = "Boss",
		 type = "note" },

		{ en = "Dispel DoT on tank",
		 es = "Dispelea DoT en tanque",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Defensive on Storm slam",
		 es = "Defensivo con Golpetormentas",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Dragon",
		 es = "Dragón",
		 type = "note" },

		{ en = "Priority target",
		 es = "Objetivo prioritario",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Dodge frontals and AoE",
		 es = "Esquiva frontales y áreas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "When having a circle move from the group to the edges and use defensive. Leaves a pool",
		 es = "Cuando tengas un círculo ve a los bordes y usa defensivo. Deja charco",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Sometimes there will be winds. The direction rotates as: North, East, South, West",
		 es = "A veces hay vientos. La dirección rota siguiente: Norte, Este, Sur, Oeste",
		 type = "mechanic", text_prop = "tab" },

		{ en = "The pools that appear after the circles move with the wind",
		 es = "Los charcos se mueven con el viento",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Don't cast when Cloudburst",
		 es = "No castees cuando haga Ráfaga de nubes",
		 type = "mechanic", text_prop = "tab" },

		{ en = "At 50% HP, it goes away",
		 es = "Al 50% se va",
		 type = "mechanic", text_prop = "tab" },

	},
	},

	--Temple of Sethraliss
	[1877] = {
	name = { en = "Temple of Sethraliss", es = "Templo de Sethraliss" },

	["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
		{ en = "Before first boss",
		 es = "Antes del primer boss",
		 type = "title" },

		{ en = "Storm Adept",
		 es = "Adepto",
		 type = "note" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Sandswept Hunter",
		 es = "Tirador arrasarenas",
		 type = "note" },

		{ en = "They channel one player, be careful",
		 es = "Canalizados en un jugador, cuidado",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Sandfury Stonefist",
		 es = "Puñopiedra",
		 type = "note" },

		{ en = "Ground Pound does AoE damage and knockback",
		 es = "Aporrear suelo hace daño en área y knockback",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Sunder Slam is a big hit. Damage taken +50%",
		 es = "Embate pega fuerte, recibes más de 50% de daño",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Shrouded Fang",
		 es = "Colmillo velado",
		 type = "note" },

		{ en = "Dispel poison",
		 es = "Dispelea veneno",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "After first boss",
		 es = "Después del primer boss",
		 type = "title" },

		{ en = "Sand Sworn Rider",
		 es = "Jinete",
		 type = "note" },

		{ en = "Dodge frontal",
		 es = "Esquiva frontales",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Poisonous Viper",
		 es = "Ofidio venenoso",
		 type = "note" },

		{ en = "Dispel poison",
		 es = "Dispelea veneno",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Lightning Serpent",
		 es = "Serpiente relampagueante",
		 type = "note" },

		{ en = "Dodge the pools",
		 es = "Esquiva charcos",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Krolusk Matriarch",
		 es = "Matriarca de crolusco",
		 type = "note" },

		{ en = "Dodge frontal",
		 es = "Esquiva frontal",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Hits hard, defensive if necessary",
		 es = "Pega mucho, usa defensivo si hace falta",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Dutiful Tamer",
		 es = "Domador ",
		 type = "note" },

		{ en = "Kick summon to delay it if needed",
		 es = "Corta la invocación para retrasarla si es necesario",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Brood Tender & Faithless Subjugator",
		 es = "Cuidador infiel",
		 type = "note" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "After second boss",
		 es = "Después del segundo boss",
		 type = "title" },

		{ en = "Agitated Nimbus",
		 es = "Nimbo inquieto",
		 type = "note" },

		{ en = "Party-wide damage",
		 es = "Daño en área al grupo",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Dodge AoE",
		 es = "Esquiva áreas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Imbued Stormcaller",
		 es = "Clamatormentas ",
		 type = "note" },

		{ en = "Kick casts",
		 es = "Corta casteos",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Static Anomaly",
		 es = "Anomalía estática",
		 type = "note" },

		{ en = "Jumps on players and leaves magic DoTs",
		 es = "Salta en jugadores y les pone DoTs (magia)",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Don’t pull too many",
		 es = "No pullees muchos",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "After third boss",
		 es = "Después del tercer boss",
		 type = "title" },

		{ en = "Maze area",
		 es = "Área de orbes",
		 type = "note" },

		{ en = "After going through all the orbs, you will see two marks in the map",
		 es = "Después de pasar por todos los bordes verás dos marcas en el mapa. Ahí hay otro tipo de orbes",
		 type = "mechanic", text_prop = "tab" },

		{ en = "You need to be close to the orbs marked in the map until they are at 100%",
		 es = "Ponte cerca de esos orbes hasta que lleguen al 100%",
		 type = "mechanic", text_prop = "tab" },

		{ en = "The Watcher near the orb does AoE poison DoTs",
		 es = "El guardian cerca del orbe pone DoTs de veneno en área",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Kick  the Disruptors",
		 es = "Corta los disruptores",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "When the two orbs are at 100%, you can move to the next area",
		 es = "Cuando los dos orbes estén al 100%, puedes ir a la siguiente zona",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Last boss area",
		 es = "Zona del último boss",
		 type = "note" },

		{ en = "Kick Hexxer",
		 es = "Corta al aojador",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Run if fixated",
		 es = "Corre si te persiguen",
		 type = "mechanic", text_prop = "tab" },

		{ en = "If you have a circle, go to the edges",
		 es = "Si tienes un círculo ve a los bordes",
		 type = "mechanic", text_prop = "tab" },

		{ en = "When everything dies, talk with the avatar to start the boss",
		 es = "Habla con el avatar cuand mueran todos los bichos para empezar el boss",
		 type = "mechanic", text_prop = "tab" },

	},

	--------------------------------------------------------------------
	-- BOSSES
	--------------------------------------------------------------------

	["ADDERIS_ASPIX"] = {
		name = { en = "Adderis and Aspix", es = "Adderis y Aspix" },
		{ en = "Hit the boss without the shield",
		 es = "Pégale al boss sin escudo",
		 type = "mechanic", role = "dps" },

		{ en = "The boss with a shield sets the mechanics",
		 es = "El boss con escudo decide las mecánicas",
		 type = "mechanic" },

		{ en = "When one of the bosses dies, all the mechanics occur at the same time",
		 es = "Cuando uno de los dos muere todas las mecánicas ocurren a la vez",
		 type = "mechanic" },

		{ en = "Aspix",
		 es = "Aspix",
		 type = "note" },

		{ en = "Hit on a player that leaves a DoT",
		 es = "Golpe que deja un DoT",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Don’t overlap beams. They also do a knockback",
		 es = "No sobrepongas rayos, tiran hacia atrás",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Adderis",
		 es = "Adderis",
		 type = "note" },

		{ en = "Defensive on Overload",
		 es = "Defensivo en Sobrecarga",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "If you have a circle, go to the edges",
		 es = "Si tienes un círculo ve a los bordes",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Soak the marked player and then run away from the circle that appears",
		 es = "Soakea la marca y sal corriendo del círculo que aparece",
		 type = "mechanic", text_prop = "tab" },

	},
	["MEREKTHA"] = {
		name = { en = "Merektha", es = "Merektha" },
		{ en = "Kill the Storm Serpent ASAP",
		 es = "Mata las serpientes lo antes que puedas",
		 type = "mechanic", role = "dps" },

		{ en = "Big AoE damage and knockback on Serpent Storm",
		 es = "Tira para atrás y hay mucho daño en área en tormenta",
		 type = "mechanic", role = "healer" },

		{ en = "Defensive on Lightning Bite. Leaves a DoT",
		 es = "Defensivo en el mordisco, deja un DoT",
		 type = "mechanic", role = "tank" },

		{ en = "Kick small snakes and adds",
		 es = "Corta a las serpientes pequeñas y a los adds",
		 type = "mechanic", role = "interrupt" },

		{ en = "If have an arrow, move. Pools will appear for a while",
		 es = "Muévete si tienes una flecha, van a salir varios charcos",
		 type = "mechanic" },

		{ en = "Dodge AoE",
		 es = "Esquiva áreas",
		 type = "mechanic" },

	},
	["GALVAZZT"] = {
		name = { en = "Galvazzt", es = "Galvazzt" },
		{ en = "Party-wide damage during boss",
		 es = "Daño en área durante el boss",
		 type = "mechanic", role = "healer" },

		{ en = "Soak electric beams (not the tank)",
		 es = "Soakea los rayos (el tanque no)",
		 type = "mechanic" },

		{ en = "Move out of the puddles",
		 es = "nan",
		 type = "mechanic" },

		{ en = "If you don't soak and the boss gets to 100 energy, it buffes a lot",
		 es = "Si no soakeas y el boss llega al 100% de energía se buffa mucho",
		 type = "mechanic" },

	},
	["AVATAR_OF_SETHRALISS"] = {
		name = { en = "Avatar", es = "Avatar" },
		{ en = "Kill Essence Defilers ASAP",
		 es = "Mat a los corruptores lo antes que puedas",
		 type = "mechanic", role = "dps" },

		{ en = "Sometimes the healer will be fixated, kill those adds",
		 es = "A veces van a fijar al healer, mata esos adds",
		 type = "mechanic", role = "dps" },

		{ en = "The boss ends when healed to max health",
		 es = "Cuando se cura el boss a tope se acaba el combate",
		 type = "mechanic", role = "healer" },

		{ en = "Guardians Tainted Strike hits hards and leaves a DoT",
		 es = "Los ataques de los guardianes pegan fuerte y dejan DoT",
		 type = "mechanic", role = "tank" },

		{ en = "Dodge AoE",
		 es = "Esquiva áreas",
		 type = "mechanic" },

		{ en = "If you have a circle, go to the edges",
		 es = "Si tienes un círculo ve a los bordes",
		 type = "mechanic" },

		{ en = "After a Guardian dies it leaves an orb, soak it twice (not the healer)",
		 es = "Cuando mueren los guardianes dejan un orbe que hay que soakear dos veces (el healer no)",
		 type = "mechanic" },

	},
	},

	--Kings' Rest
	[1762] = {
	name = { en = "Kings' Rest", es = "Reposo de los Reyes" },

	["Trash"] = {
		name = { en = "Trash", es = "Pulls" },
		{ en = "Before first boss",
		 es = "Antes del primer boss",
		 type = "title" },

		{ en = "Minion of Zul",
		 es = "Esbirro de Zul",
		 type = "note" },

		{ en = "Have an absorb shield. If you dispel them they die, if not, kill them",
		 es = "Tiene un escudo, si los dispeleas se mueren, sino mátalos",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Don't let them reach you",
		 es = "No dejes que te alcancen",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Animated Guardian",
		 es = "Guardian",
		 type = "note" },

		{ en = "Pulsing AoE damage",
		 es = "Daño en área por pulsos",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "First boss room event",
		 es = "Evento de la sala del primer boss",
		 type = "note" },

		{ en = "Interact with the drum in the next room and kill everything",
		 es = "Interactúa con el tambor en la siguiente habitación y mata todo",
		 type = "mechanic", text_prop = "tab" },

		{ en = "dodge AoEs and if a mob has a shield, attack from behind it",
		 es = "Esquiva áreas, si un bicho tiene un escudo ponte detrás para pegarle",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Kick hexers",
		 es = "Corta aojadores",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "After first boss",
		 es = "Después del primer boss",
		 type = "title" },

		{ en = "Hallway event",
		 es = "Evento del pasillo",
		 type = "note" },

		{ en = "Enemies will activate in random orders",
		 es = "Los enemigos se activan aleatoriamente",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Dodge stuff",
		 es = "Esquiva cosas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Defensive on King Alakul's Blood Drain",
		 es = "Defensivo en el drenar del Rey Alakul",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Dispel poisons",
		 es = "Dispelea veneno",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Tank gets high damage from bleeds",
		 es = "El tanque recibe mucho daño de sangrado",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "If kickable, kick it",
		 es = "Si puedes cortar, corta",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Mob on the bridge",
		 es = "Bicho en el puente",
		 type = "note" },

		{ en = "High AoE damage",
		 es = "Mucho daño en área",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Dodge pools",
		 es = "Esquiva charcos",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Second boss room",
		 es = "Sala del segundo boss",
		 type = "note" },

		{ en = "The slimes leave a pool after dying",
		 es = "Los mocos dejan un charco a morir",
		 type = "mechanic", text_prop = "tab" },

		{ en = "If you get imprisoned in a coffin, use the extra button to shake it. The rest must open that coffin",
		 es = "Si te meten en un sarcófago, usa el botón extra para agitarlo. Los demás tienen que clickear en el para abrirlo",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Kick mummies",
		 es = "Corta a las momias",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "After second boss",
		 es = "Después del segundo boss",
		 type = "title" },

		{ en = "Next room",
		 es = "Siguiente sala",
		 type = "note" },

		{ en = "Kill Shamans first",
		 es = "Mata a los chamanes primero",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Pull one brute at a time",
		 es = "Pullea un bruto a la vez",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "A few enemies will spawn behind, be careful",
		 es = "Van a spawnear enemigos detrás, ten cuidado",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Dodge stuff",
		 es = "Esquiva cosas",
		 type = "mechanic", text_prop = "tab" },

		{ en = "After third boss",
		 es = "Después del tercer boss",
		 type = "title" },

		{ en = "Shadow of Zul",
		 es = "Sombra de Zul",
		 type = "note" },

		{ en = "CC the Minions of Zul that appear after the big circle",
		 es = "CCea los esbirros que aparecen después del círculo grande",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Stand in the small purple circle",
		 es = "Ponte en el círculo pequeño morado",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Separate from the group if you have a big circle",
		 es = "Si tienes un círculo grande sepárate",
		 type = "mechanic", text_prop = "tab" },

	},

	--------------------------------------------------------------------
	-- BOSSES
	--------------------------------------------------------------------

	["THE_GOLDEN_SERPENT"] = {
		name = { en = "Serpent", es = "Serpiente" },
		{ en = "At some point the puddles become adds, kill them ASAP. Don't let them reach the boss",
		 es = "En algún momento los charcos se vuelven adds. Mátalos antes de que lleguen al boss",
		 type = "mechanic", role = "dps" },

		{ en = "Serpentine Gust does AoE damage",
		 es = "Soplo serpentino hace daño en área",
		 type = "mechanic", role = "healer" },

		{ en = "Defensive on Tail Thrash",
		 es = "Defensivo en Cola apaleadora",
		 type = "mechanic", role = "tank" },

		{ en = "If you have a circle around you go to the edges",
		 es = "Si tienes un círculo ve a los bordes",
		 type = "mechanic" },

	},
	["MCHIMBA"] = {
		name = { en = "Mchimba", es = "Mchimba" },
		{ en = "Channeled big damage to a single player",
		 es = "Mucho daño canalizado a un jugador",
		 type = "mechanic", role = "healer" },

		{ en = "Dodge AoE. Don't be near the coffins to not drop the red circle there",
		 es = "Esquiva las áreas. No te pongas cerca de lo sarcófagos para no poner charcos ahí",
		 type = "mechanic" },

		{ en = "As with the mobs before, someone will be trapped in a coffin. Use the extra button to shake it. The other have to open it",
		 es = "Se repite la mecánica de los sarcófagos. Si estás dentro usa el botón extra para agitarlo. Sino clickea en él para liberar",
		 type = "mechanic" },

	},
	["THE_COUNCIL_OF_TRIBES"] = {
		name = { en = "Council", es = "Consejo" },
		{ en = "First boss",
		 es = "Primer boss",
		 type = "note" },

		{ en = "Dodge axes. They are there the whole fight",
		 es = "Esquiva hachas. Van a estar todo el combate",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Lots of bleeds",
		 es = "Mucho sangrado",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Second boss",
		 es = "Segundo boss",
		 type = "note" },

		{ en = "Soak Barrel",
		 es = "Soakea el barril",
		 type = "mechanic", text_prop = "tab" },

		{ en = "Third boss",
		 es = "Tercer boss",
		 type = "note" },

		{ en = "Destroy totems ASAP",
		 es = "Destruye los totems cuanto antes",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Move the boss to the totems. Recommended order: Bursting-Thundering-Torrent",
		 es = "Mueve el boss a los totems. Orden recomendado: Explosivo, atronador, torrente",
		 type = "mechanic", text_prop = "tab", role = "tank" },

		{ en = "Kick poison",
		 es = "Corta veneno",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

	},
	["DAZAR"] = {
		name = { en = "Dazar", es = "Dazar" },
		{ en = "Reban",
		 es = "Reban",
		 type = "note" },

		{ en = "Prioritize it",
		 es = "Objetivo prioritario",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Kick to not get feared",
		 es = "Corta para evitar el miedo",
		 type = "mechanic", text_prop = "tab", role = "interrupt" },

		{ en = "Bleeds are applied the whole fight",
		 es = "Sangrado todo el combate",
		 type = "mechanic", role = "healer" },

		{ en = "Defensive on Blade Combo",
		 es = "Defensivo en Combo de hojas",
		 type = "mechanic", role = "tank" },

		{ en = "MANY AoEs will appear, dodge them",
		 es = "van a aparecer MUCHAS áreas, esquívalas",
		 type = "mechanic" },

		{ en = "If you have a circle separate from the group",
		 es = "Si tienes un círculo sepárate del grupo",
		 type = "mechanic" },

		{ en = "From 80% HP",
		 es = "A partir de 80% HP",
		 type = "title" },

		{ en = "T'Zala",
		 es = "T'Zala",
		 type = "note" },

		{ en = "Not a priority, don't focus her",
		 es = "No hace falta focusearla",
		 type = "mechanic", text_prop = "tab", role = "dps" },

		{ en = "Bleed on tank, be careful",
		 es = "Cuidado con el sangrado en el tanque",
		 type = "mechanic", text_prop = "tab", role = "healer" },

		{ en = "Part of the zone gets filled with AoE, run as fast as you can",
		 es = "Una parte de la zona se llena de áreas, corre todo lo que puedas",
		 type = "mechanic" },

	},
	},
}