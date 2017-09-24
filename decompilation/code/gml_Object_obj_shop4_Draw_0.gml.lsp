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
    if !pop goto 0x0003B8
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
    self.wchecks = "-"
0x0001C4:
    self.achecks = " "
    if !(<= global.adef 5s) goto 0x0001F8
0x0001E8:
    self.achecks = "+"
0x0001F8:
    if !(> global.adef 5s) goto 0x00021C
0x00020C:
    self.achecks = "-"
0x00021C:
    push -1s
    if !(== 1s:menuc 0s) goto 0x000268
0x000238:
    call (draw_text[]:int32 (var "Heals 14HP#Very popular#food.") (+ self.minimenuy 14s) (var 224s))
0x000268:
    push -1s
    if !(== 1s:menuc 1s) goto 0x0002B4
0x000284:
    call (draw_text[]:int32 (var "Heals 27HP#Very popular#food.") (+ self.minimenuy 14s) (var 224s))
0x0002B4:
    push -1s
    if !(== 1s:menuc 2s) goto 0x000300
0x0002D0:
    call (draw_text[]:int32 (var "Heals 40HP#Hero Sandwich.#ATTACK UP#in battle.") (+ self.minimenuy 14s) (var 224s))
0x000300:
    push -5s
    if !(== 445s:flag 0s) goto 0x0003B8
0x00031C:
    push -1s
    if !(== 1s:menuc 3s) goto 0x00036C
0x000338:
    call (draw_text[]:int32 (var "Heals 60HP#Don't ask.#Please.") (+ self.minimenuy 14s) (var 224s))
    goto 0x0003B8
0x00036C:
    push -1s
    if !(== 1s:menuc 3s) goto 0x0003B8
0x000388:
    call (draw_text[]:int32 (var "SOLD OUT") (+ self.minimenuy 14s) (var 224s))
0x0003B8:
    if !(< self.menu 4s) goto 0x00044C
0x0003CC:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 210s) (var 124s) (var 4s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 214s))
    goto 0x000494
0x00044C:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 4s))
0x000494:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.menu 0s) goto 0x000940
0x0004C0:
    self.sell = 0s
    self.selling = 0s
    self.sidemessage = 0s
    stog.menuc[1s] = 0s
    stog.menuc[2s] = 0s
    stog.menuc[3s] = 0s
    stog.menuc[4s] = 0s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000694
0x000550:
    push -5s
    if !(< 435s:flag 2s) goto 0x0005D8
0x00056C:
    stog.msg[0s] = "\\E0* The customer is always right./*"
    if !(== self.mainmessage 0s) goto 0x0005B4
0x000598:
    push -5s
    push (== 69s:flag 0s)
    goto 0x0005B8
0x0005B4:
    push 0s
0x0005B8:
    if !pop goto 0x0005D4
0x0005BC:
    stog.msg[0s] = "\\E0* Welcome to MTT-Brand&  Burger Emporium^1, home&  of the Glamburger^1.&* Sparkle up your&  day (TM)./*"
0x0005D4:
    goto 0x00066C
0x0005D8:
    stog.msg[0s] = "\\E3* Anything else you need?/*"
    if !(== self.mainmessage 0s) goto 0x000620
0x000604:
    push -5s
    push (== 69s:flag 0s)
    goto 0x000624
0x000620:
    push 0s
0x000624:
    if !pop goto 0x000640
0x000628:
    stog.msg[0s] = "\\E3* What can I do for you^1,&  little buddy?/*"
0x000640:
    if !(== self.murder 1s) goto 0x00066C
0x000654:
    stog.msg[0s] = "\\E1* (Why do I always&  get the freaks?)/*"
0x00066C:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 0s))
    goto 0x0006F8
0x000694:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0006F8
0x0006AC:
    pushenv 782s 0x0006F4
0x0006B4:
    if !(== self.halt 0s) goto 0x0006E0
0x0006C8:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x0006E0:
    call (keyboard_clear[]:int32 (var 16s))
0x0006F4:
    popenv 0x0006B4
0x0006F8:
    self.menumax = 3s
    call (draw_text[]:int32 (var "Buy") (var 130s) (var 240s))
    call (draw_text[]:int32 (var "Sell") (var 150s) (var 240s))
    call (draw_text[]:int32 (var "Talk") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "Exit") (var 190s) (var 240s))
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 0s:menuc 20s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000940
0x000800:
    [OBJ_WRITER].dfy = 1s
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 0s:menuc 0s) goto 0x000848
0x00083C:
    self.menu = 1s
0x000848:
    push -1s
    if !(== 0s:menuc 1s) goto 0x00087C
0x000864:
    self.sell = 1s
    self.menu = 4s
0x00087C:
    push -1s
    if !(== 0s:menuc 2s) goto 0x00090C
0x000898:
    self.menu = 3s
    push -5s
    if !(== 435s:flag 0s) goto 0x0008D8
