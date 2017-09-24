0x000000:
    push -5s
    if !(== 276s:flag 0s) goto 0x000034
0x00001C:
    stog.itemcost[3s] = 1000s
    goto 0x0003FC
0x000034:
    if !(== self.gm 0s) goto 0x00005C
0x000048:
    stog.itemcost[3s] = 9999s
0x00005C:
    if !(== self.gm 1s) goto 0x000084
0x000070:
    stog.itemcost[3s] = 9000s
0x000084:
    if !(== self.gm 2s) goto 0x0000AC
0x000098:
    stog.itemcost[3s] = 8000s
0x0000AC:
    if !(== self.gm 3s) goto 0x0000D4
0x0000C0:
    stog.itemcost[3s] = 7000s
0x0000D4:
    if !(== self.gm 4s) goto 0x0000FC
0x0000E8:
    stog.itemcost[3s] = 6000s
0x0000FC:
    if !(== self.gm 5s) goto 0x000124
0x000110:
    stog.itemcost[3s] = 5000s
0x000124:
    if !(== self.gm 6s) goto 0x00014C
0x000138:
    stog.itemcost[3s] = 4500s
0x00014C:
    if !(== self.gm 7s) goto 0x000174
0x000160:
    stog.itemcost[3s] = 4000s
0x000174:
    if !(== self.gm 8s) goto 0x00019C
0x000188:
    stog.itemcost[3s] = 3500s
0x00019C:
    if !(== self.gm 9s) goto 0x0001C4
0x0001B0:
    stog.itemcost[3s] = 3000s
0x0001C4:
    if !(== self.gm 10s) goto 0x0001EC
0x0001D8:
    stog.itemcost[3s] = 2800s
0x0001EC:
    if !(== self.gm 11s) goto 0x000214
0x000200:
    stog.itemcost[3s] = 2600s
0x000214:
    if !(== self.gm 12s) goto 0x00023C
0x000228:
    stog.itemcost[3s] = 2400s
0x00023C:
    if !(== self.gm 13s) goto 0x000264
0x000250:
    stog.itemcost[3s] = 2200s
0x000264:
    if !(== self.gm 14s) goto 0x00028C
0x000278:
    stog.itemcost[3s] = 2000s
0x00028C:
    if !(== self.gm 15s) goto 0x0002B4
0x0002A0:
    stog.itemcost[3s] = 1800s
0x0002B4:
    if !(== self.gm 16s) goto 0x0002DC
0x0002C8:
    stog.itemcost[3s] = 1600s
0x0002DC:
    if !(== self.gm 17s) goto 0x000304
0x0002F0:
    stog.itemcost[3s] = 1400s
0x000304:
    if !(== self.gm 18s) goto 0x00032C
0x000318:
    stog.itemcost[3s] = 1250s
0x00032C:
    if !(== self.gm 19s) goto 0x000354
0x000340:
    stog.itemcost[3s] = 1100s
0x000354:
    if !(>= self.gm 20s) goto 0x00037C
0x000368:
    stog.itemcost[3s] = 1000s
0x00037C:
    if !(>= self.gm 25s) goto 0x0003A4
0x000390:
    stog.itemcost[3s] = 750s
0x0003A4:
    if !(>= self.gm 30s) goto 0x0003CC
0x0003B8:
    stog.itemcost[4s] = 500s
0x0003CC:
    push -1s
    if !(< 3s:itemcost 500s) goto 0x0003FC
0x0003E8:
    stog.itemcost[3s] = 500s
0x0003FC:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 240s) (var 320s) (var 120s) (var 0s))
    if (== self.menu 1s) goto 0x000470
0x00045C:
    push (== self.menu 2s)
    goto 0x000474
0x000470:
    push 1s
0x000474:
    if !pop goto 0x000818
0x000478:
    call (draw_rectangle[]:int32 (var 0s) self.minimenuy (var 320s) (var 120s) (var 210s))
    call (draw_set_color[]:int32 (var 0s))
    if !(< self.minimenuy 116s) goto 0x000510
0x0004D4:
    call (draw_rectangle[]:int32 (var 0s) (+ self.minimenuy 4s) (var 316s) (var 120s) (var 214s))
0x000510:
    call (draw_set_color[]:int32 (var 16777215))
    self.wcheck = (string[]:int32 (- 2s global.wstrength))
    self.acheck = (string[]:int32 (- 5s global.adef))
    self.wchecks = " "
    if !(<= global.wstrength 2s) goto 0x00059C
0x00058C:
    self.wchecks = "+"
0x00059C:
    if !(> global.wstrength 2s) goto 0x0005C0
0x0005B0:
    self.wchecks = "-"
0x0005C0:
    self.achecks = " "
    if !(<= global.adef 5s) goto 0x0005F4
0x0005E4:
    self.achecks = "+"
0x0005F4:
    if !(> global.adef 5s) goto 0x000618
0x000608:
    self.achecks = "-"
0x000618:
    push -1s
    if !(== 1s:menuc 0s) goto 0x000664
0x000634:
    call (draw_text[]:int32 (var "Heals 2HP#food of#tem") (+ self.minimenuy 14s) (var 224s))
0x000664:
    push -1s
    if !(== 1s:menuc 1s) goto 0x0006B0
