0x000000:
    self.glow = (+ self.glow 2s)
    self.glow2 = (+ (/ (floor[]:int32 (* (sin[]:int32 (/ self.glow (double 30s))) 2s)) (double 32s)) 0.125d)
    call (draw_sprite[]:int32 (var 0s) (var 0s) (var 0s) (var 873s))
    call (draw_sprite_ext[]:int32 self.glow2 (var 16777215) (var 0s) (var 1s) (var 1s) (var 0s) (var 0s) (var 0s) (var 874s))
    if !(== self.murder 0s) goto 0x00012C
0x000100:
    call (draw_sprite[]:int32 (var 0s) self.shx (var 0s) (var 875s))
0x00012C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 240s) (var 320s) (var 120s) (var 0s))
    if (== self.menu 1s) goto 0x0001A0
0x00018C:
    push (== self.menu 2s)
    goto 0x0001A4
0x0001A0:
    push 1s
0x0001A4:
    if !pop goto 0x0004B8
0x0001A8:
    call (draw_rectangle[]:int32 (var 0s) self.minimenuy (var 320s) (var 120s) (var 210s))
    call (draw_set_color[]:int32 (var 0s))
    if !(< self.minimenuy 116s) goto 0x000240
0x000204:
    call (draw_rectangle[]:int32 (var 0s) (+ self.minimenuy 4s) (var 316s) (var 120s) (var 214s))
0x000240:
    call (draw_set_color[]:int32 (var 16777215))
    self.wcheck = (string[]:int32 (- 5s global.wstrength))
    self.acheck = (string[]:int32 (- 7s global.adef))
    self.wchecks = " "
    if !(<= global.wstrength 5s) goto 0x0002CC
0x0002BC:
    self.wchecks = "+"
0x0002CC:
    if !(> global.wstrength 5s) goto 0x0002F0
0x0002E0:
    self.wchecks = " "
0x0002F0:
    self.achecks = " "
    if !(<= global.adef 7s) goto 0x000324
0x000314:
    self.achecks = "+"
0x000324:
    if !(> global.adef 7s) goto 0x000348
0x000338:
    self.achecks = " "
0x000348:
    push -1s
    if !(== 1s:menuc 0s) goto 0x0003B4
0x000364:
    call (draw_text[]:int32 (+ (+ (+ "Weapon: 5AT#(" self.wchecks) self.wcheck) " AT)#Slap 'em.") (+ self.minimenuy 14s) (var 224s))
0x0003B4:
    push -1s
    if !(== 1s:menuc 1s) goto 0x000420
0x0003D0:
    call (draw_text[]:int32 (+ (+ (+ "Armor: 7DF#(" self.achecks) self.acheck) " DF)#It has abs#on it.") (+ self.minimenuy 14s) (var 224s))
0x000420:
    push -1s
    if !(== 1s:menuc 2s) goto 0x00046C
0x00043C:
    call (draw_text[]:int32 (var "Heals 11HP x 2#Eat it twice!") (+ self.minimenuy 14s) (var 224s))
0x00046C:
    push -1s
    if !(== 1s:menuc 3s) goto 0x0004B8
0x000488:
    call (draw_text[]:int32 (var "Heals 22HP#It's my own#recipe.") (+ self.minimenuy 14s) (var 224s))
0x0004B8:
    if !(< self.menu 4s) goto 0x00054C
0x0004CC:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 210s) (var 124s) (var 4s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 214s))
    goto 0x000594
0x00054C:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 4s))
0x000594:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.menu 0s) goto 0x000A44
0x0005C0:
    self.sell = 0s
    self.selling = 0s
    self.sidemessage = 0s
    stog.menuc[1s] = 0s
    stog.menuc[2s] = 0s
    stog.menuc[3s] = 0s
    stog.menuc[4s] = 0s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000708
0x000650:
    stog.msg[0s] = "\\E0* Take your time./*"
    if !(bool 0s) goto 0x000690
0x000674:
    push -5s
    push (== 69s:flag 0s)
    goto 0x000694
0x000690:
    push 0s
0x000694:
    self.mainmessage = pop
    stog.msg[0s] = "\\E0* Hello^1, traveller^1.&* How can I help you?/*"
    if !(== self.murder 1s) goto 0x0006E0
0x0006C8:
    stog.msg[0s] = "* But nobody came./*"
0x0006E0:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 0s))
    goto 0x00076C
