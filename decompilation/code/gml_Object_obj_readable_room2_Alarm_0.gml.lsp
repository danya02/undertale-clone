0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    if !(== self.room 36s) goto 0x0000B4
0x000068:
    stog.msg[0s] = "* (An empty photo frame.)&* (It's really dusty...)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000B4
0x00009C:
    stog.msg[0s] = "* (An empty photo frame.)&* (Someone's dusted it off.)/%%"
0x0000B4:
    if !(== self.room 224s) goto 0x00010C
0x0000C8:
    stog.msg[0s] = "* (It's a family photograph.^1)&* (Everyone is smiling.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x00010C
0x0000F4:
    stog.msg[0s] = "\\R* .../%%"
0x00010C:
    if !(== self.room 33s) goto 0x0001B0
0x000120:
    stog.msg[0s] = "* It's a history book^1.&* Here's a random page.../"
    stog.msg[1s] = "* Trapped behind the barrier&  and fearful of further&  human attacks^1, we retreated./"
    stog.msg[2s] = "* Far^1, far into the earth&  we walked^1, until we reached&  the cavern's end./"
    stog.msg[3s] = "* This was our new home^1,&  which we named.../"
    stog.msg[4s] = "* \"Home.\"/"
    stog.msg[5s] = "* As great as our king is^1,&  he is pretty lousy at&  names./%%"
0x0001B0:
    if !(== self.room 223s) goto 0x000220
0x0001C4:
    stog.msg[0s] = "* It's a bureau./"
    stog.msg[1s] = "* There's a Santa Claus outfit&  inside./%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000220
0x000208:
    stog.msg[0s] = "\\R* Nothing useful./%%"
0x000220:
    if !(== self.room 221s) goto 0x000290
0x000234:
    stog.msg[0s] = "* (There are photo albums...^1)&* (Scrapbooks...^1)&* (Books on how to make tea...)/%%"
    stog.msg[1s] = "* (They all seem very worn.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000290
0x000278:
    stog.msg[0s] = "\\R* Nothing useful./%%"
0x000290:
    if !(== self.room 222s) goto 0x0002BC
0x0002A4:
    stog.msg[0s] = "* It's a golden flower./%%"
0x0002BC:
    if !(== self.room 32s) goto 0x0002E8
0x0002D0:
    stog.msg[0s] = "* Inside is an old calendar&  from the beginning of&  201X./%%"
0x0002E8:
    if !(== self.room 220s) goto 0x000314
0x0002FC:
    stog.msg[0s] = "* (It's a golden flower.)/%%"
0x000314:
    if !(== self.room 235s) goto 0x000340
0x000328:
    stog.msg[0s] = "* (It's another throne covered&  by a white sheet.)/%%"
0x000340:
    if !(== self.room 35s) goto 0x0003DC
0x000354:
    stog.msg[0s] = "* Just a regular old bucket^3 & &  of snails./%%"
    if !(> self.x 90s) goto 0x0003DC
0x000380:
    stog.msg[0s] = "* It's an encyclopedia of&  subterranean plants. You&  open to the middle.../"
    stog.msg[1s] = "* \"Typha\" - A group of wetland&  flowering plants with&  brown^1, oblong seedpods./"
    stog.msg[2s] = "* Known more commonly as& \"water sausages.\"/%%"
    stog.flag[50s] = 1s
0x0003DC:
    if !(== self.room 34s) goto 0x00043C
0x0003F0:
    stog.msg[0s] = "* You have seen this type&  of plant before but&  do not know its name./%%"
    push -5s
    if !(== 50s:flag 1s) goto 0x00043C
0x000424:
    stog.msg[0s] = "* Oh^2!&* It is a \"water sausage.\"/%%"
0x00043C:
    if !(== self.room 37s) goto 0x0004D0
0x000450:
    stog.msg[0s] = "* What a nice smell...&* Too hot to eat^1, though./%%"
    push -5s
    if !(> 103s:flag 0s) goto 0x00049C
0x000484:
    stog.msg[0s] = "* The size of the pie&  intimidates you too much&  for you to eat it./%%"
0x00049C:
    push -5s
    if !(== 7s:flag 1s) goto 0x0004D0