0x000680:
    call (draw_text[]:int32 (var "Heals 2HP#DISCOUNT#FOOD OF#TEM!!!") (+ self.minimenuy 14s) (var 224s))
0x0006B0:
    push -1s
    if !(== 1s:menuc 2s) goto 0x0006FC
0x0006CC:
    call (draw_text[]:int32 (var "Heals 2HP#food of#tem#(expensiv)") (+ self.minimenuy 14s) (var 224s))
0x0006FC:
    if !(== self.murder 0s) goto 0x0007CC
0x000710:
    push -5s
    if !(== 276s:flag 0s) goto 0x00077C
0x00072C:
    push -1s
    if !(== 1s:menuc 3s) goto 0x000778
0x000748:
    call (draw_text[]:int32 (var "COLLEGE#tem pursu#higher#education") (+ self.minimenuy 14s) (var 224s))
0x000778:
    goto 0x0007C8
0x00077C:
    push -1s
    if !(== 1s:menuc 3s) goto 0x0007C8
0x000798:
    call (draw_text[]:int32 (var "ARMOR 20DF#makes#battles#too easy") (+ self.minimenuy 14s) (var 224s))
0x0007C8:
    goto 0x000818
0x0007CC:
    push -1s
    if !(== 1s:menuc 3s) goto 0x000818
0x0007E8:
    call (draw_text[]:int32 (var "Heals 2HP#food of#tem#(qualite)") (+ self.minimenuy 14s) (var 224s))
0x000818:
    if !(< self.menu 4s) goto 0x0008AC
0x00082C:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 210s) (var 124s) (var 4s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 214s))
    goto 0x0008F4
0x0008AC:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 4s))
0x0008F4:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.menu 0s) goto 0x000D70
0x000920:
    self.specialsell = 0s
    self.joytimer = 0s
    self.thanks = 0s
    stog.sold[0s] = 0s
    stog.sold[1s] = 0s
    stog.sold[2s] = 0s
    stog.sold[3s] = 0s
    stog.sold[4s] = 0s
    stog.sold[5s] = 0s
    stog.sold[6s] = 0s
    stog.sold[7s] = 0s
    self.sell = 0s
    self.selling = 0s
    self.sidemessage = 0s
    stog.menuc[1s] = 0s
    stog.menuc[2s] = 0s
    stog.menuc[3s] = 0s
    stog.menuc[4s] = 0s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000B00
0x000A74:
    stog.msg[0s] = "\\E0* hOI^1!&* welcom to..^1.&* da TEM SHOP!!!/*"
    if !(bool 0s) goto 0x000AB4
0x000A98:
    push -5s
    push (== 69s:flag 0s)
    goto 0x000AB8
0x000AB4:
    push 0s
0x000AB8:
    self.mainmessage = pop
    stog.msg[0s] = "\\E0* hOI^1!&* welcom to..^1.&* da TEM SHOP!!!/*"
    call (instance_create[]:int32 (var 782s) (var 110s) (var 0s))
    goto 0x000B64
0x000B00:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x000B64
0x000B18:
    pushenv 782s 0x000B60
0x000B20:
    if !(== self.halt 0s) goto 0x000B4C
0x000B34:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x000B4C:
    call (keyboard_clear[]:int32 (var 16s))
0x000B60:
    popenv 0x000B20
0x000B64:
    self.menumax = 3s
    call (draw_text[]:int32 (var "Buy") (var 130s) (var 240s))
    call (draw_text[]:int32 (var "Sell") (var 150s) (var 240s))
    call (draw_text[]:int32 (var "Talk") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "Exit") (var 190s) (var 240s))
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 0s:menuc 20s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000D70
0x000C6C:
    [OBJ_WRITER].dfy = 1s
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 0s:menuc 0s) goto 0x000CB4
0x000CA8:
    self.menu = 1s
0x000CB4:
    push -1s
    if !(== 0s:menuc 1s) goto 0x000D14
0x000CD0:
    push -5s
    if !(!= 0s:item 0s) goto 0x000CFC
0x000CEC:
    self.menu = 5s
    goto 0x000D14
0x000CFC:
    self.menu = 4s
    self.sell = 1s
0x000D14:
    push -1s
    if !(== 0s:menuc 2s) goto 0x000D3C
0x000D30:
    self.menu = 3s
0x000D3C:
    push -1s
    if !(== 0s:menuc 3s) goto 0x000D70
0x000D58:
    self.sell = 2s
    self.menu = 4s
0x000D70:
    if (== self.menu 1s) goto 0x000D98
0x000D84:
    push (== self.menu 2s)
    goto 0x000D9C
0x000D98:
    push 1s
0x000D9C:
    if !pop goto 0x001658
0x000DA0:
    call (draw_text[]:int32 (var " 3G - tem flake") (var 130s) (var 30s))
    call (draw_text[]:int32 (var " 1G - tem flake (ON SALE,)") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "20G - tem flake (expensiv)") (var 170s) (var 30s))
    if !(== self.murder 0s) goto 0x000EB8
0x000E2C:
    push -5s
    if !(!= 276s:flag 1s) goto 0x000E74
0x000E48:
    call (draw_text[]:int32 (var "1000G - tem pay 4 colleg") (var 190s) (var 30s))
    goto 0x000EB4
0x000E74:
    push -1s
    call (draw_text[]:int32 (+ (string[]:int32 3s:itemcost) "G - temy ARMOR!!!") (var 190s) (var 30s))