0x0008C0:
    self.menu = 4s
    self.sell = 20s
0x0008D8:
    push -5s
    if !(== 435s:flag 1s) goto 0x00090C
0x0008F4:
    self.menu = 4s
    self.sell = 21s
0x00090C:
    push -1s
    if !(== 0s:menuc 3s) goto 0x000940
0x000928:
    self.sell = 2s
    self.menu = 4s
0x000940:
    if (== self.menu 1s) goto 0x000968
0x000954:
    push (== self.menu 2s)
    goto 0x00096C
0x000968:
    push 1s
0x00096C:
    if !pop goto 0x0014A0
0x000970:
    call (draw_text[]:int32 (var " 60G - Starfait") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "120G - Glamburger") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "300G - Legendary Hero") (var 170s) (var 30s))
    push -5s
    if !(== 445s:flag 0s) goto 0x000A78
0x000A04:
    call (draw_text[]:int32 (var "500G - ") (var 190s) (var 30s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 0.6d) (var "Steak in the Shape of Mettaton's Face") (var 190s) (var 70s))
    goto 0x000AD0
0x000A78:
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text[]:int32 (var "--- SOLD OUT ---") (var 190s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x000AD0:
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== self.menu 1s) goto 0x001048
0x000B0C:
    self.menumax = 4s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000EBC
0x000B34:
    push -5s
    if !(< 435s:flag 2s) goto 0x000C58
0x000B50:
    if !(== self.sidemessage 0s) goto 0x000B7C
0x000B64:
    stog.msg[0s] = "\\E0How can&I help&you, O&customer?/*"
0x000B7C:
    if !(== self.sidemessage 1s) goto 0x000BA8
0x000B90:
    stog.msg[0s] = "\\E2Thanksy!&Have a&FABU-FUL&day!!!/*"
0x000BA8:
    if !(== self.sidemessage 2s) goto 0x000BD4
0x000BBC:
    stog.msg[0s] = "\\E1So do&you want&it or&not???/*"
0x000BD4:
    if !(== self.sidemessage 3s) goto 0x000C00
0x000BE8:
    stog.msg[0s] = "\\E1That's not&the right&amount of&money./*"
0x000C00:
    if !(== self.sidemessage 4s) goto 0x000C2C
0x000C14:
    stog.msg[0s] = "\\E1You&don't&have&room./*"
0x000C2C:
    if !(== self.sidemessage 5s) goto 0x000C58
0x000C40:
    stog.msg[0s] = "\\E1We don't&HAVE&any&more./*"
0x000C58:
    push -5s
    if !(== 435s:flag 2s) goto 0x000E98
0x000C74:
    if !(== self.sidemessage 0s) goto 0x000CA0
0x000C88:
    stog.msg[0s] = "\\E6Take what&you want^1,&little&buddy./*"
0x000CA0:
    if !(== self.sidemessage 1s) goto 0x000CCC
0x000CB4:
    stog.msg[0s] = "\\E6Here you&go^1,&little&buddy./*"
0x000CCC:
    if !(== self.sidemessage 2s) goto 0x000CF8
0x000CE0:
    stog.msg[0s] = "\\E6Don't&worry&about&it./*"
0x000CF8:
    if !(== self.sidemessage 3s) goto 0x000D24
0x000D0C:
    stog.msg[0s] = "\\E6Sorry...&You can't&take it&for free./*"
0x000D24:
    if !(== self.sidemessage 4s) goto 0x000D50
0x000D38:
    stog.msg[0s] = "\\E6You gotta&drop some&stuff./*"
0x000D50:
    if !(== self.sidemessage 5s) goto 0x000D7C
0x000D64:
    stog.msg[0s] = "\\E6Like I'm&making&THAT&again./*"
0x000D7C:
    if !(== self.murder 1s) goto 0x000E98
0x000D90:
    if !(== self.sidemessage 0s) goto 0x000DBC
0x000DA4:
    stog.msg[0s] = "\\E3Are you&gonna&order or&what?/*"
0x000DBC:
    if !(== self.sidemessage 1s) goto 0x000DE8
0x000DD0:
    stog.msg[0s] = "\\E6Here you&go^1,&little&weirdo./*"
0x000DE8:
    if !(== self.sidemessage 2s) goto 0x000E14
0x000DFC:
    stog.msg[0s] = "\\E1So do&you want&it or&not???/*"
0x000E14:
    if !(== self.sidemessage 3s) goto 0x000E40
0x000E28:
    stog.msg[0s] = "\\E1That's not&the right&amount of&money./*"
0x000E40:
    if !(== self.sidemessage 4s) goto 0x000E6C
0x000E54:
    stog.msg[0s] = "\\E1You&don't&have&room./*"
0x000E6C:
    if !(== self.sidemessage 5s) goto 0x000E98
0x000E80:
    stog.msg[0s] = "\\E1We don't&HAVE&any&more./*"