0x0004B8:
    stog.msg[0s] = "* (Most of the pie is gone.^1)&* (There are dog prints in&  it...)/%%"
0x0004D0:
    if !(== self.room 74s) goto 0x000544
0x0004E4:
    stog.msg[0s] = "* While monsters are mostly made&  of magic^1, human beings are&  mostly made of water./"
    stog.msg[1s] = "* Humans^1, with their physical&  forms^1, are far stronger&  than us./"
    stog.msg[2s] = "* But they will never know&  the joy of expressing&  themselves through magic./"
    stog.msg[3s] = "* They'll never get a bullet-&   pattern birthday card.../%%"
0x000544:
    if !(== self.room 265s) goto 0x000570
0x000558:
    stog.msg[0s] = "* It's a door./%%"
0x000570:
    if !(== self.room 44s) goto 0x00059C
0x000584:
    stog.msg[0s] = "* ...!^1?&* There's a camera hidden&  in the bushes./%%"
0x00059C:
    if !(== self.room 53s) goto 0x000978
0x0005B0:
    if !(bool (instance_exists[]:int32 (var 1018s))) goto 0x00092C
0x0005C8:
    if !(== self.read 0s) goto 0x000910
0x0005DC:
    if !(== 1018.image_index 0s) goto 0x0006CC
0x0005F0:
    push -5s
    if !(== 387s:flag 0s) goto 0x000684
0x00060C:
    stog.msg[0s] = "\\W* \\OBravery^1. \\YJustice.\\W  &*\\B Integrity^1. \\GKindness^1.\\W &*\\P Perseverance^1. \\LPatience. \\W /"
    stog.msg[1s] = "\\W* Using these^1, you were&  able to win at \"\\RBall Game\\W.\"/"
    stog.msg[2s] = "* (You are awarded 50G.)/%%"
    global.gold = (+ global.gold 50s)
    stog.flag[387s] = 1s
    goto 0x0006CC
0x000684:
    stog.msg[0s] = "\\W* \\RRED\\W - Try as you might^1,&  you continue to be yourself./"
    stog.msg[1s] = "* (You are awarded 10G.)/%%"
    global.gold = (+ global.gold 10s)
0x0006CC:
    if !(== 1018.image_index 1s) goto 0x000728
0x0006E0:
    stog.msg[0s] = "\\W* \\OORANGE\\W - You are the kind of&  person who rushes fists-first&  through all obstacles./"
    stog.msg[1s] = "* (You are awarded 5G.)/%%"
    global.gold = (+ global.gold 5s)
0x000728:
    if !(== 1018.image_index 2s) goto 0x000784
0x00073C:
    stog.msg[0s] = "\\W* \\YYELLOW\\W - Your sure-fire&  accuracy put an end to&  the mayhem of \"Ball.\"/"
    stog.msg[1s] = "* (You are awarded 3G.)/%%"
    global.gold = (+ global.gold 3s)
0x000784:
    if !(== 1018.image_index 3s) goto 0x0007E0
0x000798:
    stog.msg[0s] = "\\W* \\BBLUE\\W - Hopping and twirling^1,&  your original style&  pulled you through./"
    stog.msg[1s] = "* (You are awarded 2G.)/%%"
    global.gold = (+ global.gold 2s)
0x0007E0:
    if !(== 1018.image_index 4s) goto 0x00083C
0x0007F4:
    stog.msg[0s] = "\\W* \\GGREEN\\W - Your concern and care&  for \"Ball\" led you to a&  delicious victory./"
    stog.msg[1s] = "* (You are awarded 1G.)/%%"
    global.gold = (+ global.gold 1s)
0x00083C:
    if !(== 1018.image_index 5s) goto 0x000898
0x000850:
    stog.msg[0s] = "\\W* \\PPURPLE\\W - Even when you felt&  trapped^1, you took notes and&  achieved the end of \"Ball.\"/"
    stog.msg[1s] = "* (You are awarded 2G.)/%%"
    global.gold = (+ global.gold 2s)
0x000898:
    if !(== 1018.image_index 6s) goto 0x00090C
