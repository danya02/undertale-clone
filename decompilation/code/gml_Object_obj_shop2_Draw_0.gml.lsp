0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 240s) (var 320s) (var 120s) (var 0s))
    if (== self.menu 1s) goto 0x000074
0x000060:
    push (== self.menu 2s)
    goto 0x000078
0x000074:
    push 1s
0x000078:
    if !pop goto 0x00038C
0x00007C:
    call (draw_rectangle[]:int32 (var 0s) self.minimenuy (var 320s) (var 120s) (var 210s))
    call (draw_set_color[]:int32 (var 0s))
    if !(< self.minimenuy 116s) goto 0x000114
0x0000D8:
    call (draw_rectangle[]:int32 (var 0s) (+ self.minimenuy 4s) (var 316s) (var 120s) (var 214s))
0x000114:
    call (draw_set_color[]:int32 (var 16777215))
    self.wcheck = (string[]:int32 (- 2s global.wstrength))
    self.acheck = (string[]:int32 (- 5s global.adef))
    self.wchecks = " "
    if !(<= global.wstrength 2s) goto 0x0001A0
0x000190:
    self.wchecks = "+"
0x0001A0:
    if !(> global.wstrength 2s) goto 0x0001C4
0x0001B4:
    self.wchecks = " "
0x0001C4:
    self.achecks = " "
    if !(<= global.adef 5s) goto 0x0001F8
0x0001E8:
    self.achecks = "+"
0x0001F8:
    if !(> global.adef 5s) goto 0x00021C
0x00020C:
    self.achecks = " "
0x00021C:
    push -1s
    if !(== 1s:menuc 0s) goto 0x000268
0x000238:
    call (draw_text[]:int32 (var "Heals 18HP#(Looks#like a#crab.)") (+ self.minimenuy 14s) (var 224s))
0x000268:
    push -1s
    if !(== 1s:menuc 1s) goto 0x0002B4
0x000284:
    call (draw_text[]:int32 (var "Heals 10HP#SPEED#up in#battle.") (+ self.minimenuy 14s) (var 224s))
0x0002B4:
    push -1s
    if !(== 1s:menuc 2s) goto 0x000320
0x0002D0:
    call (draw_text[]:int32 (+ (+ (+ "Armor: 5DF#(" self.achecks) self.acheck) " DF)#Invincible#longer") (+ self.minimenuy 14s) (var 224s))
0x000320:
    push -1s
    if !(== 1s:menuc 3s) goto 0x00038C
0x00033C:
    call (draw_text[]:int32 (+ (+ (+ "Weapon: 2AT#(" self.wchecks) self.wcheck) " AT)#Invincible#longer") (+ self.minimenuy 14s) (var 224s))
0x00038C:
    if !(< self.menu 4s) goto 0x000420
0x0003A0:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 210s) (var 124s) (var 4s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 214s))
    goto 0x000468
0x000420:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 4s))
0x000468:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.menu 0s) goto 0x000854
0x000494:
    self.sell = 0s
    self.selling = 0s
    self.sidemessage = 0s
    stog.menuc[1s] = 0s
    stog.menuc[2s] = 0s
    stog.menuc[3s] = 0s
    stog.menuc[4s] = 0s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000610
0x000524:
    stog.msg[0s] = "* Don't be shy now./*"
    if !(bool 0s) goto 0x000564
0x000548:
    push -5s
    push (== 69s:flag 0s)
    goto 0x000568
0x000564:
    push 0s
0x000568:
    self.mainmessage = pop
    stog.msg[0s] = "* Woah there^1!&* I've got some neat&  junk for sale./*"
    push -5s
    if !(== 7s:flag 1s) goto 0x0005BC
0x0005A4:
    stog.msg[0s] = "* Wah ha ha^1!&* I knew you could&  do it!/*"
0x0005BC:
    if !(== self.murder 1s) goto 0x0005E8
0x0005D0:
    stog.msg[0s] = "* Wa ha ha..^1.&* So you came here^1.&* What a treat!/*"
0x0005E8:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 0s))
    goto 0x000674
0x000610:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x000674
0x000628:
    pushenv 782s 0x000670