0x000E98:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
0x000EBC:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 1s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000FDC
0x000F18:
    self.soldout = 0s
    push -1s
    if !(== 1s:menuc 3s) goto 0x000F5C
0x000F40:
    push -5s
    push (== 445s:flag 1s)
    goto 0x000F60
0x000F5C:
    push 0s
0x000F60:
    if !pop goto 0x000F70
0x000F64:
    self.soldout = 1s
0x000F70:
    if !(== self.soldout 0s) goto 0x000F94
0x000F84:
    self.menu = 2s
    goto 0x000FA0
0x000F94:
    self.sidemessage = 5s
0x000FA0:
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(== 1s:menuc self.menumax) goto 0x000FD8
0x000FCC:
    self.menu = 0s
0x000FD8:
    goto 0x00100C
0x000FDC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x00100C
0x000FF4:
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x00100C:
    if !(== self.menu 2s) goto 0x001034
0x001020:
    call (keyboard_clear[]:int32 (var 13s))
0x001034:
    stog.menuc[2s] = 0s
0x001048:
    if !(== self.menu 2s) goto 0x0013A4
0x00105C:
    self.menumax = 1s
    call (draw_text[]:int32 (var "Buy it for") (var 130s) (var 230s))
    call (draw_text[]:int32 (+ (string[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost) "G ?") (var 145s) (var 230s))
    call (draw_text[]:int32 (var "Yes") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "No") (var 185s) (var 240s))
    push 175s
    call (draw_sprite[]:int32 (+ -1s (* 2s:menuc 15s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0011BC
0x00118C:
    self.menu = 1s
    call (keyboard_clear[]:int32 (var 16s))
    self.sidemessage = 2s
    goto 0x0013A4
0x0011BC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0013A4
0x0011D4:
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 2s:menuc 0s) goto 0x001370
0x001204:
    call (scr_cost[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    if !(== self.afford 1s) goto 0x001364
0x001244:
    call (script_execute[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):item (var 84s))
    if !(== self.noroom 0s) goto 0x001340
0x00128C:
    global.gold = (- global.gold (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    call (snd_play[]:int32 (var 113s))
    self.sidemessage = 1s
    push -5s
    if !(< 435s:flag 1s) goto 0x001310
0x0012FC:
    stog.flag[435s] = 1s
0x001310:
    push -1s
    if !(== 1s:menuc 3s) goto 0x001340
0x00132C:
    stog.flag[445s] = 1s
0x001340:
    if !(== self.noroom 1s) goto 0x001360
0x001354:
    self.sidemessage = 4s
0x001360:
    goto 0x001370
0x001364:
    self.sidemessage = 3s
0x001370:
    push -1s
    if !(== 2s:menuc 1s) goto 0x001398
0x00138C:
    self.sidemessage = 2s
0x001398:
    self.menu = 1s
0x0013A4:
    push -1s
    if !(!= 1s:menuc 4s) goto 0x001474
0x0013C0:
    if !(> self.minimenuy 40s) goto 0x0013EC
0x0013D4:
    self.minimenuy = (- self.minimenuy 3s)
0x0013EC:
    if !(> self.minimenuy 55s) goto 0x001418
0x001400:
    self.minimenuy = (- self.minimenuy 2s)
0x001418:
    if !(> self.minimenuy 80s) goto 0x001444
0x00142C:
    self.minimenuy = (- self.minimenuy 4s)
0x001444:
    if !(> self.minimenuy 100s) goto 0x001470
0x001458:
    self.minimenuy = (- self.minimenuy 5s)
0x001470:
    goto 0x0014A0
0x001474:
    if !(< self.minimenuy 120s) goto 0x0014A0
0x001488:
    self.minimenuy = (+ self.minimenuy 20s)
0x0014A0:
    if !(== self.menu 3s) goto 0x001CD0
0x0014B4:
    self.menumax = 4s
    push -5s
    if !(== 7s:flag 0s) goto 0x001A48
0x0014DC:
    if !(== self.murder 0s) goto 0x0019A8
0x0014F0:
    call (draw_text[]:int32 (var "Life Advice") (var 130s) (var 30s))
    push -5s
    if !(== 437s:flag 0s) goto 0x00155C
0x001534:
    call (draw_text[]:int32 (var "Romance Advice") (var 150s) (var 30s))
0x00155C:
    push -5s
    if !(== 437s:flag 1s) goto 0x0015D0
0x001578:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Glamburger Story (NEW)") (var 150s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x0015D0:
    push -5s
    if !(== 437s:flag 2s) goto 0x001614
0x0015EC:
    call (draw_text[]:int32 (var "Glamburger Story") (var 150s) (var 30s))
0x001614:
    push -5s
    if !(== 437s:flag 4s) goto 0x001658
0x001630:
    call (draw_text[]:int32 (var "Clarify Story") (var 150s) (var 30s))
0x001658:
    push -5s
    if !(== 437s:flag 5s) goto 0x0016CC
0x001674:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Bratty & Catty (NEW)") (var 150s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x0016CC:
    push -5s
    if !(== 437s:flag 6s) goto 0x001710
0x0016E8:
    call (draw_text[]:int32 (var "Bratty & Catty") (var 150s) (var 30s))
0x001710:
    push -5s
    if !(== 437s:flag 7s) goto 0x001754
0x00172C:
    call (draw_text[]:int32 (var "Outing") (var 150s) (var 30s))
0x001754:
    push -5s
    if !(== 437s:flag 8s) goto 0x0017C8
0x001770:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Catty's Invitation (NEW)") (var 150s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x0017C8:
    push -5s
    if !(== 437s:flag 9s) goto 0x00180C
0x0017E4:
    call (draw_text[]:int32 (var "Catty's Invitation") (var 150s) (var 30s))
0x00180C:
    push -5s
    if !(== 436s:flag 0s) goto 0x001850
0x001828:
    call (draw_text[]:int32 (var "Mettaton") (var 170s) (var 30s))
0x001850:
    push -5s
    if !(== 436s:flag 1s) goto 0x0018C4
0x00186C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Why is Mettaton bad (NEW)") (var 170s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x0018C4:
    push -5s
    if !(== 436s:flag 2s) goto 0x001938
0x0018E0:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Why else is MTT bad (NEW)") (var 170s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001938:
    push -5s
    if !(== 436s:flag 3s) goto 0x00197C
0x001954:
    call (draw_text[]:int32 (var "Why else is MTT bad") (var 170s) (var 30s))
0x00197C:
    call (draw_text[]:int32 (var "Your future") (var 190s) (var 30s))
    goto 0x001A48
0x0019A8:
    call (draw_text[]:int32 (var "Evacuation") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "Mettaton") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "Alone") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "Threaten") (var 190s) (var 30s))
0x001A48:
    push -5s
    if !(== 7s:flag 1s) goto 0x001B04
0x001A64:
    call (draw_text[]:int32 (var "Freedom") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "Bratty and Catty") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "Freedom") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "Future") (var 190s) (var 30s))