0x000708:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x00076C
0x000720:
    pushenv 782s 0x000768
0x000728:
    if !(== self.halt 0s) goto 0x000754
0x00073C:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x000754:
    call (keyboard_clear[]:int32 (var 16s))
0x000768:
    popenv 0x000728
0x00076C:
    self.menumax = 3s
    if !(== self.murder 0s) goto 0x00082C
0x00078C:
    call (draw_text[]:int32 (var "Buy") (var 130s) (var 240s))
    call (draw_text[]:int32 (var "Sell") (var 150s) (var 240s))
    call (draw_text[]:int32 (var "Talk") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "Exit") (var 190s) (var 240s))
0x00082C:
    if !(== self.murder 1s) goto 0x0008E0
0x000840:
    call (draw_text[]:int32 (var "Take") (var 130s) (var 240s))
    call (draw_text[]:int32 (var "Steal") (var 150s) (var 240s))
    call (draw_text[]:int32 (var "Read") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "Exit") (var 190s) (var 240s))
0x0008E0:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 0s:menuc 20s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000A44
0x00093C:
    [OBJ_WRITER].dfy = 1s
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 0s:menuc 0s) goto 0x000984
0x000978:
    self.menu = 1s
0x000984:
    push -1s
    if !(== 0s:menuc 1s) goto 0x0009B8
0x0009A0:
    self.sell = 1s
    self.menu = 4s
0x0009B8:
    push -1s
    if !(== 0s:menuc 2s) goto 0x000A10
0x0009D4:
    if !(== self.murder 0s) goto 0x0009F8
0x0009E8:
    self.menu = 3s
    goto 0x000A10
0x0009F8:
    self.menu = 4s
    self.sell = 7s
0x000A10:
    push -1s
    if !(== 0s:menuc 3s) goto 0x000A44
0x000A2C:
    self.sell = 2s
    self.menu = 4s
0x000A44:
    if (== self.menu 1s) goto 0x000A6C
0x000A58:
    push (== self.menu 2s)
    goto 0x000A70
0x000A6C:
    push 1s
0x000A70:
    if !pop goto 0x0013C4
0x000A74:
    if !(== self.murder 0s) goto 0x000C28
0x000A88:
    call (draw_text[]:int32 (var "50G - Tough Glove") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "50G - Manly Bandanna") (var 150s) (var 30s))
    if !(<= global.plot 100s) goto 0x000B14
0x000AEC:
    call (draw_text[]:int32 (var "15G - Bisicle") (var 170s) (var 30s))
0x000B14:
    if !(> global.plot 100s) goto 0x000B3C
0x000B28:
    push (<= global.plot 121s)
    goto 0x000B40
0x000B3C:
    push 0s
0x000B40:
    if !pop goto 0x000B6C
0x000B44:
    call (draw_text[]:int32 (var "30G - Bisicle") (var 170s) (var 30s))
0x000B6C:
    if !(> global.plot 121s) goto 0x000B94
0x000B80:
    push (<= global.plot 199s)
    goto 0x000B98
0x000B94:
    push 0s
0x000B98:
    if !pop goto 0x000BC4
0x000B9C:
    call (draw_text[]:int32 (var "45G - Bisicle") (var 170s) (var 30s))
0x000BC4:
    if !(> global.plot 199s) goto 0x000C00
0x000BD8:
    call (draw_text[]:int32 (var "70G - Bisicle") (var 170s) (var 30s))
0x000C00:
    call (draw_text[]:int32 (var "25G - Cinnamon Bun") (var 190s) (var 30s))
0x000C28:
    if !(== self.murder 1s) goto 0x000CDC
0x000C3C:
    call (draw_text[]:int32 (var "00G - Tough Glove") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "00G - Manly Bandanna") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "00G - Bisicle") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "00G - Cinnamon Bun") (var 190s) (var 30s))
0x000CDC:
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== self.menu 1s) goto 0x000F7C
0x000D18:
    self.menumax = 4s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000E6C
0x000D40:
    if !(== self.sidemessage 0s) goto 0x000D6C
0x000D54:
    stog.msg[0s] = "\\E0What would&you like&to buy?/*"
0x000D6C:
    if !(== self.sidemessage 1s) goto 0x000D98
0x000D80:
    stog.msg[0s] = "\\E5Thanks for&your&purchase./*"
0x000D98:
    if !(== self.sidemessage 2s) goto 0x000DC4