0x000630:
    if !(== self.halt 0s) goto 0x00065C
0x000644:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x00065C:
    call (keyboard_clear[]:int32 (var 16s))
0x000670:
    popenv 0x000630
0x000674:
    self.menumax = 3s
    call (draw_text[]:int32 (var "Buy") (var 130s) (var 240s))
    call (draw_text[]:int32 (var "Sell") (var 150s) (var 240s))
    call (draw_text[]:int32 (var "Talk") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "Exit") (var 190s) (var 240s))
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 0s:menuc 20s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000854
0x00077C:
    [OBJ_WRITER].dfy = 1s
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 0s:menuc 0s) goto 0x0007C4
0x0007B8:
    self.menu = 1s
0x0007C4:
    push -1s
    if !(== 0s:menuc 1s) goto 0x0007F8
0x0007E0:
    self.sell = 1s
    self.menu = 4s
0x0007F8:
    push -1s
    if !(== 0s:menuc 2s) goto 0x000820
0x000814:
    self.menu = 3s
0x000820:
    push -1s
    if !(== 0s:menuc 3s) goto 0x000854
0x00083C:
    self.sell = 2s
    self.menu = 4s
0x000854:
    if (== self.menu 1s) goto 0x00087C
0x000868:
    push (== self.menu 2s)
    goto 0x000880
0x00087C:
    push 1s
0x000880:
    if !pop goto 0x001080
0x000884:
    call (draw_text[]:int32 (var "25G - Crab Apple") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "18G - Sea Tea") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "30G - Cloudy Glasses") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "55G - Torn Notebook") (var 190s) (var 30s))
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== self.menu 1s) goto 0x000C88
0x000960:
    self.menumax = 4s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000B78
0x000988:
    if !(== self.sidemessage 0s) goto 0x0009B4
0x00099C:
    stog.msg[0s] = "What are&you lookin&for?/*"
0x0009B4:
    if !(== self.sidemessage 1s) goto 0x0009E0
0x0009C8:
    stog.msg[0s] = "Thanks!&Wa ha ha./*"
0x0009E0:
    if !(== self.sidemessage 2s) goto 0x000A0C
0x0009F4:
    stog.msg[0s] = "Careful&with that./*"
0x000A0C:
    if !(== self.sidemessage 3s) goto 0x000A38
0x000A20:
    stog.msg[0s] = "You're&a bit&short&on cash./*"
0x000A38:
    if !(== self.sidemessage 4s) goto 0x000A64
0x000A4C:
    stog.msg[0s] = "You're&carrying&too much!/*"
0x000A64:
    if !(== self.murder 1s) goto 0x000B54
0x000A78:
    if !(== self.sidemessage 0s) goto 0x000AA4
0x000A8C:
    stog.msg[0s] = "Don't&expect a&discount./*"
0x000AA4:
    if !(== self.sidemessage 1s) goto 0x000AD0
0x000AB8:
    stog.msg[0s] = "Here we&are./*"
0x000AD0:
    if !(== self.sidemessage 2s) goto 0x000AFC
0x000AE4:
    stog.msg[0s] = ".../*"
0x000AFC:
    if !(== self.sidemessage 3s) goto 0x000B28
0x000B10:
    stog.msg[0s] = "Eh^1?&You can't&afford&it?/*"
0x000B28:
    if !(== self.sidemessage 4s) goto 0x000B54
0x000B3C:
    stog.msg[0s] = "Don't you&have&enough?/*"
0x000B54:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
0x000B78:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 1s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000C1C
0x000BD4:
    self.menu = 2s
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(== 1s:menuc self.menumax) goto 0x000C18
0x000C0C:
    self.menu = 0s
0x000C18:
    goto 0x000C4C
0x000C1C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x000C4C
0x000C34:
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x000C4C:
    if !(== self.menu 2s) goto 0x000C74
0x000C60:
    call (keyboard_clear[]:int32 (var 13s))
0x000C74:
    stog.menuc[2s] = 0s
0x000C88:
    if !(== self.menu 2s) goto 0x000F84