0x001B04:
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x001BB0
0x001B48:
    stog.msg[0s] = "\\E3Take it&from me^1,&little&buddy./*"
    if !(== self.murder 1s) goto 0x001B8C
0x001B74:
    stog.msg[0s] = "\\E3Nothing&else to&do!/*"
0x001B8C:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
0x001BB0:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 3s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x001C8C
0x001C0C:
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(< 3s:menuc self.menumax) goto 0x001C7C
0x001C38:
    push -1s
    self.sell = (+ 3s:menuc 3s)
    call (keyboard_clear[]:int32 (var 13s))
    self.menu = 4s
    goto 0x001C88
0x001C7C:
    self.menu = 0s
0x001C88:
    goto 0x001CD0
0x001C8C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x001CD0
0x001CA4:
    call (keyboard_clear[]:int32 (var 16s))
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x001CD0:
    if !(< self.menu 4s) goto 0x001D60
0x001CE4:
    call (draw_text[]:int32 (+ (string[]:int32 global.gold) "G") (var 210s) (var 230s))
    call (scr_itemroom[]:int32 )
    call (draw_text[]:int32 (+ (string[]:int32 self.itemhold) "/8") (var 210s) (var 280s))
0x001D60:
    if !(== self.menu 4s) goto 0x003028
0x001D74:
    if !(== self.sell 0s) goto 0x001D94
0x001D88:
    self.menu = 0s
0x001D94:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x001DC4
0x001DB0:
    push (== self.selling 0s)
    goto 0x001DC8
0x001DC4:
    push 0s
0x001DC8:
    if !pop goto 0x002ED8
0x001DCC:
    if !(== self.sell 1s) goto 0x001EA0
0x001DE0:
    push -5s
    if !(< 435s:flag 2s) goto 0x001E5C
0x001DFC:
    stog.msg[0s] = "\\E1* (WHY IS THIS PERSON TRYING TO&  SELL ME SOMETHING THIS IS&  A HAMBURGER RESTAURANT I'M&  JUST TRYING TO SURVIVE)/%%"
    self.soldo = (+ self.soldo 1s)
    if !(> self.soldo 1s) goto 0x001E58
0x001E40:
    stog.msg[0s] = "\\E3* WHO DO YOU THINK YOU ARE./%%"
0x001E58:
    goto 0x001EA0
0x001E5C:
    stog.msg[0s] = "\\E6* Hmmm..^1.&* Why not try selling that to&  the two chicks in the alley?/%%"
    if !(== self.murder 1s) goto 0x001EA0
0x001E88:
    stog.msg[0s] = "\\E3* Ah^1. Yes^1.&* I really want to buy your&  weird dusty artifacts..^1.&* NOT./%%"