0x000DAC:
    stog.msg[0s] = "\\E0Just&looking?/*"
0x000DC4:
    if !(== self.sidemessage 3s) goto 0x000DF0
0x000DD8:
    stog.msg[0s] = "\\E6That's not&enough&money./*"
0x000DF0:
    if !(== self.sidemessage 4s) goto 0x000E1C
0x000E04:
    stog.msg[0s] = "\\E6You're&carrying&too much./*"
0x000E1C:
    if !(== self.murder 1s) goto 0x000E48
0x000E30:
    stog.msg[0s] = "/*"
0x000E48:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
0x000E6C:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 1s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000F10
0x000EC8:
    self.menu = 2s
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(== 1s:menuc self.menumax) goto 0x000F0C
0x000F00:
    self.menu = 0s
0x000F0C:
    goto 0x000F40
0x000F10:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x000F40
0x000F28:
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x000F40:
    if !(== self.menu 2s) goto 0x000F68
0x000F54:
    call (keyboard_clear[]:int32 (var 13s))
0x000F68:
    stog.menuc[2s] = 0s
0x000F7C:
    if !(== self.menu 2s) goto 0x0012C8
0x000F90:
    self.menumax = 1s
    if !(== self.murder 0s) goto 0x001028
0x000FB0:
    call (draw_text[]:int32 (var "Buy it for") (var 130s) (var 230s))
    call (draw_text[]:int32 (+ (string[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost) "G ?") (var 145s) (var 230s))
0x001028:
    if !(== self.murder 1s) goto 0x001064
0x00103C:
    call (draw_text[]:int32 (var "Take it.") (var 130s) (var 230s))
0x001064:
    call (draw_text[]:int32 (var "Yes") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "No") (var 185s) (var 240s))
    push 175s
    call (draw_sprite[]:int32 (+ -1s (* 2s:menuc 15s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x001140
0x001110:
    self.menu = 1s
    call (keyboard_clear[]:int32 (var 16s))
    self.sidemessage = 2s
    goto 0x0012C8
0x001140:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0012C8
0x001158:
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 2s:menuc 0s) goto 0x001294
0x001188:
    call (scr_cost[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    if !(== self.afford 1s) goto 0x001288
0x0011C8:
    call (script_execute[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):item (var 84s))
    if !(== self.noroom 0s) goto 0x001264
0x001210:
    global.gold = (- global.gold (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    self.sidemessage = 1s
    call (snd_play[]:int32 (var 113s))
0x001264:
    if !(== self.noroom 1s) goto 0x001284
0x001278:
    self.sidemessage = 4s
0x001284:
    goto 0x001294
0x001288:
    self.sidemessage = 3s
0x001294:
    push -1s
    if !(== 2s:menuc 1s) goto 0x0012BC
0x0012B0:
    self.sidemessage = 2s
0x0012BC:
    self.menu = 1s
0x0012C8:
    push -1s
    if !(!= 1s:menuc 4s) goto 0x001398
0x0012E4:
    if !(> self.minimenuy 40s) goto 0x001310
0x0012F8:
    self.minimenuy = (- self.minimenuy 3s)
0x001310:
    if !(> self.minimenuy 55s) goto 0x00133C
0x001324:
    self.minimenuy = (- self.minimenuy 2s)
0x00133C:
    if !(> self.minimenuy 80s) goto 0x001368
0x001350:
    self.minimenuy = (- self.minimenuy 4s)
0x001368:
    if !(> self.minimenuy 100s) goto 0x001394
0x00137C:
    self.minimenuy = (- self.minimenuy 5s)
0x001394:
    goto 0x0013C4
0x001398:
    if !(< self.minimenuy 120s) goto 0x0013C4
0x0013AC:
    self.minimenuy = (+ self.minimenuy 20s)
0x0013C4:
    if !(== self.menu 3s) goto 0x0016E4
0x0013D8:
    self.menumax = 4s
    push -5s
    if !(== 7s:flag 0s) goto 0x0014A4
0x001400:
    call (draw_text[]:int32 (var "Say hello") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "What to do here") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "Town history") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "Your life") (var 190s) (var 30s))
    goto 0x001544
0x0014A4:
    call (draw_text[]:int32 (var "What happened") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "Human") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "Ruins") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "Future") (var 190s) (var 30s))