0x000C9C:
    self.menumax = 1s
    call (draw_text[]:int32 (var "Buy it for") (var 130s) (var 230s))
    call (draw_text[]:int32 (+ (string[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost) "G ?") (var 145s) (var 230s))
    call (draw_text[]:int32 (var "Yes") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "No") (var 185s) (var 240s))
    push 175s
    call (draw_sprite[]:int32 (+ -1s (* 2s:menuc 15s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x000DFC
0x000DCC:
    self.menu = 1s
    call (keyboard_clear[]:int32 (var 16s))
    self.sidemessage = 2s
    goto 0x000F84
0x000DFC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000F84
0x000E14:
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 2s:menuc 0s) goto 0x000F50
0x000E44:
    call (scr_cost[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    if !(== self.afford 1s) goto 0x000F44
0x000E84:
    call (script_execute[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):item (var 84s))
    if !(== self.noroom 0s) goto 0x000F20
0x000ECC:
    global.gold = (- global.gold (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    self.sidemessage = 1s
    call (snd_play[]:int32 (var 113s))
0x000F20:
    if !(== self.noroom 1s) goto 0x000F40
0x000F34:
    self.sidemessage = 4s
0x000F40:
    goto 0x000F50
0x000F44:
    self.sidemessage = 3s
0x000F50:
    push -1s
    if !(== 2s:menuc 1s) goto 0x000F78
0x000F6C:
    self.sidemessage = 2s
0x000F78:
    self.menu = 1s
0x000F84:
    push -1s
    if !(!= 1s:menuc 4s) goto 0x001054
0x000FA0:
    if !(> self.minimenuy 40s) goto 0x000FCC
0x000FB4:
    self.minimenuy = (- self.minimenuy 3s)
0x000FCC:
    if !(> self.minimenuy 55s) goto 0x000FF8
0x000FE0:
    self.minimenuy = (- self.minimenuy 2s)
0x000FF8:
    if !(> self.minimenuy 80s) goto 0x001024
0x00100C:
    self.minimenuy = (- self.minimenuy 4s)
0x001024:
    if !(> self.minimenuy 100s) goto 0x001050
0x001038:
    self.minimenuy = (- self.minimenuy 5s)
0x001050:
    goto 0x001080
0x001054:
    if !(< self.minimenuy 120s) goto 0x001080
0x001068:
    self.minimenuy = (+ self.minimenuy 20s)
0x001080:
    if !(== self.menu 3s) goto 0x0015F8
0x001094:
    self.menumax = 4s
    push -5s
    if !(== 7s:flag 0s) goto 0x00135C
0x0010BC:
    if !(== self.murder 0s) goto 0x0012BC
0x0010D0:
    call (draw_text[]:int32 (var "About yourself") (var 130s) (var 30s))
    push -5s
    if !(== 96s:flag 0s) goto 0x00113C
0x001114:
    call (draw_text[]:int32 (var "That emblem") (var 150s) (var 30s))
0x00113C:
    push -5s
    if !(== 96s:flag 1s) goto 0x0011B0
0x001158:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Emblem's meaning (NEW)") (var 150s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x0011B0:
    push -5s
    if !(== 96s:flag 2s) goto 0x001224
0x0011CC:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "The prophecy (NEW)") (var 150s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001224:
    push -5s
    if !(== 96s:flag 3s) goto 0x001268
0x001240:
    call (draw_text[]:int32 (var "The prophecy") (var 150s) (var 30s))
0x001268:
    call (draw_text[]:int32 (var "The King") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "About Undyne") (var 190s) (var 30s))
    goto 0x00135C
0x0012BC:
    call (draw_text[]:int32 (var "Fate") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "Threat") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "Fight") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "Hero") (var 190s) (var 30s))
0x00135C:
    push -5s
    if !(== 7s:flag 1s) goto 0x001418
0x001378:
    call (draw_text[]:int32 (var "Fluffybuns Why?") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "Is ASGORE a goat") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "ASGORE and TORIEL") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "Undyne") (var 190s) (var 30s))
0x001418:
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0014D8
0x00145C:
    if !(== self.murder 0s) goto 0x001488
0x001470:
    stog.msg[0s] = "Anything&you&wanna&know?/*"
0x001488:
    if !(== self.murder 1s) goto 0x0014B4