0x000EB4:
    goto 0x000EE0
0x000EB8:
    call (draw_text[]:int32 (var "1000G - tem flake (premiem)") (var 190s) (var 30s))
0x000EE0:
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== self.menu 1s) goto 0x001154
0x000F1C:
    self.menumax = 4s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x001044
0x000F44:
    if !(== self.sidemessage 0s) goto 0x000F70
0x000F58:
    stog.msg[0s] = "\\E0hOI^1!&welcome&to..^1.&TEM SHOP!/*"
0x000F70:
    if !(== self.sidemessage 1s) goto 0x000F9C
0x000F84:
    stog.msg[0s] = "\\E6thanks&PURCHASE!/*"
0x000F9C:
    if !(== self.sidemessage 2s) goto 0x000FC8
0x000FB0:
    stog.msg[0s] = "\\E0fdshfg/*"
0x000FC8:
    if !(== self.sidemessage 3s) goto 0x000FF4
0x000FDC:
    stog.msg[0s] = "\\E2you don&hav da&muns,/*"
0x000FF4:
    if !(== self.sidemessage 4s) goto 0x001020
0x001008:
    stog.msg[0s] = "\\E1WAO!!^1!&bag..^1.&FULLS!/*"
0x001020:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
0x001044:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 1s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0010E8
0x0010A0:
    self.menu = 2s
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(== 1s:menuc self.menumax) goto 0x0010E4
0x0010D8:
    self.menu = 0s
0x0010E4:
    goto 0x001118
0x0010E8:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x001118
0x001100:
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x001118:
    if !(== self.menu 2s) goto 0x001140
0x00112C:
    call (keyboard_clear[]:int32 (var 13s))
0x001140:
    stog.menuc[2s] = 0s
0x001154:
    if !(== self.menu 2s) goto 0x00155C