0x001EA0:
    if !(== self.sell 2s) goto 0x001F2C
0x001EB4:
    stog.msg[0s] = "\\E2* Have a SPARKULAR day!/%%"
    push -5s
    if !(> 435s:flag 1s) goto 0x001F2C
0x001EE8:
    stog.msg[0s] = "\\E6* Any time^1, little buddy./%%"
    if !(== self.murder 1s) goto 0x001F2C
0x001F14:
    stog.msg[0s] = "\\E6* Alone again.../%%"
0x001F2C:
    if !(== self.sell 3s) goto 0x002060
0x001F40:
    stog.msg[0s] = "\\E6* I'm getting on in years^1, so&  let me give you some&  advice^1, little buddy./"
    stog.msg[1s] = "\\E3* You've still got time^1.&* Don't live like me./"
    stog.msg[2s] = "\\E6* I'm 19 years old and I've&  already wasted my entire life./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x002004
0x001FA4:
    stog.msg[0s] = "\\E0* So we're free^1, huh^1?&* Mettaton told us as much./"
    stog.msg[1s] = "\\E4* Then he told me^1, \"don't&  think that means you're&  getting out of work early.\"/"
    stog.msg[2s] = "\\E6* Ah..^1. my boss.&* I love that guy./"
    stog.msg[3s] = "\\E3* And by that I mean I hate&  him so^1, so much./%%"
0x002004:
    if !(== self.murder 1s) goto 0x002060
0x002018:
    stog.msg[0s] = "\\E1* Evacuation^1?&* You're yanking my chain^1,&  little weirdo./"
    stog.msg[1s] = "\\E3* So WHAT if everybody else&  left work?&* So WHAT if nobody's buying&  anything?/"
    stog.msg[2s] = "\\E6* Par for the course^1,&  little weirdo^1.&* Par for the course./%%"
0x002060:
    if !(== self.sell 4s) goto 0x0028C4
0x002074:
    stog.msg[0s] = "* I'm a goofy goober Yeah &  this errorr. message./%%"
    push -5s
    if !(== 437s:flag 9s) goto 0x0020C0
0x0020A8:
    stog.msg[0s] = "\\E6* Thank you^1, little buddy./%%"
0x0020C0:
    push -5s
    if !(== 437s:flag 8s) goto 0x0021B4
0x0020DC:
    stog.msg[0s] = "\\E5* They wanna hang out after&  work?/"
    stog.msg[1s] = "\\E3* Ha^1! Ahahaha!^1! Yes!!^1!&* I won't let you down!!/"
    stog.msg[2s] = "\\E6* Little buddy..^1. thank you./"
    stog.msg[3s] = "* You've brought a tear to the&  eye of this old man./"
    stog.msg[4s] = "\\E5* So^1, uh^1, where do they&  want to go?/"
    stog.msg[5s] = "\\E4* .../"
    stog.msg[6s] = "* They want to hang out at&  the garbage dump./"
    stog.msg[7s] = "* .../"
    stog.msg[8s] = "\\E6* Well^1, nowhere to go but&  up^1, right^1, little buddy?/%%"
0x0021B4:
    push -5s
    if !(== 437s:flag 7s) goto 0x0022C0
0x0021D0:
    stog.msg[0s] = "\\E6* Hey little buddy^1, wanna help&  me pick a spicy outfit for&  my little shindig later?/"
    stog.msg[1s] = "\\E4* Though^1, now that I think&  about it^1, I had to throw away&  all of my clothes to make&  room for the outfits Mettaton&  gave me.../"
    stog.msg[2s] = "\\E5* Don't take it the wrong way^1.&* They're just all these.../"
    stog.msg[3s] = "\\E4* Weird getups./"
    stog.msg[4s] = "\\E1* \"Promotional\" costumes^1.&* For \"holidays.^1\"&* Or \"specials.^1\"&* Or \"because he felt like it.\"/"
    stog.msg[5s] = "\\E3* The thing IS though^1!&* Most of the time I'm the&  only employee who has to&  wear this stuff!/"
    stog.msg[6s] = "\\E3* Sometimes he even calls me&  into his office just to..^1.&* Make me put something on.../"
    stog.msg[7s] = "\\E4* Then he laughs and lets me&  go back to work as normal./"
    stog.msg[8s] = "\\E6* Anyways^1, I won't sweat it^1,&  little buddy^1.&* I'll take it casual./"
    stog.msg[9s] = "* NEVER let hot people think&  you care^1.&* That's how they GET you./%%"
0x0022C0:
    push -5s
    if !(== 437s:flag 6s) goto 0x0022F4
0x0022DC:
    stog.msg[0s] = "\\E5* Well^1?&* Don't keep me waiting^1,&  little buddy!!/%%"
0x0022F4:
    push -5s
    if !(== 437s:flag 5s) goto 0x0023D0