0x00149C:
    stog.msg[0s] = "Really?&YOU&wanna&chat?/*"
0x0014B4:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
0x0014D8:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 3s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0015B4
0x001534:
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(< 3s:menuc self.menumax) goto 0x0015A4
0x001560:
    push -1s
    self.sell = (+ 3s:menuc 3s)
    call (keyboard_clear[]:int32 (var 13s))
    self.menu = 4s
    goto 0x0015B0
0x0015A4:
    self.menu = 0s
0x0015B0:
    goto 0x0015F8
0x0015B4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0015F8
0x0015CC:
    call (keyboard_clear[]:int32 (var 16s))
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x0015F8:
    if !(< self.menu 4s) goto 0x001688
0x00160C:
    call (draw_text[]:int32 (+ (string[]:int32 global.gold) "G") (var 210s) (var 230s))
    call (scr_itemroom[]:int32 )
    call (draw_text[]:int32 (+ (string[]:int32 self.itemhold) "/8") (var 210s) (var 280s))
0x001688:
    if !(== self.menu 4s) goto 0x002448
0x00169C:
    if !(== self.sell 0s) goto 0x0016BC
0x0016B0:
    self.menu = 0s
0x0016BC:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0016EC
0x0016D8:
    push (== self.selling 0s)
    goto 0x0016F0
0x0016EC:
    push 0s
0x0016F0:
    if !pop goto 0x002314
0x0016F4:
    if !(== self.sell 1s) goto 0x00180C
0x001708:
    if !(== self.murder 0s) goto 0x0017F4
0x00171C:
    stog.msg[0s] = "\\E2* Ha^1!\\E0 &* I'm tryin' to get RID of&  my junk^1, not get more of it!/"
    stog.msg[1s] = "\\E4* Though^1, I've heard if you&  want to sell stuff^1, the Temmie&  Village is your best bet./"
    stog.msg[2s] = "\\E0* Where is it?/"
    stog.msg[3s] = "\\E3* .../"
    stog.msg[4s] = "\\E0* I don't remember./%%"
    self.soldo = (+ self.soldo 1s)
    if !(> self.soldo 1s) goto 0x0017F0
0x0017C0:
    stog.msg[0s] = "* For the last time^1, I'm not&  taking it!/%%"
    stog.msg[1s] = "* I hear people will pay for&  ANYTHING nowadays./%%"
0x0017F0:
    goto 0x00180C
0x0017F4:
    stog.msg[0s] = "\\E3* I wouldn't buy your chitzy&  garbage at knifepoint./%%"
0x00180C:
    if !(== self.sell 2s) goto 0x001878
0x001820:
    if !(== self.murder 0s) goto 0x00184C
0x001834:
    stog.msg[0s] = "* Be careful out there^1, kid!/%%"
0x00184C:
    if !(== self.murder 1s) goto 0x001878
0x001860:
    stog.msg[0s] = "* Good riddance./%%"
0x001878:
    if !(== self.sell 3s) goto 0x001AA0
0x00188C:
    if !(== self.murder 0s) goto 0x0018D4
0x0018A0:
    stog.msg[0s] = "* I've been around a long time^1.&*\\E3 Maybe too long./"
    stog.msg[1s] = "\\E2* Studying history sure is&  easy when you've lived through&  so much of it yourself^1!&*\\E0 Wa ha ha!/%%"
    goto 0x001964
0x0018D4:
    stog.msg[0s] = "\\E0* Long ago^1, ASGORE and I&  agreed that escaping would&  be pointless.../"
    stog.msg[1s] = "\\E3* Since once we left^1, humans&  would just kill us./"
    stog.msg[2s] = "\\E1* I felt a little betrayed when&  he eventually changed his&  mind./"
    stog.msg[3s] = "\\E4* But now^1, I think..^1.&* Maybe he was right to./"
    stog.msg[4s] = "\\E2* 'Cause after all^1, even though&  we never escaped.../"
    stog.msg[5s] = "\\E3* A human's killing us anyway^1,&  ain't that right?/%%"
0x001964:
    push -5s
    if !(== 7s:flag 1s) goto 0x001AA0