0x001544:
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0015C4
0x001588:
    stog.msg[0s] = "\\E0Care to&chat?/*"
    call (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
0x0015C4:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 3s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0016A0
0x001620:
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(< 3s:menuc self.menumax) goto 0x001690
0x00164C:
    push -1s
    self.sell = (+ 3s:menuc 3s)
    call (keyboard_clear[]:int32 (var 13s))
    self.menu = 4s
    goto 0x00169C
0x001690:
    self.menu = 0s
0x00169C:
    goto 0x0016E4
0x0016A0:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0016E4
0x0016B8:
    call (keyboard_clear[]:int32 (var 16s))
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x0016E4:
    if !(< self.menu 4s) goto 0x001774
0x0016F8:
    call (draw_text[]:int32 (+ (string[]:int32 global.gold) "G") (var 210s) (var 230s))
    call (scr_itemroom[]:int32 )
    call (draw_text[]:int32 (+ (string[]:int32 self.itemhold) "/8") (var 210s) (var 280s))
0x001774:
    if !(== self.menu 4s) goto 0x001F04
0x001788:
    if !(== self.sell 0s) goto 0x0017A8
0x00179C:
    self.menu = 0s
0x0017A8:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0017D8
0x0017C4:
    push (== self.selling 0s)
    goto 0x0017DC
0x0017D8:
    push 0s
0x0017DC:
    if !pop goto 0x001DB4
0x0017E0:
    if !(== self.sell 1s) goto 0x001928
0x0017F4:
    stog.msg[0s] = "\\E3* Huh^1?&* Sell somethin'^1?&* Does this look like a&  pawn shop?/"
    stog.msg[1s] = "\\E4* I don't know how it works where&  you come from... but.../"
    stog.msg[2s] = "\\E0* If I started spending money&  on old branches and used&  bandages^1, I'd be out of business&  in a jiffy!/%%"
    self.soldo = (+ self.soldo 1s)
    if !(> self.soldo 1s) goto 0x001898
0x001868:
    stog.msg[0s] = "\\E4* If you're really hurtin' for&  cash^1, then maybe you could&  do some crowdfunding./"
    stog.msg[1s] = "* I hear people will pay for&  ANYTHING nowadays./%%"
0x001898:
    if !(== self.murder 1s) goto 0x001928
0x0018AC:
    push -5s
    if !(== 255s:flag 0s) goto 0x001910
0x0018C8:
    stog.msg[0s] = "* You took 758G from behind the&  counter./%%"
    global.gold = (+ global.gold 758s)
    stog.flag[255s] = 1s
    goto 0x001928
0x001910:
    stog.msg[0s] = "* Nothing left./%%"
0x001928:
    if !(== self.sell 2s) goto 0x001980
0x00193C:
    stog.msg[0s] = "\\E0* Bye now^1!&* Come again sometime!/%%"
    if !(== self.murder 1s) goto 0x001980
0x001968:
    stog.msg[0s] = "* .../%%"
0x001980:
    if !(== self.sell 3s) goto 0x001A40
0x001994:
    stog.msg[0s] = "\\E0* Hiya^1! Welcome to Snowdin^1!&* I can't remember the last&  time I saw a fresh face around&  here./"
    stog.msg[1s] = "\\E4* Where did you come from^1?&* The capital?/"
    stog.msg[2s] = "\\E0* You don't look like a tourist^1.&* Are you here by yourself?/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x001A40
0x0019F8:
    stog.msg[0s] = "\\E0* I mean^1, it happened to you^1,&  right?/"
    stog.msg[1s] = "* There was a strange flash of&  white light..^1.&* Then I felt my body being pulled&  into..^1. something./"
    stog.msg[2s] = "* Then^1, suddenly^1, everything was&  back to normal./%%"
0x001A40:
    if !(== self.sell 4s) goto 0x001B48
0x001A54:
    stog.msg[0s] = "\\E0* You want to know what to do&  here in Snowdin?/"
    stog.msg[1s] = "\\E4* Grillby's has food^1, and the&  library has information.../"
    stog.msg[2s] = "* If you're tired^1, you can take&  a nap at the inn^1.&* It's right next door ^1- my sister&  runs it./"
    stog.msg[3s] = "\\E0* And if you're bored^1, you can&  sit outside and watch those wacky&  skeletons do their thing./"
    stog.msg[4s] = "\\E0* There's two of 'em..^1.&*\\E4 Brothers^1, I think^1.&* They just showed up one day&  and..^1.&*\\E0 ... asserted themselves./"
    stog.msg[5s] = "* The town has gotten a lot&  more interesting since then./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x001B48
0x001B00:
    stog.msg[0s] = "\\E0* I heard that it was all 'cause&  a human came through here./"
    stog.msg[1s] = "* A human..^1.&* I can hardly believe it!/"
    stog.msg[2s] = "* Well if they decide to stop&  in^1, I'll be sure to give&  them a hero's welcome./%%"
0x001B48:
    if !(== self.sell 5s) goto 0x001C68
0x001B5C:
    stog.msg[0s] = "\\E4* Think back to your history&  class.../"
    stog.msg[1s] = "\\E0* A long time ago^1, monsters lived&  in the RUINS back there in&  the forest./"
    stog.msg[2s] = "* Long story short^1, we all decided&  to leave the ruins and head&  for the end of the caverns./"
    stog.msg[3s] = "* Along the way^1, some fuzzy folk&  decided they liked the cold&  and set up camp in Snowdin./"
    stog.msg[4s] = "\\E6* Oh^1, and don't think about&  trying to explore the RUINS.../"
    stog.msg[5s] = "\\E0* The door's been locked for&  ages^1.&* So unless you're a ghost&  or can burrow under the door^1,&  forget about it./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x001C68
0x001C08:
    stog.msg[0s] = "\\E0* Didja hear^1?&* The RUINS have been opened up^1,&  and get this.../"
    stog.msg[1s] = "* They were opened from the&  INSIDE./"
    stog.msg[2s] = "* Apparently the Queen had been&  staying inside there for God&  knows how long./"
    stog.msg[3s] = "* Pretty unbelievable^1, huh!?/%%"
0x001C68:
    if !(== self.sell 6s) goto 0x001D40
0x001C7C:
    stog.msg[0s] = "\\E0* Life is the same as usual./"
    stog.msg[1s] = "\\E1* A little claustrophobic.../"
    stog.msg[2s] = "\\E2* But..^1. we all know deep down&  that freedom is coming^1, don't we?/"
    stog.msg[3s] = "\\E2* As long as we got that hope^1, we&  can grit our teeth and face the&  same struggles^1, day after day.../"
    stog.msg[4s] = "\\E5* That's life^1, ain't it?/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x001D40
0x001D10:
    stog.msg[0s] = "\\E0* Well^1, I suppose I'll move&  my store to the overworld.../"
    stog.msg[1s] = "* ... haven't planned much&  more than that^1, I'm afraid./%%"
0x001D40:
    if !(== self.sell 7s) goto 0x001D84
0x001D54:
    stog.msg[0s] = "* (There's a note here.)/"
    stog.msg[1s] = "* Please don't hurt my family./%%"
0x001D84:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 10s))
    self.selling = 1s