0x0008AC:
    stog.msg[0s] = "\\W* \\LLIGHT BLUE\\W - \"Ball\" is \"Small.^1\"&* You waited^1, still^1, for&  this opportunity.../"
    stog.msg[1s] = "* ... then dethroned \"Ball\" with&  a sharp attack./"
    stog.msg[2s] = "* (You are awarded 4G.)/%%"
    global.gold = (+ global.gold 4s)
0x00090C:
    goto 0x000928
0x000910:
    stog.msg[0s] = "* (This flag has nothing else&  to offer.)/%%"
0x000928:
    goto 0x000978
0x00092C:
    stog.msg[0s] = "\\W* Ah^1! Wow^1! Woah^1!&* It's a \"\\RHole\\W\"./%%"
    push -5s
    if !(>= 203s:flag 16s) goto 0x000978
0x000960:
    stog.msg[0s] = "* There's a hole here./%%"
0x000978:
    if !(== self.room 54s) goto 0x0009A4
0x00098C:
    stog.msg[0s] = "* (Hers.)/%%"
0x0009A4:
    if !(== self.room 76s) goto 0x000AAC
0x0009B8:
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x000A68
0x0009D0:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "THIS IS MY BROTHER'S&PET ROCK./"
    stog.msg[2s] = "\\E1HE ALWAYS FORGETS&TO FEED IT./"
    stog.msg[3s] = "\\E3AS USUAL^1, I HAVE&TO TAKE&RESPONSIBILITY./"
    stog.msg[4s] = "\\TS \\F0 \\T0 %"
    stog.msg[5s] = "* (The rock is covered in&  sprinkles.)/%%"
    goto 0x000A80
0x000A68:
    stog.msg[0s] = "* (This rock is covered in&  sprinkles.)/%%"
0x000A80:
    if !(> self.read 0s) goto 0x000AAC
0x000A94:
    stog.msg[0s] = "* (This rock is covered in&  sprinkles.)/%%"
0x000AAC:
    if !(== self.room 77s) goto 0x000C2C
0x000AC0:
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x000BE8
0x000AD8:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "ISN'T THAT FLAG&NEATO?/"
    stog.msg[2s] = "UNDYNE FOUND IT&AT THE BAY.../"
    stog.msg[3s] = "\\E3I THINK IT'S FROM&THE HUMAN WORLD?/"
    stog.msg[4s] = "\\E0NOW^1, I KNOW&WHAT YOU'RE&THINKING./"
    stog.msg[5s] = "\\E3WHY WOULD A&HUMAN FLAG.../"
    stog.msg[6s] = "HAVE A COOL&SKELETON ON IT?/"
    stog.msg[7s] = "WELL..^1.&I HAVE A THEORY./"
    stog.msg[8s] = "\\E3I THINK HUMANS.../"
    stog.msg[9s] = "\\E0MUST HAVE&DESCENDED FROM&SKELETONS!!!/"
    stog.msg[10s] = "NYEH HEH HEH!!!/%%"
    goto 0x000C00
0x000BE8:
    stog.msg[0s] = "* (It's a beat-up pirate&  flag.)/%%"
0x000C00:
    if !(> self.read 0s) goto 0x000C2C
0x000C14:
    stog.msg[0s] = "* (It's a beat-up pirate&  flag.)/%%"
0x000C2C:
    if !(== self.room 91s) goto 0x000C88
0x000C40:
    stog.msg[0s] = "* Why did the humans attack^1?&* Indeed^1, it seemed that they&  had nothing to fear./"
    stog.msg[1s] = "* Humans are unbelievably strong.&* It would take the SOUL of&  nearly every monster.../"
    stog.msg[2s] = "* ... just to equal the power&  of a single human SOUL./%%"
0x000C88:
    if !(== self.room 101s) goto 0x000CE4
0x000C9C:
    stog.msg[0s] = "* This power has no counter.&* Indeed, a human cannot&  take a monster's SOUL./"
    stog.msg[1s] = "* When a monster dies, its&  SOUL disappears./"
    stog.msg[2s] = "* And an incredible power&  would be needed to take the&  SOUL of a living monster./%%"
0x000CE4:
    if !(== self.room 126s) goto 0x000D40
0x000CF8:
    stog.msg[0s] = "* There is only one way to&  reverse this spell./"
    stog.msg[1s] = "* If a huge power, equivalent&  to seven human SOULs, attacks&  the barrier.../"
    stog.msg[2s] = "* It will be destroyed./%%"