0x001980:
    stog.msg[0s] = "* OK^1, OK^1!&* I remember it clearly now./"
    stog.msg[1s] = "\\E3* It was the monthly address at&  the castle^1, and the queen&  was giving her part on&  current events./"
    stog.msg[2s] = "\\E0* After finishing her update^1,&  she moved to pass the&  microphone to the king./"
    stog.msg[3s] = "\\E3* However^1, she didn't realize&  the microphone was still in&  her hands when she said:/"
    stog.msg[4s] = "\\E2* \"Your turn^1, Fluffybuns.\"/"
    stog.msg[5s] = "\\E0* The audience burst into&  laughter./"
    stog.msg[6s] = "\\E2* Realizing what she had said^1,&  she started laughing too./"
    stog.msg[7s] = "\\E0* After a few moments^1, the&  king held up his arms^1.&* The crowd grew silent./"
    stog.msg[8s] = "\\E3* He leaned towards the&  microphone^1, expression..^1.&* Stern./"
    stog.msg[9s] = "\\E0* \"Dear citizens.^1\"&* \"Thank you for coming&  here today.\"/"
    stog.msg[10s] = "\\E3* \"I..^1. King Fluffybuns...\"/"
    stog.msg[11s] = "\\E2* And the rest is history./%%"
0x001AA0:
    if !(== self.sell 4s) goto 0x001F44
0x001AB4:
    push -5s
    if !(== 96s:flag 3s) goto 0x001B00
0x001AD0:
    stog.msg[0s] = "\\E2* What's that^1?&* You want me to repeat myself?/"
    stog.msg[1s] = "\\E0* Heck no^1!&* Your eyes still work..^1.&* Go read a book or something^1!&* Wahaha!/%%"
0x001B00:
    push -5s
    if !(== 96s:flag 2s) goto 0x001BC4
0x001B1C:
    stog.msg[0s] = "\\E0* Oh yeah..^1.&* The prophecy./"
    stog.msg[1s] = "\\E4* Legend has it, an 'angel' who has&  seen the surface will descend&  from above and bring us freedom./"
    stog.msg[2s] = "\\E3* Lately^1, the people have been&  taking a bleaker outlook.../"
    stog.msg[3s] = "\\E4* Callin' that winged circle the&  'Angel of Death.'/"
    stog.msg[4s] = "\\E3* A harbinger of destruction^1,&  waitin' to 'free' us from&  this mortal realm.../"
    stog.msg[5s] = "* In my opinion^1, when I see&  that little circle.../"
    stog.msg[6s] = "\\E2* I jus' think it looks neat^1!&* Wahaha!/%%"
0x001BC4:
    push -5s
    if !(== 96s:flag 1s) goto 0x001C40
0x001BE0:
    stog.msg[0s] = "\\E0* That emblem actually predates&  written history^1.&* The original meaning has been&  lost to time.../"
    stog.msg[1s] = "\\E4* All we know is that the&  triangles symbolize us monsters&  below^1, and the winged circle&  above symbolizes.../"
    stog.msg[2s] = "\\E3* Somethin' else./"
    stog.msg[3s] = "\\E0* Most people say it's the&  'angel^1,' from the prophecy.../%%"
0x001C40:
    push -5s
    if !(== 96s:flag 0s) goto 0x001CEC
0x001C5C:
    stog.msg[0s] = "\\E0* Eh^1?&* You don't know what that is?/"
    stog.msg[1s] = "\\E1* What are they teaching you&  kids in school nowadays...^1?&*\\E2 Wa ha ha!/"
    stog.msg[2s] = "\\W*\\E0 That's the \\YDelta Rune^1,\\W the&  emblem of our kingdom^1.&* The Kingdom.../"
    stog.msg[3s] = "* ... of Monsters./"
    stog.msg[4s] = "* Wahaha^1!&* Great name^1, huh^1?&* It's as I always say.../"
    stog.msg[5s] = "* Ol' King Fluffybuns can't name&  for beans!/%%"
0x001CEC:
    push -5s
    if !(== 96s:flag 2s) goto 0x001D1C
0x001D08:
    stog.flag[96s] = 3s
0x001D1C:
    push -5s
    if !(== 96s:flag 1s) goto 0x001D4C