0x002310:
    stog.msg[0s] = "\\E4* The girls were..^1.&* Talking about me...?/"
    stog.msg[1s] = "* They say I should stop acting&  like they owe me.../"
    stog.msg[2s] = "\\E5* ... and if I want to be&  FRIENDS with them^1, I should&  just..^1. uh^1, try to see&  things from their&  perspective?/"
    stog.msg[3s] = "\\E4* Wow./"
    stog.msg[4s] = "\\E6* Poor^1, naive little buddy^1.&* They've brainwashed you./"
    stog.msg[5s] = "* \"Friendship\" is just a hot&  person's way of making you&  their slave./"
    stog.msg[6s] = "\\E4* .../"
    stog.msg[7s] = "\\E5* So^1, uh^1, what time would&  they wanna hang out?/%%"
0x0023D0:
    push -5s
    if !(== 437s:flag 4s) goto 0x002494
0x0023EC:
    stog.msg[0s] = "\\E5* Huh^1?&* Yeah^1, those two vendors in back^1.&* The girls./"
    stog.msg[1s] = "\\E3* NOT the Nice Cream guy./"
    stog.msg[2s] = "\\E5* He keeps coming in here and&  asking me stuff like^1,&* \"Hey Burgy, what do you think&  of this joke for my next&  ice cream wrapper?\"/"
    stog.msg[3s] = "\\E4* Joke^1?&* Why are you calling it a JOKE?/"
    stog.msg[4s] = "\\E3* You drew a picture of two&  dudes hugging and wrote&  \"I love hugs!\" on it./"
    stog.msg[5s] = "\\E3* You somehow understand comedy&  EVEN LESS than that guy who&  keeps going on stage and&  crying about his family./"
    stog.msg[6s] = "\\E5* Anyway^1, I^1, uh^1, just tell him&  that they're good^1, because he&  gives me the nice cream for&  free afterward.../%%"
0x002494:
    push -5s
    if !(== 437s:flag 2s) goto 0x0024E0
0x0024B0:
    stog.msg[0s] = "\\E4* Everyone calls me burgerpants&  now./"
    stog.msg[1s] = "\\E5* But you won't^1, will you^1,&  little buddy?/%%"
0x0024E0:
    push -5s
    if !(== 437s:flag 1s) goto 0x0025D4
0x0024FC:
    stog.msg[0s] = "\\E6* So I went out to the alley&  to see those two ladies^1, and&  uh..^1. you know^1, see what'd&  happen next./"
    stog.msg[1s] = "\\E4* .../"
    stog.msg[2s] = "\\E5* Then my boss^1, uh^1, saw me and&  asked me what I was doing./"
    stog.msg[3s] = "\\E1* I was so startled^1, the hamburgers&  in my pockets tumbled out&  onto the ground./"
    stog.msg[4s] = "\\E3* Not wanting to lose face^1,&  I scrambled to pick them up!/"
    stog.msg[5s] = "\\E3* But^1, as I was leaning over^1,&  the weight of the remaining&  hamburgers.../"
    stog.msg[6s] = "\\E5* ... caused my pants to fall&  down./"
    stog.msg[7s] = "\\E4* Then the girls laughed at me./"
    stog.msg[8s] = "\\E4* Everyone calls me Burgerpants&  now./%%"
0x0025D4:
    push -5s
    if !(== 437s:flag 0s) goto 0x002680
0x0025F0:
    stog.msg[0s] = "\\E6* Listen^1.&* I like you^1, little buddy^1.&* So I'm gonna save you a lot&  of trouble./"
    stog.msg[1s] = "\\E3* Never interact with attractive&  people./"
    stog.msg[2s] = "\\E6* Unless you're \"one of them^1,\"&  they're just gonna take&  advantage of you./"
    stog.msg[3s] = "\\E3* Like that time those two&  chicks asked me to sneak them&  some glamburgers./"
    stog.msg[4s] = "\\E6* And I^1, naive teenager that&  I was^1, said yes to them./"
    stog.msg[5s] = "\\E4* Bad idea./%%"
0x002680:
    push -5s
    if !(== 7s:flag 1s) goto 0x002760
0x00269C:
    stog.msg[0s] = "\\E4* Those girls?&* The ones who saw my pants&  fall down?/"
    stog.msg[1s] = "\\E5* Well^1, we're all gonna be&  free^1, so I'll never see&  them again^1, at least!/%%"
    push -5s
    if !(>= 437s:flag 9s) goto 0x002760
0x0026E8:
    stog.msg[0s] = "\\E4* So we're free now./"
    stog.msg[1s] = "\\E5* Does that mean my double-&  date is cancelled...?/"
    stog.msg[2s] = "\\E4* .../"
    stog.msg[3s] = "\\E5* I know^1, it wasn't really&  a..^1.&* A date./"
    stog.msg[4s] = "\\E6* Here's a trick^1, little buddy^1:&* Lie to yourself all the time^1.&* It makes you feel better./%%"