0x000D40:
    if !(== self.room 110s) goto 0x000D9C
0x000D54:
    stog.msg[0s] = "* In the end, it could&  hardly be called a war./"
    stog.msg[1s] = "* United, the humans were too&  powerful, and us monsters,&  too weak./"
    stog.msg[2s] = "* Not a single SOUL was taken,&  and countless monsters were&  turned to dust.../%%"
0x000D9C:
    if !(== self.room 123s) goto 0x000DE0
0x000DB0:
    stog.msg[0s] = "* I'm catching bugs^1.&* But the underground doesn't&  have many.../"
    stog.msg[1s] = "* I keep catching the same&  one./%%"
0x000DE0:
    if !(== self.room 141s) goto 0x000E54
0x000DF4:
    stog.msg[0s] = "* (It's a computer.^1)&* (It's accessing some kind of&  puzzle in Snowdin.)/%%"
    if !(< global.plot 126s) goto 0x000E34
0x000E20:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x000E38
0x000E34:
    push 0s
0x000E38:
    if !pop goto 0x000E54
0x000E3C:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x000E54:
    if !(== self.room 142s) goto 0x000E74
0x000E68:
    global.msc = 643s
0x000E74:
    if !(== self.room 154s) goto 0x000F58
0x000E88:
    stog.msg[0s] = "* (It's an oven.^1)&* (It looks pretty modern.)/%%"
    if !(< global.plot 134s) goto 0x000ECC
0x000EB4:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x000ECC:
    if !(bool (instance_exists[]:int32 (var 1173s))) goto 0x000F20
0x000EE4:
    global.typer = 27s
    stog.msg[0s] = "* OH YES^1! MTT-BRAND OVENS CAN &  REACH TEMPERATURES UP TO&  NINE-THOUSAND DEGREES!/"
    stog.msg[1s] = "* ROASTING^1! TOASTING^1! BURNING^1!&* CHARRING^1! YOU'RE EXCITED^1,&  AREN'T YOU^1, DARLING? (TM)/%%"
0x000F20:
    if !(== global.plot 134s) goto 0x000F58
0x000F34:
    global.typer = 5s
    stog.msg[0s] = "* (It's the oven.^1)&* (Looks like someone forgot&  to preheat it.)/%%"
0x000F58:
    if !(== self.room 118s) goto 0x001068
0x000F6C:
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 0s
    global.msc = 0s
    if !(< self.x 100s) goto 0x001024
0x000FB0:
    stog.msg[0s] = "* You wanna see my&  room?/"
    stog.msg[1s] = "\\E3* TOO BAD^1!&* No nerds allowed!/"
    stog.msg[2s] = "\\E9* ... well^1, maybe some&  nerds.../%%"
    if !(> self.read 0s) goto 0x001024
0x00100C:
    stog.msg[0s] = "* You're being kind&  of creepy./%%"
0x001024:
    if !(> self.x 100s) goto 0x001068
0x001038:
    stog.msg[0s] = "* I love how^1, um^1,&  thoughtful Papyrus&  is.../"
    stog.msg[1s] = "\\E2* But what the hell&  am I supposed to do&  with all these bones?/%%"
0x001068:
    if !(== self.room 170s) goto 0x001094
0x00107C:
    stog.msg[0s] = "* (It's a spider donut.^1)&* (It looks more...^1)&* (Rubbery than usual.)/%%"
0x001094:
    if !(== self.room 196s) goto 0x0010C0
0x0010A8:
    stog.msg[0s] = "* (North^1, the warrior's path.)&* (West^1, the sage's path.)&* (Any path leads to The End.)/%%"
0x0010C0:
    if !(== self.room 202s) goto 0x0010EC
0x0010D4:
    stog.msg[0s] = "* (To the East^1!)&* (This is The End.)/%%"
0x0010EC:
    if !(== self.room 245s) goto 0x0011C4
0x001100:
    stog.msg[0s] = "* ENTRY NUMBER 2/"
    stog.msg[1s] = "* The barrier is locked by&  SOUL power../"
    stog.msg[2s] = "* Unfortunately^1, this power&  cannot be recreated&  artificially./"
    stog.msg[3s] = "* SOUL power can only be&  derived from what was&  once living./"
    stog.msg[4s] = "* So^1, to create more^1, we&  will have to use what we&  have now.../"
    stog.msg[5s] = "* The SOULs of monsters./%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x0011C4