0x001DB4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x001E30
0x001DCC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x001E30
0x001DE4:
    pushenv 782s 0x001E2C
0x001DEC:
    if !(== self.halt 0s) goto 0x001E18
0x001E00:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x001E18:
    call (keyboard_clear[]:int32 (var 16s))
0x001E2C:
    popenv 0x001DEC
0x001E30:
    if !(== self.selling 1s) goto 0x001E60
0x001E44:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001E64
0x001E60:
    push 0s
0x001E64:
    if !pop goto 0x001F04
0x001E68:
    if !(== self.sell 2s) goto 0x001EA0
0x001E7C:
    self.selling = 2s
    call (event_user[]:int32 (var 1s))
    goto 0x001F04
0x001EA0:
    if (== self.sell 1s) goto 0x001EC8
0x001EB4:
    push (== self.sell 7s)
    goto 0x001ECC
0x001EC8:
    push 1s
0x001ECC:
    if !pop goto 0x001EE0
0x001ED0:
    self.menu = 0s
    goto 0x001EEC
0x001EE0:
    self.menu = 3s
0x001EEC:
    self.sell = 0s
    self.selling = 0s
0x001F04:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x001F8C
0x001F1C:
    push -1s
    stog.menuc[(+ (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(> (int32 self.menu):menuc self.menumax) goto 0x001F8C
0x001F70:
    stog.menuc[(int32 self.menu)] = 0s
0x001F8C:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x002014
0x001FA4:
    push -1s
    stog.menuc[(- (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(< (int32 self.menu):menuc 0s) goto 0x002014
0x001FF4:
    stog.menuc[(int32 self.menu)] = self.menumax
0x002014:
    exit