0x002760:
    if !(== self.murder 1s) goto 0x002804
0x002774:
    stog.msg[0s] = "\\E4* Well^1, Mettaton didn't tell me&  I HAD to work, I guess.../"
    stog.msg[1s] = "\\E3* But that's the thing^1!&* Sometimes he doesn't even&  call me into work until&  halfway into my shift!/"
    stog.msg[2s] = "\\E4* If I don't play it safe^1,&  he's going to yell at me./"
    stog.msg[3s] = "\\E6* Okay^1, maybe \"yell\" is the&  wrong term./"
    stog.msg[4s] = "\\E4* It's more like he has this..^1.&* CD album he plays.../"
    stog.msg[5s] = "\\E5* That's entirely full of&  songs about how bad I am&  at my job./%%"
0x002804:
    push -5s
    if !(== 437s:flag 8s) goto 0x002834
0x002820:
    stog.flag[437s] = 9s
0x002834:
    push -5s
    if !(== 437s:flag 5s) goto 0x002864
0x002850:
    stog.flag[437s] = 6s
0x002864:
    push -5s
    if !(== 437s:flag 1s) goto 0x002894
0x002880:
    stog.flag[437s] = 2s
0x002894:
    push -5s
    if !(== 437s:flag 0s) goto 0x0028C4
0x0028B0:
    stog.flag[437s] = 1s
0x0028C4:
    if !(== self.sell 5s) goto 0x002C60
0x0028D8:
    push -5s
    if !(== 436s:flag 3s) goto 0x00290C
0x0028F4:
    stog.msg[0s] = "\\E5* Let's not talk about this./%%"
0x00290C:
    push -5s
    if !(== 436s:flag 2s) goto 0x0029D0
0x002928:
    stog.msg[0s] = "\\E1* Why do people find him so&  attractive??/"
    stog.msg[1s] = "\\E3* He's literally just a freaking&  rectangle./"
    stog.msg[2s] = "\\E4* .../"
    stog.msg[3s] = "* You know^1, one time^1, I bought&  one of those^1, uh^1, kits&  online..^1. to.../"
    stog.msg[4s] = "\\E5* Uh^1, make yourself more&  rectangular./"
    stog.msg[5s] = "\\E4* .../"
    stog.msg[6s] = "\\E5* They don't work./%%"
0x0029D0:
    push -5s
    if !(== 436s:flag 1s) goto 0x002A4C
0x0029EC:
    stog.msg[0s] = "\\E3* God^1, have you even looked&  around^1?&* This place is a labyrinth of&  bad choices./"
    stog.msg[1s] = "* And every time we try to change&  something for the better^1, he&  vetoes it and says \"that's not&  how they do it on the&  surface.\"/"
    stog.msg[2s] = "\\E1Oh! Right!/"
    stog.msg[3s] = "\\E3* Humans are always eating&  hamburgers made of SEQUINS&  AND GLUE./%%"
0x002A4C:
    push -5s
    if !(== 436s:flag 0s) goto 0x002AB0
0x002A68:
    stog.msg[0s] = "\\E5* When I first came to Hotland^1,&  it was my dream to work&  with Mettaton./"
    stog.msg[1s] = "\\E4* .../"
    stog.msg[2s] = "\\E3* Well^1, be careful what you&  wish for^1, little buddy!/%%"
0x002AB0:
    push -5s
    if !(== 436s:flag 2s) goto 0x002AE0
0x002ACC:
    stog.flag[436s] = 3s
0x002AE0:
    push -5s
    if !(== 436s:flag 1s) goto 0x002B10
0x002AFC:
    stog.flag[436s] = 2s
0x002B10:
    push -5s
    if !(== 436s:flag 0s) goto 0x002B40
0x002B2C:
    stog.flag[436s] = 1s
0x002B40:
    push -5s
    if !(== 7s:flag 1s) goto 0x002BEC
0x002B5C:
    stog.msg[0s] = "\\E3* Don't tell anyone this^1, Little&  Buddy./"
    stog.msg[1s] = "\\E4* (Because they'll make fun&  of me,)/"
    stog.msg[2s] = "\\E5* But I..^1.&* I feel like I played a hand in&  everyone getting free&  somehow./"
    stog.msg[3s] = "\\E1* Even if it was just&  working this awful job.../"
    stog.msg[4s] = "\\E5* I think I did something!/"
    stog.msg[5s] = "\\E3* I don't know if it's true^1,&  but I'll believe it anyway!/%%"
0x002BEC:
    if !(== self.murder 1s) goto 0x002C60
0x002C00:
    stog.msg[0s] = "\\E3* Huh?&* Everyone else is DEAD?/"
    stog.msg[1s] = "\\E4* .../"
    stog.msg[2s] = "\\E5* Does that mean I don't&  have to work today?/"
    stog.msg[3s] = "\\E6* God^1.&* That it were true^1,&  little weirdo^1.&* That it were true./%%"