0x0011AC:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x0011C4:
    if !(== self.room 250s) goto 0x00123C
0x0011D8:
    stog.msg[0s] = "* ENTRY NUMBER 13/"
    stog.msg[1s] = "* one of the bodies opened&  its eyes./%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x00123C
0x001224:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x00123C:
    if !(== self.room 251s) goto 0x001268
0x001250:
    stog.msg[0s] = "* (The clock is broken.)/%%"
0x001268:
    if !(== self.room 252s) goto 0x001328
0x00127C:
    stog.msg[0s] = "* ENTRY NUMBER 10/"
    stog.msg[1s] = "* experiments on the&  vessel are a failure./"
    stog.msg[2s] = "* it doesn't seem to be&  any different from the&  control cases./"
    stog.msg[3s] = "* whatever^1.&* they're a hassle to work&  with anyway./"
    stog.msg[4s] = "* the seeds just stick to&  you^1, and won't let go.../%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x001328
0x001310:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x001328:
    if !(== self.room 254s) goto 0x0013A0
0x00133C:
    stog.msg[0s] = "* ENTRY NUMBER 16/"
    stog.msg[1s] = "* no No NO NO NO NO NO/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x0013A0
0x001388:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x0013A0:
    if !(== self.room 257s) goto 0x0013E4
0x0013B4:
    stog.msg[0s] = "* (There are a bunch of VHSes.^1)&* (Seems like it's mostly&  cartoons of some kind.)/"
    stog.msg[1s] = "* (They seem to be alphabetized^1,&  save for a few stray...^1)&* (... sticky ones?)/%%"
0x0013E4:
    if !(== self.room 260s) goto 0x001488
0x0013F8:
    stog.msg[0s] = "* ENTRY NUMBER 11/"
    stog.msg[1s] = "* now that mettaton's made it&  big^1, he never talks to&  me anymore./"
    stog.msg[2s] = "* ... except to ask when i'm&  going to finish his body./"
    stog.msg[3s] = "* but i'm afraid if i finish&  his body^1, he won't need me&  anymore.../"
    stog.msg[4s] = "* then we'll never be friends&  ever again./"
    stog.msg[5s] = "* ... not to mention^1, every time&  i try to work on it^1, i&  just get really sweaty.../%%"
0x001488:
    if !(== self.room 258s) goto 0x00157C
0x00149C:
    stog.msg[0s] = "* ENTRY NUMBER 20/"
    stog.msg[1s] = "* ASGORE left me five&  messages today./"
    stog.msg[2s] = "* four about everyone being&  angry/"
    stog.msg[3s] = "* one about this cute teacup&  he found that looks like&  me/"
    stog.msg[4s] = "* thanks asgore./%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x001548
0x001530:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x001548:
    push -5s
    if !(== 490s:flag 0s) goto 0x00157C
0x001564:
    stog.msg[0s] = "* (It's too dark to see near&  the walls.)/%%"
0x00157C:
    if !(== self.room 262s) goto 0x0015F4
0x001590:
    stog.msg[0s] = "* (Seems to be turned off.)/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x0015F4
0x0015C4:
    stog.msg[0s] = "* ENTRY NUMBER 18/"
    stog.msg[1s] = "* the flower's gone./%%"
0x0015F4:
    if !(== self.room 68s) goto 0x00197C
0x001608:
    stog.msg[0s] = "* (It's locked from the&  inside.)/%%"
    if (bool (instance_exists[]:int32 (var 1029s))) goto 0x001650
0x001638:
    push (bool (instance_exists[]:int32 (var 1026s)))
    goto 0x001654
0x001650:
    push 1s
0x001654:
    if !pop goto 0x00197C
0x001658:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "PLEASE DON'T ENTER&THE MYSTERIOUS&SHACK./%%"
    if !(bool (instance_exists[]:int32 (var 1313s))) goto 0x0017A0