0x001D38:
    stog.flag[96s] = 2s
0x001D4C:
    push -5s
    if !(== 96s:flag 0s) goto 0x001D7C
0x001D68:
    stog.flag[96s] = 1s
0x001D7C:
    push -5s
    if !(== 7s:flag 1s) goto 0x001ED0
0x001D98:
    stog.msg[0s] = "\\E3* Eh^1?&* Goat?/"
    stog.msg[1s] = "\\E2* Actually^1, that reminds me^1.&* Toriel once wore a flower-&  patterned muu-muu... /"
    stog.msg[2s] = "\\E0* Folks kept saying \"nice muu-&  muu\" to her^1, but she kept&  thinking they were calling&  her a cow./"
    stog.msg[3s] = "\\E1* So she never wore it again./"
    stog.msg[4s] = "\\E3* What was the question again?/"
    stog.msg[5s] = "\\E0* Oh^1.&* Right^1.&* ASGORE./"
    stog.msg[6s] = "\\E3* He's a real interesting&  type of monster^1.&* The strongest type of all./"
    stog.msg[7s] = "\\E0* We call 'em Boss Monsters./"
    stog.msg[8s] = "* When they have an offspring^1,&  the SOUL power of the&  parents flows into the&  child.../"
    stog.msg[9s] = "* Causing the child to grow&  as the parents age./"
    stog.msg[10s] = "\\E3* But ASGORE doesn't have a&  child^1.&* So he's been stuck at the&  same age..^1.&* And probably will be forever./"
    stog.msg[11s] = "\\E1* Huh^1?&* What if the child is a&  human...^1? What?/"
    stog.msg[12s] = "\\E1* Nah^1. That wouldn't work^1.&* So if ASGORE's your father^1,&  he'll definitely outlive&  you./%%"
0x001ED0:
    if !(== self.murder 1s) goto 0x001F44
0x001EE4:
    stog.msg[0s] = "\\E1* I've lived too long to&  be afraid of something&  like you./"
    stog.msg[1s] = "\\E2* Try it^1, kiddo!/"
    stog.msg[2s] = "\\E3* ... I know you can't here./"
    stog.msg[3s] = "\\E1* Wah ha..^1.&* Knowledge like that is&  the only reason I've&  survived so long./%%"
0x001F44:
    if !(== self.sell 5s) goto 0x002120
0x001F58:
    stog.msg[0s] = "* King Fluffybuns^1?&* He's a friendly^1, happy-go-lucky&  kind of guy.../"
    stog.msg[1s] = "\\E4* If you keep walking around long&  enough^1, you'll probably meet him^1.&*\\E0 He loves to walk around and&  talk to people./"
    stog.msg[2s] = "\\E3* Eh^1?&* Why do I call Dreemurr&  'Fluffybuns?^1'&*\\E2 Oh^1, that's a great story!/"
    stog.msg[3s] = "\\E3* .../"
    stog.msg[4s] = "\\E0* I don't remember it./"
    stog.msg[5s] = "* But if you come back much&  later^1, I'm sure I'll have&  remembered by then./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x002094
0x002004:
    stog.msg[0s] = "\\E2* Oh yeah^1!&* Of course^1.&* Toriel was queen^1, and&  Asgore was the king./"
    stog.msg[1s] = "\\E3* It was tragic when she left./"
    stog.msg[2s] = "\\E1* Since everyone knew she was&  really the brains behind the&  throne.../"
    stog.msg[3s] = "\\E0* But it was also just a&  teensy^1, teensy bit relieving^1,&  you know?/"
    stog.msg[4s] = "\\E3* Those two were really&  insufferable together..^1.&* Nuzzling noses^1, bein' all cute&  n' cuddly in public..^1.&* Embarrassing their children.../"
    stog.msg[5s] = "\\E0* They were so sweet it&  made me SICK^1.&* Thank god those days are&  over!/%%"
0x002094:
    if !(== self.murder 1s) goto 0x002120