0x002C60:
    if !(== self.sell 6s) goto 0x002DDC
0x002C74:
    stog.msg[0s] = "\\E3* Future^1?&* WHAT future^1?&* Nothing down here EVER&  changes./"
    stog.msg[1s] = "\\E4* I'll probably be trapped&  at this stupid job forever./"
    stog.msg[2s] = "* .../"
    stog.msg[3s] = "\\E3* But wait^1!&* There's one thing that keeps&  me going!/"
    stog.msg[4s] = "* If ASGORE gets just one&  more SOUL^1, we'll finally get&  to go to the surface!/"
    stog.msg[5s] = "* It'll be a brand new world^1!&* There's gotta be a second&  chance out there for me^1!&* For everyone!/"
    stog.msg[6s] = "\\E6* So stay strong^1, little buddy^1.&* When I make it big^1, I'll&  keep you in mind./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x002D98
0x002D38:
    stog.msg[0s] = "\\E3* Little buddy^1!&* There's a brand new world&  out there waiting&  for us./"
    stog.msg[1s] = "\\E6* I'm sure with my (ahem)&  qualifications^1, it won't&  be long before I'm a&  famous movie star.../"
    stog.msg[2s] = "\\E4* Or^1, maybe I'll just end up&  flipping burgers again./"
    stog.msg[3s] = "\\E3* But it's as I say^1!&* Nowhere to go but up^1!&* Literally^1, in this case!/%%"
0x002D98:
    if !(== self.murder 1s) goto 0x002DDC
0x002DAC:
    stog.msg[0s] = "\\E6* Sorry^1, little weirdo^1.&* Threats won't work on me./"
    stog.msg[1s] = "* I can't go to hell^1.&* I'm all out of vacation&  days./%%"
0x002DDC:
    if !(== self.sell 20s) goto 0x002E08
0x002DF0:
    stog.msg[0s] = "\\E0* I'm sorry^1, (Ha ha) it's against&  the rules to talk to customers&  who haven't bought anything./%%"
0x002E08:
    if !(== self.sell 21s) goto 0x002EA8
0x002E1C:
    stog.msg[0s] = "\\E1* What^1?&* Why do you keep trying to talk&  to me?/"
    stog.msg[1s] = "\\E1* I'll get in trouble if I get&  chummy with the customers./"
    stog.msg[2s] = "\\E0* Sorry./"
    stog.msg[3s] = "\\E4* .../"
    stog.msg[4s] = "\\E3* SO^1, I wanted to be an ACTOR./%%"
    stog.flag[435s] = 2s
0x002EA8:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 10s))
    self.selling = 1s
0x002ED8:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x002F54
0x002EF0:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x002F54
0x002F08:
    pushenv 782s 0x002F50
0x002F10:
    if !(== self.halt 0s) goto 0x002F3C
0x002F24:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x002F3C:
    call (keyboard_clear[]:int32 (var 16s))
0x002F50:
    popenv 0x002F10
0x002F54:
    if !(== self.selling 1s) goto 0x002F84
0x002F68:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002F88
0x002F84:
    push 0s
0x002F88:
    if !pop goto 0x003028
0x002F8C:
    if !(== self.sell 2s) goto 0x002FC4
0x002FA0:
    self.selling = 2s
    call (event_user[]:int32 (var 1s))
    goto 0x003028
0x002FC4:
    if (== self.sell 1s) goto 0x002FEC
0x002FD8:
    push (== self.sell 20s)
    goto 0x002FF0
0x002FEC:
    push 1s
0x002FF0:
    if !pop goto 0x003004
0x002FF4:
    self.menu = 0s
    goto 0x003010
0x003004:
    self.menu = 3s
0x003010:
    self.sell = 0s
    self.selling = 0s
0x003028:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x0030B0
0x003040:
    push -1s
    stog.menuc[(+ (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(> (int32 self.menu):menuc self.menumax) goto 0x0030B0
0x003094:
    stog.menuc[(int32 self.menu)] = 0s
0x0030B0:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x003138
0x0030C8:
    push -1s
    stog.menuc[(- (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(< (int32 self.menu):menuc 0s) goto 0x003138
0x003118:
    stog.menuc[(int32 self.menu)] = self.menumax
0x003138:
    if !(== global.debug 1s) goto 0x0031EC
0x00314C:
    if !(bool (keyboard_check_pressed[]:int32 (var 71s))) goto 0x003170
0x003164:
    global.gold = 5000s
0x003170:
    if !(bool (keyboard_check_pressed[]:int32 (var 66s))) goto 0x0031AC
0x003188:
    push -5s
    stog.flag[(+ 437s:flag 1s)] = 437s
0x0031AC:
    if !(bool (keyboard_check_pressed[]:int32 (var 76s))) goto 0x0031EC
0x0031C4:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 313s))
0x0031EC:
    exit