0x001168:
    self.menumax = 1s
    global.faceemotion = 3s
    call (draw_text[]:int32 (var "Buy for") (var 130s) (var 230s))
    call (draw_text[]:int32 (+ (string[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost) "G ?") (var 145s) (var 230s))
    call (draw_text[]:int32 (var "Yaya") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "NO!!!") (var 185s) (var 240s))
    push 175s
    call (draw_sprite[]:int32 (+ -1s (* 2s:menuc 15s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0012D4
0x0012A4:
    self.menu = 1s
    call (keyboard_clear[]:int32 (var 16s))
    self.sidemessage = 2s
    goto 0x00155C
0x0012D4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x00155C
0x0012EC:
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 2s:menuc 0s) goto 0x001508
0x00131C:
    call (scr_cost[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    push -5s
    if !(== 276s:flag 0s) goto 0x0013A8
0x001364:
    push -1s
    if !(== 1s:menuc 3s) goto 0x0013A8
0x001380:
    if !(== self.afford 1s) goto 0x0013A8
0x001394:
    push (== self.murder 0s)
    goto 0x0013AC
0x0013A8:
    push 0s
0x0013AC:
    if !pop goto 0x001428
0x0013B0:
    global.gold = (- global.gold 1000s)
    if !(< global.gold 0s) goto 0x0013E8
0x0013DC:
    global.gold = 0s
0x0013E8:
    self.colleg = 1s
    self.menu = 4s
    self.sell = 10s
    pushenv 782s 0x001420
0x001414:
    call (instance_destroy[]:int32 )
0x001420:
    popenv 0x001414
0x001424:
    goto 0x001508
0x001428:
    if !(== self.afford 1s) goto 0x0014FC
0x00143C:
    call (script_execute[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):item (var 84s))
    if !(== self.noroom 0s) goto 0x0014D8
0x001484:
    global.gold = (- global.gold (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    self.sidemessage = 1s
    call (snd_play[]:int32 (var 113s))
0x0014D8:
    if !(== self.noroom 1s) goto 0x0014F8
0x0014EC:
    self.sidemessage = 4s
0x0014F8:
    goto 0x001508
0x0014FC:
    self.sidemessage = 3s
0x001508:
    push -1s
    if !(== 2s:menuc 1s) goto 0x001530
0x001524:
    self.sidemessage = 2s
0x001530:
    if !(== self.colleg 0s) goto 0x001550
0x001544:
    self.menu = 1s
0x001550:
    self.colleg = 0s
0x00155C:
    push -1s
    if !(!= 1s:menuc 4s) goto 0x00162C
0x001578:
    if !(> self.minimenuy 40s) goto 0x0015A4
0x00158C:
    self.minimenuy = (- self.minimenuy 3s)
0x0015A4:
    if !(> self.minimenuy 55s) goto 0x0015D0
0x0015B8:
    self.minimenuy = (- self.minimenuy 2s)
0x0015D0:
    if !(> self.minimenuy 80s) goto 0x0015FC
0x0015E4:
    self.minimenuy = (- self.minimenuy 4s)
0x0015FC:
    if !(> self.minimenuy 100s) goto 0x001628
0x001610:
    self.minimenuy = (- self.minimenuy 5s)
0x001628:
    goto 0x001658
0x00162C:
    if !(< self.minimenuy 120s) goto 0x001658
0x001640:
    self.minimenuy = (+ self.minimenuy 20s)
0x001658:
    if !(== self.menu 3s) goto 0x001918
0x00166C:
    self.menumax = 4s
    call (draw_text[]:int32 (var "Say Hello") (var 130s) (var 30s))
    push -5s
    if !(== 276s:flag 0s) goto 0x0016E4
0x0016BC:
    call (draw_text[]:int32 (var "About Yourself") (var 150s) (var 30s))
0x0016E4:
    push -5s
    if !(== 276s:flag 1s) goto 0x001728
0x001700:
    call (draw_text[]:int32 (var "About Temmie Armor") (var 150s) (var 30s))
0x001728:
    call (draw_text[]:int32 (var "Temmie History") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "About Shop") (var 190s) (var 30s))
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0017F8
0x0017BC:
    stog.msg[0s] = "\\E0HOI!!^1!&im temmie/*"
    call (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
0x0017F8:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 3s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0018D4
0x001854:
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(< 3s:menuc self.menumax) goto 0x0018C4
0x001880:
    push -1s
    self.sell = (+ 3s:menuc 3s)
    call (keyboard_clear[]:int32 (var 13s))
    self.menu = 4s
    goto 0x0018D0
0x0018C4:
    self.menu = 0s
0x0018D0:
    goto 0x001918
0x0018D4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x001918
0x0018EC:
    call (keyboard_clear[]:int32 (var 16s))
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x001918:
    if !(< self.menu 4s) goto 0x0019A8
0x00192C:
    call (draw_text[]:int32 (+ (string[]:int32 global.gold) "G") (var 210s) (var 230s))
    call (scr_itemroom[]:int32 )
    call (draw_text[]:int32 (+ (string[]:int32 self.itemhold) "/8") (var 210s) (var 280s))
0x0019A8:
    if !(== self.menu 4s) goto 0x002440
0x0019BC:
    if !(== self.sell 0s) goto 0x0019DC
0x0019D0:
    self.menu = 0s
0x0019DC:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x001A0C
0x0019F8:
    push (== self.selling 0s)
    goto 0x001A10
0x001A0C:
    push 0s
0x001A10:
    if !pop goto 0x001EA4
0x001A14:
    if !(== self.sell 1s) goto 0x001A40
0x001A28:
    stog.msg[0s] = "\\E2* no more item.../%%"
0x001A40:
    if !(== self.sell 2s) goto 0x001A6C
0x001A54:
    stog.msg[0s] = "\\E0* bOI!!/%%"
0x001A6C:
    if !(== self.sell 3s) goto 0x001AB0
0x001A80:
    stog.msg[0s] = "\\E0* hOI!!!/"
    stog.msg[1s] = "* i'm temmie/%%"
0x001AB0:
    if !(== self.sell 4s) goto 0x001BFC
0x001AC4:
    stog.msg[0s] = "\\E0* hOI!!!/"
    stog.msg[1s] = "* i'm temmie/%%"
    push -5s
    if !(== 276s:flag 1s) goto 0x001BFC
0x001B10:
    stog.msg[0s] = "\\E1* tem armor so GOOds^1!&* any battle becom^1!&* a EASY victories!!!/"
    stog.msg[1s] = "\\E4* but^1, hnnn^1, tem think..^1.&* if u use armors^1, battles woudn b&  a challenge anymores,/"
    stog.msg[2s] = "\\E3* but tem..^1.&* have a solushun!/"
    stog.msg[3s] = "\\W* \\E6tem wil offer..^1.\\Y &* a SKOLARSHIPS\\W!/"
    stog.msg[4s] = "\\W*\\E3 if u \\Ylose a lot of battles^1, \\W &  tem wil \\YLOWER THE PRICE\\W!/"
    stog.msg[5s] = "\\E3* so if you get to TOUGH BATLE&  and feel FRUSTRATE^1, can buy&  TEM armor as last resort!/"
    stog.msg[6s] = "\\E5* but tem armor so goods^1,&* promise to only buy if you&  really needs it^1,/%%"
    if !(> self.gm 18s) goto 0x001BFC
0x001BCC:
    stog.msg[5s] = "\\E1* in fack..^1.&* PRICE MAY ALREADY BE LOWERS!!!&* WOA!!!!/"
    stog.msg[6s] = "\\E6* Congra-tem-lations!!!/%%"
0x001BFC:
    if !(== self.sell 5s) goto 0x001C5C
0x001C10:
    stog.msg[0s] = "\\E0* us tems hav a DEEP HISTORY!!!/%%"
    push -5s
    if !(== 276s:flag 1s) goto 0x001C5C
0x001C44:
    stog.msg[0s] = "\\E0* yaYA!!^1!&* tem got degree in TEM STUDIES^1!&* tem can tell you all about&  tem's DEEP HISTORY!!!/%%"
0x001C5C:
    if !(== self.sell 6s) goto 0x001C88
0x001C70:
    stog.msg[0s] = "\\E0* yaYA!!!&* go to TEM SHOP!!!/%%"
0x001C88:
    if !(== self.sell 7s) goto 0x001DD0
0x001C9C:
    stog.msg[0s] = "\\E1* WOA!!/"
    push "\\E2* u gota... "
    stog.msg[1s] = (+ (+ -5s (int32 self.sellpos):itemnameb) "s!!!/")
    push "\\E4* hnnn...^1.&* i gota have dat "
    stog.msg[2s] = (+ (+ -5s (int32 self.sellpos):itemnameb) "s..^1.&* but i gota pay for colleg,/")
    push -5s
    if !(== 276s:flag 1s) goto 0x001D90
0x001D50:
    push "\\E4* hnnn...^1.&* i gota have dat "
    stog.msg[2s] = (+ (+ -5s (int32 self.sellpos):itemnameb) "s..^1.&* but i gota pay for gradskool,/")
0x001D90:
    push "\\E5* hnnnn....!!^1!&* tem always wanna "
    stog.msg[3s] = (+ (+ -5s (int32 self.sellpos):itemnameb) "s...!/%%")
0x001DD0:
    if !(== self.sell 8s) goto 0x001E14
0x001DE4:
    stog.msg[0s] = "\\E2* b..^1 but.../"
    stog.msg[1s] = "\\E4* p!!!!!!!!!!!!/%%"
0x001E14:
    if !(== self.sell 9s) goto 0x001E74
0x001E28:
    stog.msg[0s] = "\\E3* You will regret this./%%"
    push -5s
    if !(== 276s:flag 1s) goto 0x001E74
0x001E5C:
    stog.msg[0s] = "\\E3* Is this a joke^1?&* Are you having a chuckle^1?&* Ha ha^1, very funny^1.&* I'm the one with a degree./%%"
0x001E74:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 10s))
    self.selling = 1s
0x001EA4:
    if !(== self.sell 10s) goto 0x0021CC
0x001EB8:
    if !(== self.c_con 0s) goto 0x001F68
0x001ECC:
    pushenv 782s 0x001EE0
0x001ED4:
    call (instance_destroy[]:int32 )
0x001EE0:
    popenv 0x001ED4
0x001EE4:
    self.selling = 9s
    stog.msg[0s] = "\\E1* WOA!!/"
    stog.msg[1s] = "\\E2* thas ALOT o muns..^1.&* can tem realy acepts.../"
    stog.msg[2s] = "\\E7* OKs!!!^1!&* tem go to colleg and make&  u prouds!!!/%%"
    call (instance_create[]:int32 (var 782s) (var 110s) (var 10s))
    self.c_con = 1s
0x001F68:
    if !(== self.c_con 1s) goto 0x001F98
0x001F7C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001F9C
0x001F98:
    push 0s
0x001F9C:
    if !pop goto 0x002008
0x001FA0:
    pushenv 782s 0x001FB4
0x001FA8:
    call (instance_destroy[]:int32 )
0x001FB4:
    popenv 0x001FA8
0x001FB8:
    push -5s
    if !(== 7s:flag 0s) goto 0x001FE8
0x001FD4:
    call (caster_pause[]:int32 self.shopmus)
0x001FE8:
    self.c_con = 2s
    stog.alarm[4s] = 120s
0x002008:
    if !(== self.c_con 2s) goto 0x00204C
0x00201C:
    [obj_shop5_body].bodyx = (+ 1403.bodyx 3s)
    [obj_shop5_body].boxx = (+ 1403.boxx 3s)
0x00204C:
    if !(== self.c_con 3s) goto 0x002094
0x002060:
    self.c_con = 4s
    stog.alarm[4s] = 120s
    stog.flag[276s] = 1s
0x002094:
    if !(== self.c_con 4s) goto 0x0020D8
0x0020A8:
    [obj_shop5_body].bodyx = (- 1403.bodyx 3s)
    [obj_shop5_body].boxx = (- 1403.boxx 3s)
0x0020D8:
    if !(== self.c_con 5s) goto 0x00217C
0x0020EC:
    push -5s
    if !(== 7s:flag 0s) goto 0x00211C
0x002108:
    call (caster_resume[]:int32 self.shopmus)
0x00211C:
    stog.msg[0s] = "* tem bak from cool leg,/"
    stog.msg[1s] = "\\E0* tem learn MANY THINs^1,&* learn to sell new ITEM^1!&* yayA!!!/%%"
    call (instance_create[]:int32 (var 782s) (var 110s) (var 10s))
    self.c_con = 6s
0x00217C:
    if !(== self.c_con 6s) goto 0x0021AC
0x002190:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0021B0
0x0021AC:
    push 0s
0x0021B0:
    if !pop goto 0x0021CC
0x0021B4:
    self.selling = 1s
    self.c_con = -1s
0x0021CC:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x002248
0x0021E4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x002248
0x0021FC:
    pushenv 782s 0x002244
0x002204:
    if !(== self.halt 0s) goto 0x002230
0x002218:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x002230:
    call (keyboard_clear[]:int32 (var 16s))
0x002244:
    popenv 0x002204
0x002248:
    if !(== self.selling 1s) goto 0x002278
0x00225C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00227C
0x002278:
    push 0s
0x00227C:
    if !pop goto 0x002440
0x002280:
    if !(== self.sell 2s) goto 0x0022B8
0x002294:
    self.selling = 2s
    call (event_user[]:int32 (var 1s))
    goto 0x002440
0x0022B8:
    if (== self.sell 1s) goto 0x0022F4
0x0022CC:
    if (== self.sell 9s) goto 0x0022F4
0x0022E0:
    push (== self.sell 10s)
    goto 0x0022F8
0x0022F4:
    push 1s
0x0022F8:
    if !pop goto 0x00230C
0x0022FC:
    self.menu = 0s
    goto 0x002318
0x00230C:
    self.menu = 3s
0x002318:
    if !(== self.sell 7s) goto 0x002394
0x00232C:
    self.menu = 6s
    self.buffer = 4s
    push -1s
    stog.value[(int32 self.sellpos)] = (+ (int32 self.sellpos):value 1s)
    self.specialsell = 1s
    self.sellpos2 = 0s
0x002394:
    if !(== self.sell 8s) goto 0x002428
0x0023A8:
    self.menu = 6s
    self.buffer = 4s
    push -1s
    stog.value[(int32 self.sellpos)] = (+ (ceil[]:int32 (* (int32 self.sellpos):value 1.25d)) 1s)
    self.specialsell = 2s
    self.sellpos2 = 0s
0x002428:
    self.sell = 0s
    self.selling = 0s
0x002440:
    if !(== self.menu 5s) goto 0x00323C
0x002454:
    self.specialsell = 0s
    self.joytimer = (- self.joytimer 1s)
    if !(<= self.joytimer 0s) goto 0x002498
0x00248C:
    global.faceemotion = 0s
0x002498:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    stog.value[0s] = 1s
    stog.value[1s] = 1s
    stog.value[2s] = 1s
    stog.value[3s] = 1s
    stog.value[4s] = 1s
    stog.value[5s] = 1s
    stog.value[6s] = 1s
    stog.value[7s] = 1s
    call (scr_itemvalue[]:int32 )
    call (scr_itemnameb[]:int32 )
    stog.value[8s] = 0s
    stog.value[9s] = 0s
    stog.value[10s] = 0s
    self.i = 0s
    if !(< self.i 8s) goto 0x002798
0x0025D8:
    push "    "
    stog.s_value[(int32 self.i)] = (+ -1s (string[]:int32 (int32 self.i):value))
    push -1s
    if !(>= (int32 self.i):value 10s) goto 0x002664
0x002640:
    push -1s
    push (< (int32 self.i):value 100s)
    goto 0x002668
0x002664:
    push 0s
0x002668:
    if !pop goto 0x0026B0
0x00266C:
    push "  "
    stog.s_value[(int32 self.i)] = (+ -1s (string[]:int32 (int32 self.i):value))
0x0026B0:
    push -1s
    if !(>= (int32 self.i):value 100s) goto 0x0026F8
0x0026D4:
    push -1s
    push (< (int32 self.i):value 1000s)
    goto 0x0026FC
0x0026F8:
    push 0s
0x0026FC:
    if !pop goto 0x002738
0x002700:
    push -1s
    stog.s_value[(int32 self.i)] = (string[]:int32 (int32 self.i):value)
0x002738:
    push -1s
    if !(== (int32 self.i):value -1s) goto 0x00277C
0x00275C:
    stog.s_value[(int32 self.i)] = "NO!"
0x00277C:
    self.i = (+ self.i 1s)
    goto 0x0025C4
0x002798:
    self.odd = -1s
    if (== self.sellpos 0s) goto 0x0027F4
0x0027B8:
    if (== self.sellpos 2s) goto 0x0027F4
0x0027CC:
    if (== self.sellpos 4s) goto 0x0027F4
0x0027E0:
    push (== self.sellpos 6s)
    goto 0x0027F8
0x0027F4:
    push 1s
0x0027F8:
    if !pop goto 0x002850
0x0027FC:
    self.odd = 0s
    call (draw_sprite[]:int32 (+ 135s (* (/ self.sellpos (double 2s)) 20s)) (var 15s) (var 0s) (var 49s))
0x002850:
    if (== self.sellpos 1s) goto 0x0028A0
0x002864:
    if (== self.sellpos 3s) goto 0x0028A0
0x002878:
    if (== self.sellpos 5s) goto 0x0028A0
0x00288C:
    push (== self.sellpos 7s)
    goto 0x0028A4
0x0028A0:
    push 1s
0x0028A4:
    if !pop goto 0x002904
0x0028A8:
    self.odd = 1s
    call (draw_sprite[]:int32 (+ 135s (* (/ (- self.sellpos 1s) (double 2s)) 20s)) (var 155s) (var 0s) (var 49s))
0x002904:
    if !(== self.sellpos 8s) goto 0x002944
0x002918:
    call (draw_sprite[]:int32 (var 215s) (var 15s) (var 0s) (var 49s))
0x002944:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x002970
0x00295C:
    push (== self.odd 0s)
    goto 0x002974
0x002970:
    push 0s
0x002974:
    if !pop goto 0x0029BC
0x002978:
    push -1s
    if !(!= (int32 (+ self.sellpos 1s)):value 0s) goto 0x0029BC
0x0029A4:
    self.sellpos = (+ self.sellpos 1s)
0x0029BC:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x0029E8
0x0029D4:
    push (== self.odd 1s)
    goto 0x0029EC
0x0029E8:
    push 0s
0x0029EC:
    if !pop goto 0x002A08
0x0029F0:
    self.sellpos = (- self.sellpos 1s)
0x002A08:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x002B88
0x002A20:
    self.d_fail = 0s
    push -1s
    if !(== (int32 (+ self.sellpos 2s)):value 0s) goto 0x002A64
0x002A58:
    self.d_fail = 1s
0x002A64:
    if !(== self.d_fail 1s) goto 0x002AB8
0x002A78:
    if !(== self.odd 1s) goto 0x002AB8
0x002A8C:
    push -1s
    push (!= (int32 (+ self.sellpos 1s)):value 0s)
    goto 0x002ABC
0x002AB8:
    push 0s
0x002ABC:
    if !pop goto 0x002ACC
0x002AC0:
    self.d_fail = 2s
0x002ACC:
    if (== self.sellpos 6s) goto 0x002B08
0x002AE0:
    if (== self.sellpos 7s) goto 0x002B08
0x002AF4:
    push (== self.sellpos 8s)
    goto 0x002B0C
0x002B08:
    push 1s
0x002B0C:
    if !pop goto 0x002B1C
0x002B10:
    self.d_fail = 1s
0x002B1C:
    if !(== self.d_fail 1s) goto 0x002B40
0x002B30:
    self.sellpos = 8s
    goto 0x002B88
0x002B40:
    if !(== self.d_fail 2s) goto 0x002B70
0x002B54:
    self.sellpos = (+ self.sellpos 1s)
    goto 0x002B88
0x002B70:
    self.sellpos = (+ self.sellpos 2s)
0x002B88:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x002C84
0x002BA0:
    if !(!= self.sellpos 0s) goto 0x002BC8
0x002BB4:
    push (!= self.sellpos 1s)
    goto 0x002BCC
0x002BC8:
    push 0s
0x002BCC:
    if !pop goto 0x002C84
0x002BD0:
    if !(== self.sellpos 8s) goto 0x002C6C
0x002BE4:
    self.sellpos = 0s
    push -1s
    if !(!= 2s:value 0s) goto 0x002C18
0x002C0C:
    self.sellpos = 2s
0x002C18:
    push -1s
    if !(!= 4s:value 0s) goto 0x002C40
0x002C34:
    self.sellpos = 4s
0x002C40:
    push -1s
    if !(!= 6s:value 0s) goto 0x002C68
0x002C5C:
    self.sellpos = 6s
0x002C68:
    goto 0x002C84
0x002C6C:
    self.sellpos = (- self.sellpos 2s)
0x002C84:
    call (draw_set_color[]:int32 (var 16777215))
    self.i = 0s
    if !(< self.i 4s) goto 0x002FE8
0x002CBC:
    call (draw_set_color[]:int32 (var 16777215))
    push -1s
    if !(!= (int32 (* self.i 2s)):value 0s) goto 0x002D2C
0x002D00:
    push -1s
    push (== (int32 (* self.i 2s)):sold 0s)
    goto 0x002D30
0x002D2C:
    push 0s
0x002D30:
    if !pop goto 0x002DB4
0x002D34:
    push -1s
    push (+ (int32 (* self.i 2s)):s_value "G - ")
    call (draw_text[]:int32 (+ -5s (int32 (* self.i 2s)):itemnameb) (+ 130s (* self.i 20s)) (var 30s))
    goto 0x002E30
0x002DB4:
    push -1s
    if !(== (int32 (* self.i 2s)):sold 1s) goto 0x002E30
0x002DE0:
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text[]:int32 (var "(thanks PURCHASE)") (+ 130s (* self.i 20s)) (var 30s))
0x002E30:
    call (draw_set_color[]:int32 (var 16777215))
    push -1s
    if !(!= (int32 (+ (* self.i 2s) 1s)):value 0s) goto 0x002EB0
0x002E7C:
    push -1s
    push (== (int32 (+ (* self.i 2s) 1s)):sold 0s)
    goto 0x002EB4
0x002EB0:
    push 0s
0x002EB4:
    if !pop goto 0x002F48
0x002EB8:
    push -1s
    push (+ (int32 (+ (* self.i 2s) 1s)):s_value "G - ")
    call (draw_text[]:int32 (+ -5s (int32 (+ (* self.i 2s) 1s)):itemnameb) (+ 130s (* self.i 20s)) (var 170s))
    goto 0x002FCC
0x002F48:
    push -1s
    if !(== (int32 (+ (* self.i 2s) 1s)):sold 1s) goto 0x002FCC
0x002F7C:
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text[]:int32 (var "(thanks PURCHASE)") (+ 130s (* self.i 20s)) (var 170s))
0x002FCC:
    self.i = (+ self.i 1s)
    goto 0x002CA8
0x002FE8:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (+ (+ "(" (string[]:int32 global.gold)) " G)") (var 210s) (var 200s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x00320C
0x00309C:
    self.joytimer = 0s
    self.buffer = 3s
    if !(== self.sellpos 8s) goto 0x0030D8
0x0030C8:
    self.menu = 0s
    goto 0x00320C
0x0030D8:
    push -1s
    if !(> (int32 self.sellpos):value 0s) goto 0x0031F8
0x0030FC:
    self.sellqual = 0s
    push -5s
    if !(<= 265s:flag 1s) goto 0x003130
0x003124:
    self.sellqual = 1s
0x003130:
    push -5s
    if !(== 266s:flag 0s) goto 0x003170
0x00314C:
    push -5s
    push (== (int32 self.sellpos):item 22s)
    goto 0x003174
0x003170:
    push 0s
0x003174:
    if !pop goto 0x003198
0x003178:
    self.sellqual = 1s
    stog.flag[266s] = 1s
0x003198:
    if !(== self.sellqual 1s) goto 0x0031DC
0x0031AC:
    self.menu = 4s
    self.sell = 7s
    stog.flag[265s] = 9s
    goto 0x0031F4
0x0031DC:
    self.menu = 6s
    self.sellpos2 = 0s
0x0031F4:
    goto 0x00320C
0x0031F8:
    call (snd_play[]:int32 (var 64s))
0x00320C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x00323C
0x003224:
    self.menu = 0s
    self.sellpos = 0s
0x00323C:
    if !(== self.menu 6s) goto 0x003800
0x003250:
    global.faceemotion = 3s
    self.buffer = (- self.buffer 1s)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    if !(!= self.specialsell 2s) goto 0x00333C
0x0032B4:
    push "tem buy "
    push (+ (+ -5s (string[]:int32 (int32 self.sellpos):itemnameb)) " for... ")
    call (draw_text[]:int32 (+ (+ -1s (string[]:int32 (int32 self.sellpos):value)) "G!!!") (var 150s) (var 55s))
    goto 0x0033CC
0x00333C:
    global.faceemotion = 5s
    push "OK!! TEM BUY "
    push (+ (+ -5s (string[]:int32 (int32 self.sellpos):itemnameb)) " FOR ")
    call (draw_text[]:int32 (+ (+ -1s (string[]:int32 (int32 self.sellpos):value)) "G!!!") (var 150s) (var 55s))
0x0033CC:
    call (draw_text[]:int32 (var "yayA!") (var 180s) (var 80s))
    call (draw_text[]:int32 (var "NO!!!") (var 180s) (var 190s))
    call (draw_sprite[]:int32 (var 185s) (+ 65s (* self.sellpos2 110s)) (var 0s) (var 49s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (+ (+ "(" (string[]:int32 global.gold)) " G)") (var 210s) (var 200s))
    if (bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x0034E4
0x0034CC:
    push (bool (keyboard_check_pressed[]:int32 (var 39s)))
    goto 0x0034E8
0x0034E4:
    push 1s
0x0034E8:
    if !pop goto 0x00351C
0x0034EC:
    if !(== self.sellpos2 0s) goto 0x003510
0x003500:
    self.sellpos2 = 1s
    goto 0x00351C
0x003510:
    self.sellpos2 = 0s
0x00351C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x003548
0x003534:
    push (<= self.buffer 0s)
    goto 0x00354C
0x003548:
    push 0s
0x00354C:
    if !pop goto 0x003568
0x003550:
    self.buffer = 1s
    self.s_quit = 1s
0x003568:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x003594
0x003580:
    push (<= self.buffer 0s)
    goto 0x003598
0x003594:
    push 0s
0x003598:
    if !pop goto 0x003768
0x00359C:
    if !(== self.sellpos2 1s) goto 0x0035C0
0x0035B0:
    self.s_quit = 1s
    goto 0x003768
0x0035C0:
    push -5s
    if !(!= (int32 self.sellpos):item 22s) goto 0x003608
0x0035E4:
    push -5s
    stog.flag[(- 265s:flag 1s)] = 265s
0x003608:
    self.joytimer = 90s
    global.faceemotion = 6s
    call (snd_play[]:int32 (var 113s))
    push global.gold
    global.gold = (+ -1s (int32 self.sellpos):value)
    call (scr_itemshift[]:int32 (var 0s) self.sellpos)
    self.thanks = (+ self.thanks 1s)
    if !(> self.thanks 8s) goto 0x0036B4
0x0036A8:
    self.thanks = 8s
0x0036B4:
    stog.sold[(int32 (- 8s self.thanks))] = 1s
    push -5s
    if !(== (int32 self.sellpos):item 0s) goto 0x003710
0x0036FC:
    push (> self.sellpos 0s)
    goto 0x003714
0x003710:
    push 0s
0x003714:
    if !pop goto 0x003730
0x003718:
    self.sellpos = (- self.sellpos 1s)
0x003730:
    push -5s
    if !(!= 0s:item 0s) goto 0x00375C
0x00374C:
    self.menu = 5s
    goto 0x003768
0x00375C:
    self.menu = 0s
0x003768:
    if !(== self.s_quit 1s) goto 0x003800
0x00377C:
    self.s_quit = 0s
    self.menu = 5s
    if !(> self.specialsell 0s) goto 0x003800
0x0037A8:
    if !(== self.specialsell 1s) goto 0x0037D4
0x0037BC:
    self.menu = 4s
    self.sell = 8s
0x0037D4:
    if !(== self.specialsell 2s) goto 0x003800
0x0037E8:
    self.menu = 4s
    self.sell = 9s
0x003800:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x003888
0x003818:
    push -1s
    stog.menuc[(+ (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(> (int32 self.menu):menuc self.menumax) goto 0x003888
0x00386C:
    stog.menuc[(int32 self.menu)] = 0s
0x003888:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x003910
0x0038A0:
    push -1s
    stog.menuc[(- (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(< (int32 self.menu):menuc 0s) goto 0x003910
0x0038F0:
    stog.menuc[(int32 self.menu)] = self.menumax
0x003910:
    if !(== global.debug 1s) goto 0x003948
0x003924:
    if !(bool (keyboard_check_pressed[]:int32 (var 71s))) goto 0x003948
0x00393C:
    global.gold = 5000s
0x003948:
    exit