0x0020A8:
    stog.msg[0s] = "\\E3* Eh^1? Fight you?/"
    stog.msg[1s] = "\\E1* Nah..^1. I'm not a hero^1.&* Never was./"
    stog.msg[2s] = "\\E2* And b'sides..^1.&* These old bones aren't fit&  for fighting anyhoo./"
    stog.msg[3s] = "\\E3* One attack from you^1, and&  then I'd... well.../"
    stog.msg[4s] = "\\E2* At least by talking to&  you^1, I've bought enough time&  for some of them to escape./%%"
0x002120:
    if !(== self.sell 6s) goto 0x0022E4
0x002134:
    stog.msg[0s] = "\\E0* Undyne^1?&* Yeah^1, she's a local hero&  around here./"
    stog.msg[1s] = "\\E4* Through grit and determination&  alone^1, she fought her way to&  the top of the Royal Guard./"
    stog.msg[2s] = "\\E3* Actually^1, she just came through&  here asking about someone who&  looked just like you.../"
    stog.msg[3s] = "\\E0* I'd watch your back^1, kid^1.&* And buy some items..^1.&* It might just save your hide^1!&* Wa ha ha!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x002240
0x0021B0:
    stog.msg[0s] = "\\E0* Undyne^1.&* She's really come a long way&  since she was a little&  urchin./"
    stog.msg[1s] = "\\E2* I used to be a hero myself^1,&  back in the old days^1.&* Gerson^1, the Hammer of Justice./"
    stog.msg[2s] = "\\E3* When she was younger^1, Undyne&  would follow me around^1, to&  watch me beat up bad guys.../"
    stog.msg[3s] = "\\E0* Sometimes she'd even try&  to help!/"
    stog.msg[4s] = "\\E3* Though^1, most of the time&  the folks she attacked weren't&  bad guys^1.&* It'd be the mailman or&  something like that./"
    stog.msg[5s] = "\\E2* Anyhoo^1, I appreciated it^1!&* Wah ha ha ha!!!/%%"
0x002240:
    if !(== self.murder 1s) goto 0x0022E4
0x002254:
    stog.msg[0s] = "\\E1* I'm not a hero./"
    stog.msg[1s] = "\\E3* But I know there's someone&  out there./"
    stog.msg[2s] = "\\E0* Someone who'll never give&  up trying to do the&  right thing^1, no matter&  what./"
    stog.msg[3s] = "\\E4* There's no prophecy or&  legend 'bout anyone like&  that./"
    stog.msg[4s] = "\\E3* It's just something I know&  is true./"
    stog.msg[5s] = "\\E0* That someone like that&  will strike you down./%%"
0x0022E4:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 10s))
    self.selling = 1s
0x002314:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x002390
0x00232C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x002390
0x002344:
    pushenv 782s 0x00238C
0x00234C:
    if !(== self.halt 0s) goto 0x002378
0x002360:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x002378:
    call (keyboard_clear[]:int32 (var 16s))
0x00238C:
    popenv 0x00234C
0x002390:
    if !(== self.selling 1s) goto 0x0023C0
0x0023A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0023C4
0x0023C0:
    push 0s
0x0023C4:
    if !pop goto 0x002448
0x0023C8:
    if !(== self.sell 2s) goto 0x002400
0x0023DC:
    self.selling = 2s
    call (event_user[]:int32 (var 1s))
    goto 0x002448
0x002400:
    if !(== self.sell 1s) goto 0x002424
0x002414:
    self.menu = 0s
    goto 0x002430
0x002424:
    self.menu = 3s
0x002430:
    self.sell = 0s
    self.selling = 0s
0x002448:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x0024D0
0x002460:
    push -1s
    stog.menuc[(+ (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(> (int32 self.menu):menuc self.menumax) goto 0x0024D0
0x0024B4:
    stog.menuc[(int32 self.menu)] = 0s
0x0024D0:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x002558
0x0024E8:
    push -1s
    stog.menuc[(- (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(< (int32 self.menu):menuc 0s) goto 0x002558
0x002538:
    stog.menuc[(int32 self.menu)] = self.menumax
0x002558:
    if !(== global.debug 1s) goto 0x002590
0x00256C:
    if !(bool (keyboard_check_pressed[]:int32 (var 71s))) goto 0x002590
0x002584:
    global.gold = 5000s
0x002590:
    exit