0x0016A4:
    stog.msg[1s] = "HELLO^1.&THAT'S NOT&MY HOUSE./"
    stog.msg[2s] = "THAT'S JUST MY&COOL TOOLSHED./"
    call (scr_undface[]:int32 (var 6s) (var 3s))
    stog.msg[4s] = "* Do you call it&  your COOLSHED!?/"
    call (scr_papface[]:int32 (var 0s) (var 5s))
    stog.msg[6s] = "NO!!^1!&I'VE NEVER THOUGHT&OF THAT!!!/"
    stog.msg[7s] = "THAT'S WHY WE'RE&FRIENDS^1,&UNDYNE./"
    stog.msg[8s] = "YOU ENRICH MY&LIFE WITH SHED-&BASED PUNS./"
    call (scr_undface[]:int32 (var 9s) (var 9s))
    stog.msg[10s] = "* That's the only&  one I've ever&  made^1, dude./%%"
0x0017A0:
    push -5s
    if !(< 67s:flag 0s) goto 0x001950
0x0017BC:
    stog.msg[1s] = "READY FOR ANOTHER&NIGHT IN THE&PUNISHMENT SHACK?/%%"
    if !(bool (instance_exists[]:int32 (var 1313s))) goto 0x001950
0x0017EC:
    stog.msg[1s] = "READY FOR ANOTHER&NIGHT IN THE&PUNISHMENT SHACK?/"
    call (scr_undface[]:int32 (var 1s) (var 2s))
    stog.msg[3s] = "* Oh my GOD^1, I don't&  even wanna KNOW./"
    call (scr_papface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "DON'T BE SO&JUDGMENTAL^1,&UNDYNE./"
    stog.msg[6s] = "MY SHACK IS A&FOUR STAR&ESTABLISHMENT./"
    call (scr_undface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "* What^1, lemme guess./"
    stog.msg[9s] = "\\E6* Sometimes you cut a&  hot dog into the&  dog food^1, right?/"
    call (scr_papface[]:int32 (var 1s) (var 10s))
    stog.msg[11s] = "WHAT!?!?/"
    stog.msg[12s] = "\\E0HOW'D YOU KNOW?/"
    call (scr_undface[]:int32 (var 1s) (var 13s))
    stog.msg[14s] = "* OH MY GOD^1! NO^1!&* I WAS JOKING!!^1!&* DON'T DO THIS!!!/%%"
0x001950:
    if !(> self.read 0s) goto 0x00197C
0x001964:
    stog.msg[1s] = "YOU SHOULD LEARN&A PRIVACY./%%"
0x00197C:
    if !(== self.room 73s) goto 0x0019A8
0x001990:
    stog.msg[0s] = "* (You can't go through the&  fire exit because you're&  not made of fire.)/%%"
0x0019A8:
    if !(== self.room 78s) goto 0x0019D4
0x0019BC:
    stog.msg[0s] = "* (It's an uncovered pillow.)/%%"
0x0019D4:
    if !(== self.room 80s) goto 0x001A00
0x0019E8:
    stog.msg[0s] = "* (You look in the drawer.^1)&* (There's some kind of badge.)/%%"
0x001A00:
    if !(== self.room 184s) goto 0x001A2C
0x001A14:
    stog.msg[0s] = "* (It's a performance schedule.^1)&* (Comedians^1, dancers^1, Sans...^1)&* (Seems there's a break now.)/%%"
0x001A2C:
    if !(== self.room 186s) goto 0x001A70
0x001A40:
    stog.msg[0s] = "* (It's some sort of giant bottle&  of perfume.^1)&* (Eau de Rectangle.)/"
    stog.msg[1s] = "* (The cap is so comically large^1,&  you can't open it.)/%%"
0x001A70:
    if !(== self.room 128s) goto 0x001AD0
0x001A84:
    stog.msg[0s] = "* (Feeling of being watched.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x001AD0
0x001AB8:
    stog.msg[0s] = "* (She's waiting for someone to&  let her out.)/%%"
0x001AD0:
    if !(== self.room 95s) goto 0x001B14
0x001AE4:
    stog.msg[0s] = "* (The gems on the southern&  wall shine in a&  spectacular pattern.)/"
    stog.msg[1s] = "* (It's a nice thing you can&  see the southern wall from&  this angle.)/%%"
0x001B14:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.read = (+ self.read 1s)
0x001B54:
    exit
