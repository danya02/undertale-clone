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
    if !pop goto 0x00047C
0x00007C:
    call (draw_rectangle[]:int32 (var 0s) self.minimenuy (var 320s) (var 120s) (var 210s))
    call (draw_set_color[]:int32 (var 0s))
    if !(< self.minimenuy 116s) goto 0x000114
0x0000D8:
    call (draw_rectangle[]:int32 (var 0s) (+ self.minimenuy 4s) (var 316s) (var 120s) (var 214s))
0x000114:
    call (draw_set_color[]:int32 (var 16777215))
    self.wcheck = (string[]:int32 (- 12s global.wstrength))
    self.acheck = (string[]:int32 (- 12s global.adef))
    self.wchecks = " "
    if !(<= global.wstrength 12s) goto 0x0001A0
0x000190:
    self.wchecks = "+"
0x0001A0:
    if !(> global.wstrength 12s) goto 0x0001C4
0x0001B4:
    self.wchecks = " "
0x0001C4:
    self.achecks = " "
    if !(<= global.adef 12s) goto 0x0001F8
0x0001E8:
    self.achecks = "+"
0x0001F8:
    if !(> global.adef 12s) goto 0x00021C
0x00020C:
    self.achecks = " "
0x00021C:
    push -1s
    if !(== 1s:menuc 0s) goto 0x000268
0x000238:
    call (draw_text[]:int32 (var "Heals 17HP#Has a big#bite out of#it.") (+ self.minimenuy 14s) (var 224s))
0x000268:
    push -1s
    if !(== 1s:menuc 3s) goto 0x000304
0x000284:
    push -5s
    if !(== 444s:flag 0s) goto 0x0002D4
0x0002A0:
    call (draw_text[]:int32 (var "?????#Probably#to someone's#house LOL") (+ self.minimenuy 14s) (var 224s))
    goto 0x000304
0x0002D4:
    call (draw_text[]:int32 (var "SOLD OUT!") (+ self.minimenuy 14s) (var 224s))
0x000304:
    push -1s
    if !(== 1s:menuc 2s) goto 0x0003C0
0x000320:
    push -5s
    if !(== 443s:flag 0s) goto 0x000390
0x00033C:
    call (draw_text[]:int32 (+ (+ (+ "Armor: 12DF#(" self.achecks) self.acheck) " DF)#ATTACK up#when worn.") (+ self.minimenuy 14s) (var 224s))
    goto 0x0003C0
0x000390:
    call (draw_text[]:int32 (var "SOLD OUT!") (+ self.minimenuy 14s) (var 224s))
0x0003C0:
    push -1s
    if !(== 1s:menuc 1s) goto 0x00047C
0x0003DC:
    push -5s
    if !(== 442s:flag 0s) goto 0x00044C
0x0003F8:
    call (draw_text[]:int32 (+ (+ (+ "Weapon: 12AT#(" self.wchecks) self.wcheck) " AT)#Bullets NOT#included.") (+ self.minimenuy 14s) (var 224s))
    goto 0x00047C
0x00044C:
    call (draw_text[]:int32 (var "SOLD OUT!") (+ self.minimenuy 14s) (var 224s))
0x00047C:
    if !(< self.menu 4s) goto 0x000590
0x000490:
    call (draw_set_color[]:int32 (var 0s))
    if !(== self.menu 0s) goto 0x000524
0x0004B8:
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 104s) (var 124s) (var 4s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 210s) (var 124s) (var 108s))
    goto 0x000558
0x000524:
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 210s) (var 124s) (var 4s))
0x000558:
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 214s))
    goto 0x00060C
0x000590:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 156s) (var 124s) (var 4s))
    call (draw_rectangle[]:int32 (var 0s) (var 236s) (var 316s) (var 124s) (var 160s))
0x00060C:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.menu 0s) goto 0x000BD4
0x000638:
    self.sell = 0s
    self.selling = 0s
    self.sidemessage = 0s
    stog.menuc[1s] = 0s
    stog.menuc[2s] = 0s
    stog.menuc[3s] = 0s
    stog.menuc[4s] = 0s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0008A8
0x0006C8:
    stog.msg[0s] = "* Don't be shy now./*"
    if !(bool 0s) goto 0x000708
0x0006EC:
    push -5s
    push (== 69s:flag 0s)
    goto 0x00070C
0x000708:
    push 0s
0x00070C:
    self.mainmessage = pop
    stog.msg[0s] = "* Hey^1!&* Check it&  out!/*"
    if !(== self.murder 1s) goto 0x000758
0x000740:
    stog.msg[0s] = "* But^1, like./*"
0x000758:
    self.brattywriter = (instance_create[]:int32 (var 782s) (var 110s) (var -10s))
    push 13941759
    stog.mycolor* = (int32 self.brattywriter)
    stog.msg[0s] = "* Yeah!&* Check it&  out!/*"
    if !(== self.murder 1s) goto 0x0007E0
0x0007C8:
    stog.msg[0s] = "* Nobody&  came and&  stuff./*"
0x0007E0:
    self.cattywriter = (instance_create[]:int32 (var 782s) (var 110s) (var 93s))
    push 16759772
    stog.mycolor* = (int32 self.cattywriter)
    push 0s
    stog.face* = (int32 self.catty)
    push 0s
    stog.face* = (int32 self.bratty)
    push 0s
    stog.armexp* = (int32 self.catty)
    push 0s
    stog.armexp* = (int32 self.bratty)
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    goto 0x00090C
0x0008A8:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x00090C
0x0008C0:
    pushenv 782s 0x000908
0x0008C8:
    if !(== self.halt 0s) goto 0x0008F4
0x0008DC:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x0008F4:
    call (keyboard_clear[]:int32 (var 16s))
0x000908:
    popenv 0x0008C8
0x00090C:
    self.menumax = 3s
    if !(== self.murder 0s) goto 0x0009D0
0x00092C:
    call (draw_text[]:int32 (var "Buy") (var 130s) (var 240s))
    call (draw_text[]:int32 (var "Sell") (var 150s) (var 240s))
    call (draw_text[]:int32 (var "Talk") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "Exit") (var 190s) (var 240s))
    goto 0x000A70
0x0009D0:
    call (draw_text[]:int32 (var "Take") (var 130s) (var 240s))
    call (draw_text[]:int32 (var "Steal") (var 150s) (var 240s))
    call (draw_text[]:int32 (var "Read") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "Exit") (var 190s) (var 240s))
0x000A70:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 0s:menuc 20s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000BD4
0x000ACC:
    [OBJ_WRITER].dfy = 1s
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 0s:menuc 0s) goto 0x000B14
0x000B08:
    self.menu = 1s
0x000B14:
    push -1s
    if !(== 0s:menuc 1s) goto 0x000B48
0x000B30:
    self.sell = 1s
    self.menu = 4s
0x000B48:
    push -1s
    if !(== 0s:menuc 2s) goto 0x000BA0
0x000B64:
    if !(== self.murder 0s) goto 0x000B88
0x000B78:
    self.menu = 3s
    goto 0x000BA0
0x000B88:
    self.sell = 7s
    self.menu = 4s
0x000BA0:
    push -1s
    if !(== 0s:menuc 3s) goto 0x000BD4
0x000BBC:
    self.sell = 2s
    self.menu = 4s
0x000BD4:
    if (== self.menu 1s) goto 0x000BFC
0x000BE8:
    push (== self.menu 2s)
    goto 0x000C00
0x000BFC:
    push 1s
0x000C00:
    if !pop goto 0x0017A8
0x000C04:
    if !(== self.murder 0s) goto 0x000C40
0x000C18:
    call (draw_text[]:int32 (var " 25G - Junk Food") (var 130s) (var 30s))
0x000C40:
    if !(== self.murder 1s) goto 0x000C7C
0x000C54:
    call (draw_text[]:int32 (var " 00G - Junk Food") (var 130s) (var 30s))
0x000C7C:
    push -5s
    if !(== 442s:flag 0s) goto 0x000D04
0x000C98:
    if !(== self.murder 0s) goto 0x000CD8
0x000CAC:
    call (draw_text[]:int32 (var "350G - Empty Gun") (var 150s) (var 30s))
    goto 0x000D00
0x000CD8:
    call (draw_text[]:int32 (var "000G - Empty Gun") (var 150s) (var 30s))
0x000D00:
    goto 0x000D5C
0x000D04:
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text[]:int32 (var "--- SOLD OUT ---") (var 150s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x000D5C:
    push -5s
    if !(== 443s:flag 0s) goto 0x000DE4
0x000D78:
    if !(== self.murder 0s) goto 0x000DB8
0x000D8C:
    call (draw_text[]:int32 (var "350G - Cowboy Hat") (var 170s) (var 30s))
    goto 0x000DE0
0x000DB8:
    call (draw_text[]:int32 (var "000G - Cowboy Hat") (var 170s) (var 30s))
0x000DE0:
    goto 0x000E3C
0x000DE4:
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text[]:int32 (var "--- SOLD OUT ---") (var 170s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x000E3C:
    push -5s
    if !(== 444s:flag 0s) goto 0x000EC4
0x000E58:
    if !(== self.murder 0s) goto 0x000E98
0x000E6C:
    call (draw_text[]:int32 (var "600G - Mystery Key") (var 190s) (var 30s))
    goto 0x000EC0
0x000E98:
    call (draw_text[]:int32 (var "000G - Mystery Key") (var 190s) (var 30s))
0x000EC0:
    goto 0x000F1C
0x000EC4:
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text[]:int32 (var "--- SOLD OUT ---") (var 190s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x000F1C:
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== self.menu 1s) goto 0x001320
0x000F58:
    self.menumax = 4s
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0010FC
0x000F80:
    if !(== self.murder 0s) goto 0x0010A0
0x000F94:
    if !(== self.sidemessage 0s) goto 0x000FC0
0x000FA8:
    stog.msg[0s] = "\\E0You should&buy ALL&our stuff!/*"
0x000FC0:
    if !(== self.sidemessage 1s) goto 0x000FEC
0x000FD4:
    stog.msg[0s] = "\\E4Bratty!&We're&gonna&be rich!/*"
0x000FEC:
    if !(== self.sidemessage 2s) goto 0x001018
0x001000:
    stog.msg[0s] = "\\E0So are&you gonna&buy it??/*"
0x001018:
    if !(== self.sidemessage 3s) goto 0x001044
0x00102C:
    stog.msg[0s] = "\\E0You need&WAY more&money./*"
0x001044:
    if !(== self.sidemessage 4s) goto 0x001070
0x001058:
    stog.msg[0s] = "\\E0You have&TOO many&items!!!/*"
0x001070:
    if !(== self.sidemessage 5s) goto 0x00109C
0x001084:
    stog.msg[0s] = "\\E4We're all&$$$$$old&out!&Mee-YOW!/*"
0x00109C:
    goto 0x0010B8
0x0010A0:
    stog.msg[0s] = "/*"
0x0010B8:
    self.cattywriter = (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
    push 16759772
    stog.mycolor* = (int32 self.cattywriter)
0x0010FC:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 1s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0012B4
0x001158:
    self.soldout = 0s
    push -1s
    if !(== 1s:menuc 1s) goto 0x00119C
0x001180:
    push -5s
    push (== 442s:flag 1s)
    goto 0x0011A0
0x00119C:
    push 0s
0x0011A0:
    if !pop goto 0x0011B0
0x0011A4:
    self.soldout = 1s
0x0011B0:
    push -1s
    if !(== 1s:menuc 2s) goto 0x0011E8
0x0011CC:
    push -5s
    push (== 443s:flag 1s)
    goto 0x0011EC
0x0011E8:
    push 0s
0x0011EC:
    if !pop goto 0x0011FC
0x0011F0:
    self.soldout = 1s
0x0011FC:
    push -1s
    if !(== 1s:menuc 3s) goto 0x001234
0x001218:
    push -5s
    push (== 444s:flag 1s)
    goto 0x001238
0x001234:
    push 0s
0x001238:
    if !pop goto 0x001248
0x00123C:
    self.soldout = 1s
0x001248:
    if !(== self.soldout 0s) goto 0x00126C
0x00125C:
    self.menu = 2s
    goto 0x001278
0x00126C:
    self.sidemessage = 5s
0x001278:
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(== 1s:menuc self.menumax) goto 0x0012B0
0x0012A4:
    self.menu = 0s
0x0012B0:
    goto 0x0012E4
0x0012B4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0012E4
0x0012CC:
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x0012E4:
    if !(== self.menu 2s) goto 0x00130C
0x0012F8:
    call (keyboard_clear[]:int32 (var 13s))
0x00130C:
    stog.menuc[2s] = 0s
0x001320:
    if !(== self.menu 2s) goto 0x0016AC
0x001334:
    self.menumax = 1s
    call (draw_text[]:int32 (var "Buy it for") (var 130s) (var 230s))
    call (draw_text[]:int32 (+ (string[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost) "G ?") (var 145s) (var 230s))
    call (draw_text[]:int32 (var "Yes") (var 170s) (var 240s))
    call (draw_text[]:int32 (var "No") (var 185s) (var 240s))
    push 175s
    call (draw_sprite[]:int32 (+ -1s (* 2s:menuc 15s)) (var 225s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x001494
0x001464:
    self.menu = 1s
    call (keyboard_clear[]:int32 (var 16s))
    self.sidemessage = 2s
    goto 0x0016AC
0x001494:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0016AC
0x0014AC:
    call (keyboard_clear[]:int32 (var 13s))
    push -1s
    if !(== 2s:menuc 0s) goto 0x001678
0x0014DC:
    call (scr_cost[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    if !(== self.afford 1s) goto 0x00166C
0x00151C:
    call (script_execute[]:int32 (int32 1s:menuc[Altar.Decomp.Expression[]]):item (var 84s))
    if !(== self.noroom 0s) goto 0x001648
0x001564:
    global.gold = (- global.gold (int32 1s:menuc[Altar.Decomp.Expression[]]):itemcost)
    call (snd_play[]:int32 (var 113s))
    self.sidemessage = 1s
    push -1s
    if !(== 1s:menuc 1s) goto 0x0015E8
0x0015D4:
    stog.flag[442s] = 1s
0x0015E8:
    push -1s
    if !(== 1s:menuc 2s) goto 0x001618
0x001604:
    stog.flag[443s] = 1s
0x001618:
    push -1s
    if !(== 1s:menuc 3s) goto 0x001648
0x001634:
    stog.flag[444s] = 1s
0x001648:
    if !(== self.noroom 1s) goto 0x001668
0x00165C:
    self.sidemessage = 4s
0x001668:
    goto 0x001678
0x00166C:
    self.sidemessage = 3s
0x001678:
    push -1s
    if !(== 2s:menuc 1s) goto 0x0016A0
0x001694:
    self.sidemessage = 2s
0x0016A0:
    self.menu = 1s
0x0016AC:
    push -1s
    if !(!= 1s:menuc 4s) goto 0x00177C
0x0016C8:
    if !(> self.minimenuy 40s) goto 0x0016F4
0x0016DC:
    self.minimenuy = (- self.minimenuy 3s)
0x0016F4:
    if !(> self.minimenuy 55s) goto 0x001720
0x001708:
    self.minimenuy = (- self.minimenuy 2s)
0x001720:
    if !(> self.minimenuy 80s) goto 0x00174C
0x001734:
    self.minimenuy = (- self.minimenuy 4s)
0x00174C:
    if !(> self.minimenuy 100s) goto 0x001778
0x001760:
    self.minimenuy = (- self.minimenuy 5s)
0x001778:
    goto 0x0017A8
0x00177C:
    if !(< self.minimenuy 120s) goto 0x0017A8
0x001790:
    self.minimenuy = (+ self.minimenuy 20s)
0x0017A8:
    if !(== self.menu 3s) goto 0x0021B8
0x0017BC:
    self.menumax = 4s
    push -5s
    if !(!= 7s:flag 1s) goto 0x001EBC
0x0017E4:
    push -5s
    if !(< 437s:flag 2s) goto 0x001828
0x001800:
    call (draw_text[]:int32 (var "About you two") (var 130s) (var 30s))
0x001828:
    push -5s
    if !(== 437s:flag 2s) goto 0x00189C
0x001844:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Burgerpants (NEW)") (var 130s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x00189C:
    push -5s
    if !(== 437s:flag 4s) goto 0x001910
0x0018B8:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "More Burgerpants (NEW)") (var 130s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001910:
    push -5s
    if !(== 437s:flag 5s) goto 0x001954
0x00192C:
    call (draw_text[]:int32 (var "About you two") (var 130s) (var 30s))
0x001954:
    push -5s
    if !(== 437s:flag 6s) goto 0x0019C8
0x001970:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "B.Pants Hangout? (NEW)") (var 130s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x0019C8:
    push -5s
    if !(== 437s:flag 7s) goto 0x001A3C
0x0019E4:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "That Kind of Guy (NEW)") (var 130s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001A3C:
    push -5s
    if !(>= 437s:flag 8s) goto 0x001A80
0x001A58:
    call (draw_text[]:int32 (var "About you two") (var 130s) (var 30s))
0x001A80:
    push -5s
    if !(== 405s:flag 0s) goto 0x001AC4
0x001A9C:
    call (draw_text[]:int32 (var "About your wares") (var 150s) (var 30s))
0x001AC4:
    push -5s
    if !(== 405s:flag 1s) goto 0x001B38
0x001AE0:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Origin of wares (NEW)") (var 150s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001B38:
    push -5s
    if !(== 405s:flag 2s) goto 0x001BAC
0x001B54:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Origin of garbage (NEW)") (var 150s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001BAC:
    push -5s
    if !(== 405s:flag 3s) goto 0x001BF0
0x001BC8:
    call (draw_text[]:int32 (var "Origin of garbage") (var 150s) (var 30s))
0x001BF0:
    push -5s
    if !(== 406s:flag 0s) goto 0x001C34
0x001C0C:
    call (draw_text[]:int32 (var "About Mettaton") (var 170s) (var 30s))
0x001C34:
    push -5s
    if !(== 406s:flag 1s) goto 0x001CA8
0x001C50:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Origin of Mettaton (NEW)") (var 170s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001CA8:
    push -5s
    if !(== 406s:flag 2s) goto 0x001D1C
0x001CC4:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "About Mettaton (OLD???)") (var 170s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001D1C:
    push -5s
    if !(== 407s:flag 0s) goto 0x001D60
0x001D38:
    call (draw_text[]:int32 (var "About Alphys") (var 190s) (var 30s))
0x001D60:
    push -5s
    if !(== 407s:flag 1s) goto 0x001DD4
0x001D7C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Royal Scientist (NEW)") (var 190s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001DD4:
    push -5s
    if !(== 407s:flag 2s) goto 0x001E48
0x001DF0:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "About ASGORE (NEW)") (var 190s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001E48:
    push -5s
    if !(== 407s:flag 3s) goto 0x001EBC
0x001E64:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "About ASGORE") (var 190s) (var 30s))
    call (draw_set_color[]:int32 (var 16777215))
0x001EBC:
    push -5s
    if !(== 7s:flag 1s) goto 0x001F78
0x001ED8:
    call (draw_text[]:int32 (var "Freedom") (var 130s) (var 30s))
    call (draw_text[]:int32 (var "I'm a human") (var 150s) (var 30s))
    call (draw_text[]:int32 (var "Future") (var 170s) (var 30s))
    call (draw_text[]:int32 (var "Do You Like Cats") (var 190s) (var 30s))
0x001F78:
    call (draw_text[]:int32 (var "Exit") (var 210s) (var 30s))
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x002098
0x001FBC:
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    push 0s
    stog.face* = (int32 self.catty)
    push 0s
    stog.face* = (int32 self.bratty)
    push 0s
    stog.armexp* = (int32 self.catty)
    push 0s
    stog.armexp* = (int32 self.bratty)
    stog.msg[0s] = "So, like,&what's up?/*"
    self.brattywriter = (instance_create[]:int32 (var 782s) (var 110s) (var 210s))
    push 13941759
    stog.mycolor* = (int32 self.brattywriter)
0x002098:
    push 135s
    call (draw_sprite[]:int32 (+ -1s (* 3s:menuc 20s)) (var 15s) (var 0s) (var 49s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x002174
0x0020F4:
    [OBJ_WRITER].dfy = 1s
    push -1s
    if !(< 3s:menuc self.menumax) goto 0x002164
0x002120:
    push -1s
    self.sell = (+ 3s:menuc 3s)
    call (keyboard_clear[]:int32 (var 13s))
    self.menu = 4s
    goto 0x002170
0x002164:
    self.menu = 0s
0x002170:
    goto 0x0021B8
0x002174:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0021B8
0x00218C:
    call (keyboard_clear[]:int32 (var 16s))
    self.menu = 0s
    [OBJ_WRITER].dfy = 1s
0x0021B8:
    if !(< self.menu 4s) goto 0x002248
0x0021CC:
    call (draw_text[]:int32 (+ (string[]:int32 global.gold) "G") (var 210s) (var 230s))
    call (scr_itemroom[]:int32 )
    call (draw_text[]:int32 (+ (string[]:int32 self.itemhold) "/8") (var 210s) (var 280s))
0x002248:
    if !(== self.menu 4s) goto 0x007448
0x00225C:
    if !(== self.sell 0s) goto 0x00227C
0x002270:
    self.menu = 0s
0x00227C:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0022AC
0x002298:
    push (== self.selling 0s)
    goto 0x0022B0
0x0022AC:
    push 0s
0x0022B0:
    if !pop goto 0x0031A4
0x0022B4:
    if !(== self.sell 1s) goto 0x002430
0x0022C8:
    if !(== self.murder 0s) goto 0x00238C
0x0022DC:
    call (scr_itemcheck[]:int32 (var 40s))
    if !(== self.haveit 0s) goto 0x00233C
0x002304:
    stog.msg[0s] = "* Thanks^1, but we^1,&  like^1, don't&  really need&  anything./*"
    call (event_user[]:int32 (var 2s))
    self.con = 75s
0x00233C:
    if !(== self.haveit 1s) goto 0x002388
0x002350:
    self.con = 81s
    stog.msg[0s] = "\\M2* Oh my God^1.&* Is that a&  glamburger?/*"
    call (event_user[]:int32 (var 2s))
0x002388:
    goto 0x002430
0x00238C:
    push -5s
    if !(== 256s:flag 0s) goto 0x002404
0x0023A8:
    stog.flag[256s] = 1s
    global.gold = (+ global.gold 5s)
    stog.msg[0s] = "* Stole 5G&  from the&  till./%%"
    call (event_user[]:int32 (var 2s))
    goto 0x002430
0x002404:
    stog.msg[0s] = "* The till&  is empty./%%"
    call (event_user[]:int32 (var 2s))
0x002430:
    if !(== self.sell 2s) goto 0x00250C
0x002444:
    if !(== self.murder 0s) goto 0x0024B4
0x002458:
    stog.msg[0s] = "* Like^1, see&  you later!  /%%"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "* Like^1, later&  and stuff!/%%"
    call (event_user[]:int32 (var 3s))
    goto 0x00250C
0x0024B4:
    stog.msg[0s] = "* .../%%"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "* .../%%"
    call (event_user[]:int32 (var 3s))
0x00250C:
    if !(== self.sell 3s) goto 0x0028A4
0x002520:
    push -5s
    if !(!= 437s:flag 2s) goto 0x0025AC
0x00253C:
    push -5s
    if !(!= 437s:flag 4s) goto 0x0025AC
0x002558:
    push -5s
    if !(!= 437s:flag 6s) goto 0x0025AC
0x002574:
    push -5s
    if !(!= 437s:flag 7s) goto 0x0025AC
0x002590:
    push -5s
    push (!= 7s:flag 1s)
    goto 0x0025B0
0x0025AC:
    push 0s
0x0025B0:
    if !pop goto 0x00267C
0x0025B4:
    self.con = 4s
    stog.msg[0s] = "* I'm Bratty^1, and&  this is my&  best friend^1,&  Catty./%%"
    self.brattywriter = (instance_create[]:int32 (var 782s) (var 110s) (var -10s))
    push 13941759
    stog.mycolor* = (int32 self.brattywriter)
    stog.msg[0s] = "* I'm Catty^1, and&  this is my&  best friend^1,&  Bratty./%%"
    self.cattywriter = (instance_create[]:int32 (var 782s) (var 110s) (var 145s))
    push 16759772
    stog.mycolor* = (int32 self.cattywriter)
    goto 0x0028A4
0x00267C:
    push -5s
    if !(== 7s:flag 0s) goto 0x00286C
0x002698:
    push -5s
    if !(== 437s:flag 7s) goto 0x002730
0x0026B4:
    stog.flag[437s] = 8s
    stog.msg[0s] = "\\M3* Well^1, that kind&  of guy.../"
    stog.msg[1s] = "\\M5* You hang out&  with him once^1,&  then he wants&  to hang out.../"
    stog.msg[2s] = "\\M2* All^1.&* The^1.&* Time./%%"
    call (event_user[]:int32 (var 2s))
    self.con = 160s
0x002730:
    push -5s
    if !(== 437s:flag 6s) goto 0x002798
0x00274C:
    stog.flag[437s] = 7s
    stog.msg[0s] = "\\M5* Oh^1, uh.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 140s
0x002798:
    push -5s
    if !(== 437s:flag 4s) goto 0x002800
0x0027B4:
    stog.flag[437s] = 5s
    stog.msg[0s] = "\\M4* OK^1, like^1,&  the annoying&  thing is.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 120s
0x002800:
    push -5s
    if !(== 437s:flag 2s) goto 0x002868
0x00281C:
    stog.flag[437s] = 4s
    stog.msg[0s] = "\\M2* Oh^1, that guy&  from the&  store^1?&*\\M4 Yuck^1, what a&  creep./*"
    call (event_user[]:int32 (var 2s))
    self.con = 110s
0x002868:
    goto 0x0028A4
0x00286C:
    stog.msg[0s] = "\\M0* So^1, we're&  like^1,&  totally&  free now^1,&  huh?/*"
    call (event_user[]:int32 (var 2s))
    self.con = 170s
0x0028A4:
    if !(== self.sell 4s) goto 0x002B20
0x0028B8:
    push -5s
    if !(== 7s:flag 0s) goto 0x002AA0
0x0028D4:
    push -5s
    if (== 405s:flag 2s) goto 0x00290C
0x0028F0:
    push -5s
    push (== 405s:flag 3s)
    goto 0x002910
0x00290C:
    push 1s
0x002910:
    if !pop goto 0x002964
0x002914:
    stog.msg[0s] = "* Where do we&  get the&  garbage?/"
    stog.msg[1s] = "\\M4* Like^1, the&  garbage store^1,&  duh!!!/%%"
    call (event_user[]:int32 (var 2s))
    self.con = 22s
0x002964:
    push -5s
    if !(== 405s:flag 1s) goto 0x0029B8
0x002980:
    stog.msg[0s] = "* I mean^1, like^1,&  where does&  anyone get guns^1,&  or food^1, or.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 16s
0x0029B8:
    push -5s
    if !(== 405s:flag 0s) goto 0x002A0C
0x0029D4:
    self.con = 10s
    stog.msg[0s] = "* The stuff&  inside^1, is&  like.../*"
    call (event_user[]:int32 (var 2s))
0x002A0C:
    push -5s
    if !(== 405s:flag 2s) goto 0x002A3C
0x002A28:
    stog.flag[405s] = 3s
0x002A3C:
    push -5s
    if !(== 405s:flag 1s) goto 0x002A6C
0x002A58:
    stog.flag[405s] = 2s
0x002A6C:
    push -5s
    if !(== 405s:flag 0s) goto 0x002A9C
0x002A88:
    stog.flag[405s] = 1s
0x002A9C:
    goto 0x002B20
0x002AA0:
    stog.msg[0s] = "\\M2* Oh^1, oops^1,&  really?/"
    stog.msg[1s] = "\\M3* Uh^1, well^1,&  when we&  said^1, um.../"
    stog.msg[2s] = "* We were&  hyped for the&  destruction&  of humanity.../"
    stog.msg[3s] = "* We were^1,&  just^1, like^1,&  joking^1, you&  know?/%%"
    call (event_user[]:int32 (var 2s))
    self.con = 180s
0x002B20:
    if !(== self.sell 5s) goto 0x002D50
0x002B34:
    push -5s
    if !(== 7s:flag 0s) goto 0x002D18
0x002B50:
    push -5s
    if !(== 406s:flag 1s) goto 0x002BA4
0x002B6C:
    stog.msg[0s] = "* So^1, like^1,&  Dr. Alphys&  built Mettaton^1,&  right?/*"
    call (event_user[]:int32 (var 2s))
    self.con = 40s
0x002BA4:
    push -5s
    if (== 406s:flag 0s) goto 0x002BDC
0x002BC0:
    push -5s
    push (== 406s:flag 2s)
    goto 0x002BE0
0x002BDC:
    push 1s
0x002BE0:
    if !pop goto 0x002CB4
0x002BE4:
    stog.msg[0s] = "\\M6* Oh my God^1.&* Mettaton./"
    stog.msg[1s] = "\\M6* He's like..^1.&* My robot&  husband.          /"
    stog.msg[2s] = "\\M4* I think we're&  like..^1. both&  going to marry&  him./%%"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "\\E2* Oh my GOD^1,&* METTATON./"
    stog.msg[1s] = "\\E2* Actually he's&  like..^1.&* MY robot&  husband./"
    stog.msg[2s] = "* We're both&  like^1, ALREADY&  married to&  him.      /"
    stog.msg[3s] = "\\E6* He just^1, like^1,&  doesn't know&  it yet./%%"
    call (event_user[]:int32 (var 3s))
0x002CB4:
    push -5s
    if !(== 406s:flag 1s) goto 0x002CE4
0x002CD0:
    stog.flag[406s] = 2s
0x002CE4:
    push -5s
    if !(== 406s:flag 0s) goto 0x002D14
0x002D00:
    stog.flag[406s] = 1s
0x002D14:
    goto 0x002D50
0x002D18:
    stog.msg[0s] = "* Hmmm..^1.&* Now that&  we're&  gonna be&  free.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 190s
0x002D50:
    if !(== self.sell 6s) goto 0x0030E0
0x002D64:
    push -5s
    if !(== 7s:flag 0s) goto 0x00304C
0x002D80:
    push -5s
    if !(== 407s:flag 0s) goto 0x002E30
0x002D9C:
    stog.msg[0s] = "\\M5* Oh my God^1.&* Alphys./"
    stog.msg[1s] = "\\M0* She used to&  live on our&  street./%%"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "\\E7* Oh my god^1,&* ALPHYS./"
    stog.msg[1s] = "\\E0* She was like&  a big sister.      /%%"
    call (event_user[]:int32 (var 3s))
    self.con = 50s
0x002E30:
    push -5s
    if !(== 407s:flag 1s) goto 0x002E84
0x002E4C:
    stog.msg[0s] = "\\M0* So Alphys&  has always^1,&  like.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 60s
0x002E84:
    push -5s
    if (== 407s:flag 2s) goto 0x002EBC
0x002EA0:
    push -5s
    push (== 407s:flag 3s)
    goto 0x002EC0
0x002EBC:
    push 1s
0x002EC0:
    if !pop goto 0x002FB8
0x002EC4:
    stog.msg[0s] = "\\M4* Oh my God^1.&* He's a total&  goober./"
    stog.msg[1s] = "\\M0* Like^1, I LOVE&  that guy./"
    stog.msg[2s] = "\\M5* God^1, we're&  like.../"
    stog.msg[3s] = "\\M1* SO hyped for&  the destruction&  of humanity./%%"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "\\E0* He's a big^1,&  fuzzy&  goofball!!   /"
    stog.msg[1s] = "\\E0* He's like^1,&  SO nice.  /"
    stog.msg[2s] = "\\E7* God^1, we're&  like.../"
    stog.msg[3s] = "\\E1* SO hyped for&  the destruction&  of humanity./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 0s
0x002FB8:
    push -5s
    if !(== 407s:flag 2s) goto 0x002FE8
0x002FD4:
    stog.flag[407s] = 3s
0x002FE8:
    push -5s
    if !(== 407s:flag 1s) goto 0x003018
0x003004:
    stog.flag[407s] = 2s
0x003018:
    push -5s
    if !(== 407s:flag 0s) goto 0x003048
0x003034:
    stog.flag[407s] = 1s
0x003048:
    goto 0x0030E0
0x00304C:
    stog.msg[0s] = "\\M0* Me^1?&* Yeah^1, I&  LOVE cats!/"
    stog.msg[1s] = "\\M1* They're^1,&  like^1,&  SO tasty!!/%%"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "\\E8* Me^1?&* Yeah^1, I&  LOVE cats!/"
    stog.msg[1s] = "\\E1* They're^1,&  like^1,&  SO cute!!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 200s
0x0030E0:
    if !(== self.sell 7s) goto 0x003158
0x0030F4:
    stog.msg[0s] = "* Hey^1, this is&  Bratty!/*"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "* Hey^1, this is&  Catty! /%%"
    call (event_user[]:int32 (var 3s))
    self.con = 250s
0x003158:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x003198
0x003174:
    call (instance_create[]:int32 (var 782s) (var 110s) (var 10s))
0x003198:
    self.selling = 1s
0x0031A4:
    if !(== self.con 4s) goto 0x0031D4
0x0031B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0031D8
0x0031D4:
    push 0s
0x0031D8:
    if !pop goto 0x003258
0x0031DC:
    call (caster_pause[]:int32 self.shopmus)
    self.mew = (caster_load[]:int32 (var "music/myemeow.ogg"))
    self.selling = 4s
    self.con = 5s
    global.faceemotion = 7s
    stog.flag[20s] = 5s
    stog.alarm[4s] = 30s
0x003258:
    if !(== self.con 6s) goto 0x003288
0x00326C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00328C
0x003288:
    push 0s
0x00328C:
    if !pop goto 0x003310
0x003290:
    call (caster_play[]:int32 (var 0.9d) (var 0.5d) self.mew)
    self.selling = 4s
    self.con = 7s
    global.faceemotion = 1s
    stog.flag[20s] = 1s
    stog.alarm[4s] = 50s
0x003310:
    if !(== self.con 8s) goto 0x003364
0x003324:
    call (caster_free[]:int32 self.mew)
    self.selling = 1s
    self.con = 0s
    call (caster_resume[]:int32 self.shopmus)
0x003364:
    if !(== self.con 10s) goto 0x0033FC
0x003378:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x0033BC
0x00339C:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x0033C0
0x0033BC:
    push 0s
0x0033C0:
    if !pop goto 0x0033FC
0x0033C4:
    stog.msg[0s] = "\\E3* TOTALLY wicked&  expensive./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 11s
0x0033FC:
    if !(== self.con 11s) goto 0x003484
0x003410:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x003484
0x00342C:
    pushenv (int32 self.brattywriter) 0x003448
0x00343C:
    call (instance_destroy[]:int32 )
0x003448:
    popenv 0x00343C
0x00344C:
    stog.msg[0s] = "* But^1, like^1, this&  stuff we found&  is like.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 12s
0x003484:
    if !(== self.con 12s) goto 0x003510
0x003498:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x0034D0
0x0034B0:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x0034D4
0x0034D0:
    push 0s
0x0034D4:
    if !pop goto 0x003510
0x0034D8:
    stog.msg[0s] = "\\E3* TOTALLY wicked&  cheap./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 13s
0x003510:
    if !(== self.con 13s) goto 0x0035F4
0x003524:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0035F4
0x003540:
    pushenv (int32 self.brattywriter) 0x00355C
0x003550:
    call (instance_destroy[]:int32 )
0x00355C:
    popenv 0x003550
0x003560:
    stog.msg[0s] = "\\M5* You should.../"
    stog.msg[1s] = "\\M1* TOTALLY wicked&  buy all of&  it?/%%"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "\\E7* Like...      /"
    stog.msg[1s] = "\\E4* TOTALLY wicked&  buy all of&  it?/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 14s
0x0035F4:
    if !(== self.con 14s) goto 0x003624
0x003608:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003628
0x003624:
    push 0s
0x003628:
    if !pop goto 0x003644
0x00362C:
    self.selling = 1s
    self.con = 0s
0x003644:
    if !(== self.con 16s) goto 0x0036F0
0x003658:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x00369C
0x00367C:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x0036A0
0x00369C:
    push 0s
0x0036A0:
    if !pop goto 0x0036F0
0x0036A4:
    stog.flag[20s] = 2s
    stog.msg[0s] = "\\E1* We found it in&  the garbage!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 17s
0x0036F0:
    if !(== self.con 17s) goto 0x003720
0x003704:
    push (== (instance_exists[]:int32 self.cattywriter) 0s)
    goto 0x003724
0x003720:
    push 0s
0x003724:
    if !pop goto 0x00379C
0x003728:
    call (caster_pause[]:int32 self.shopmus)
    pushenv (int32 self.brattywriter) 0x003758
0x00374C:
    call (instance_destroy[]:int32 )
0x003758:
    popenv 0x00374C
0x00375C:
    global.faceemotion = 5s
    stog.flag[20s] = 5s
    self.con = 18s
    stog.alarm[4s] = 70s
0x00379C:
    if !(== self.con 19s) goto 0x003828
0x0037B0:
    call (caster_resume[]:int32 self.shopmus)
    stog.msg[0s] = "\\M3* It's GOOD&  garbage./*"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "\\E4* It's like^1,&  really good&  garbage./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 20s
0x003828:
    if !(== self.con 20s) goto 0x003890
0x00383C:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x003890
0x003858:
    pushenv (int32 self.brattywriter) 0x003874
0x003868:
    call (instance_destroy[]:int32 )
0x003874:
    popenv 0x003868
0x003878:
    self.con = 0s
    self.selling = 1s
0x003890:
    if !(== self.con 22s) goto 0x00396C
0x0038A4:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.brattywriter) 0s) goto 0x00396C
0x0038CC:
    stog.msg[0s] = "\\M5* ...../"
    stog.msg[1s] = "\\M1* Waterfall&  mostly.                  /%%"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "\\E7* ...../"
    stog.msg[1s] = "\\E1* I found a gun&  in a dumpster!/%%"
    call (event_user[]:int32 (var 3s))
    self.selling = 1s
    self.con = 0s
0x00396C:
    if !(== self.con 40s) goto 0x003A04
0x003980:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x0039C4
0x0039A4:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x0039C8
0x0039C4:
    push 0s
0x0039C8:
    if !pop goto 0x003A04
0x0039CC:
    stog.msg[0s] = "\\E6* That's like^1,&  what they&  TELL you./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 41s
0x003A04:
    if !(== self.con 41s) goto 0x003A8C
0x003A18:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x003A8C
0x003A34:
    pushenv (int32 self.brattywriter) 0x003A50
0x003A44:
    call (instance_destroy[]:int32 )
0x003A50:
    popenv 0x003A44
0x003A54:
    stog.msg[0s] = "\\M2* But like..^1.&* Mettaton always&  acts like.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 42s
0x003A8C:
    if !(== self.con 42s) goto 0x003B24
0x003AA0:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x003AE4
0x003AC4:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x003AE8
0x003AE4:
    push 0s
0x003AE8:
    if !pop goto 0x003B24
0x003AEC:
    stog.msg[0s] = "\\E5* ... being built&  was HIS&  idea somehow./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 43s
0x003B24:
    if !(== self.con 43s) goto 0x003BAC
0x003B38:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x003BAC
0x003B54:
    pushenv (int32 self.brattywriter) 0x003B70
0x003B64:
    call (instance_destroy[]:int32 )
0x003B70:
    popenv 0x003B64
0x003B74:
    stog.msg[0s] = "\\M5* And even right&  after he was&  built.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 44s
0x003BAC:
    if !(== self.con 44s) goto 0x003C44
0x003BC0:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x003C04
0x003BE4:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x003C08
0x003C04:
    push 0s
0x003C08:
    if !pop goto 0x003C44
0x003C0C:
    stog.msg[0s] = "\\E7* ... he acted&  like Alphys was&  an old friend./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 46s
0x003C44:
    if !(== self.con 46s) goto 0x003CCC
0x003C58:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x003CCC
0x003C74:
    pushenv (int32 self.brattywriter) 0x003C90
0x003C84:
    call (instance_destroy[]:int32 )
0x003C90:
    popenv 0x003C84
0x003C94:
    stog.msg[0s] = "\\M4* But they're&  like..^1.&* Not friends&  anymore./*"
    call (event_user[]:int32 (var 2s))
    self.con = 47s
0x003CCC:
    if !(== self.con 47s) goto 0x003D64
0x003CE0:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x003D24
0x003D04:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x003D28
0x003D24:
    push 0s
0x003D28:
    if !pop goto 0x003D64
0x003D2C:
    stog.msg[0s] = "\\E1* Yeah!!^1!&* Unlike me&  and Bratty!^1!&* Best friends&  for-EVER!!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 48s
0x003D64:
    if !(== self.con 48s) goto 0x003D94
0x003D78:
    push (== (instance_exists[]:int32 self.cattywriter) 0s)
    goto 0x003D98
0x003D94:
    push 0s
0x003D98:
    if !pop goto 0x003DD4
0x003D9C:
    pushenv (int32 self.brattywriter) 0x003DB8
0x003DAC:
    call (instance_destroy[]:int32 )
0x003DB8:
    popenv 0x003DAC
0x003DBC:
    self.con = 0s
    self.selling = 1s
0x003DD4:
    if !(== self.con 50s) goto 0x003E68
0x003DE8:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x003E68
0x003E10:
    pushenv (int32 self.brattywriter) 0x003E2C
0x003E20:
    call (instance_destroy[]:int32 )
0x003E2C:
    popenv 0x003E20
0x003E30:
    stog.msg[0s] = "\\M4* I mean^1, like^1,&  if your big&  sister.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 51s
0x003E68:
    if !(== self.con 51s) goto 0x003F00
0x003E7C:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x003EC0
0x003EA0:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x003EC4
0x003EC0:
    push 0s
0x003EC4:
    if !pop goto 0x003F00
0x003EC8:
    stog.msg[0s] = "\\E1* Takes you on&  trips to the&  dump./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 52s
0x003F00:
    if !(== self.con 52s) goto 0x003F94
0x003F14:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x003F94
0x003F3C:
    pushenv (int32 self.brattywriter) 0x003F58
0x003F4C:
    call (instance_destroy[]:int32 )
0x003F58:
    popenv 0x003F4C
0x003F5C:
    stog.msg[0s] = "\\M0* She showed us&  the coolest&  places to&  find trash./*"
    call (event_user[]:int32 (var 2s))
    self.con = 53s
0x003F94:
    if !(== self.con 53s) goto 0x004020
0x003FA8:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x003FE0
0x003FC0:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x003FE4
0x003FE0:
    push 0s
0x003FE4:
    if !pop goto 0x004020
0x003FE8:
    stog.msg[0s] = "\\E7* She was always&  collecting&  these weird&  cartoons./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 54s
0x004020:
    if !(== self.con 54s) goto 0x0040B4
0x004034:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0040B4
0x00405C:
    pushenv (int32 self.brattywriter) 0x004078
0x00406C:
    call (instance_destroy[]:int32 )
0x004078:
    popenv 0x00406C
0x00407C:
    stog.msg[0s] = "\\M5* Then she&  became the&  Royal&  Scientist.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 55s
0x0040B4:
    if !(== self.con 55s) goto 0x004140
0x0040C8:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004100
0x0040E0:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x004104
0x004100:
    push 0s
0x004104:
    if !pop goto 0x004140
0x004108:
    stog.msg[0s] = "\\E5* Yeah^1, we&  haven't seen&  her in&  forever.../%%"
    call (event_user[]:int32 (var 3s))
    self.con = 56s
0x004140:
    if !(== self.con 56s) goto 0x004170
0x004154:
    push (== (instance_exists[]:int32 self.cattywriter) 0s)
    goto 0x004174
0x004170:
    push 0s
0x004174:
    if !pop goto 0x0041B0
0x004178:
    pushenv (int32 self.brattywriter) 0x004194
0x004188:
    call (instance_destroy[]:int32 )
0x004194:
    popenv 0x004188
0x004198:
    self.selling = 1s
    self.con = 0s
0x0041B0:
    if !(== self.con 60s) goto 0x004248
0x0041C4:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004208
0x0041E8:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x00420C
0x004208:
    push 0s
0x00420C:
    if !pop goto 0x004248
0x004210:
    stog.msg[0s] = "\\E2* Thought ASGORE&  is a SUPER&  cutie./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 61s
0x004248:
    if !(== self.con 61s) goto 0x0042DC
0x00425C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0042DC
0x004284:
    pushenv (int32 self.brattywriter) 0x0042A0
0x004294:
    call (instance_destroy[]:int32 )
0x0042A0:
    popenv 0x004294
0x0042A4:
    stog.msg[0s] = "\\M4* So^1, like^1, I'm&  pretty sure&  she.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 62s
0x0042DC:
    if !(== self.con 62s) goto 0x004370
0x0042F0:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004328
0x004308:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x00432C
0x004328:
    push 0s
0x00432C:
    if !pop goto 0x004370
0x004330:
    stog.msg[0s] = "\\E0* Made Mettaton&  to^1, like^1,&  totally&  impress him./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 62.1d
0x004370:
    if !(== self.con 62.1d) goto 0x004414
0x00438C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x004414
0x0043B4:
    pushenv (int32 self.brattywriter) 0x0043D0
0x0043C4:
    call (instance_destroy[]:int32 )
0x0043D0:
    popenv 0x0043C4
0x0043D4:
    stog.msg[0s] = "\\M2* A robot with a&  SOUL.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 62.2d
0x004414:
    if !(== self.con 62.2d) goto 0x0044B0
0x004430:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004468
0x004448:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x00446C
0x004468:
    push 0s
0x00446C:
    if !pop goto 0x0044B0
0x004470:
    stog.msg[0s] = "\\E5* That's^1, like^1,&  SUPER relevant&  to his hobbies!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 62.3d
0x0044B0:
    if !(== self.con 62.3d) goto 0x004554
0x0044CC:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x004554
0x0044F4:
    pushenv (int32 self.brattywriter) 0x004510
0x004504:
    call (instance_destroy[]:int32 )
0x004510:
    popenv 0x004504
0x004514:
    stog.msg[0s] = "\\M0* So after seeing&  Mettaton^1,&  ASGORE.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 62.4d
0x004554:
    if !(== self.con 62.4d) goto 0x004600
0x004570:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x0045A8
0x004588:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x0045AC
0x0045A8:
    push 0s
0x0045AC:
    if !pop goto 0x004600
0x0045B0:
    stog.msg[0s] = "\\E0* Asked her to do&  all this science&  stuff for him!/"
    stog.msg[1s] = "\\E5* But nobody's^1,&  like^1, seen&  anything from&  her yet./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 65s
0x004600:
    if !(== self.con 65s) goto 0x0046EC
0x004614:
    if !(bool (instance_exists[]:int32 self.cattywriter)) goto 0x00466C
0x00462C:
    if !(== (int32 self.cattywriter):stringno 1s) goto 0x00466C
0x00464C:
    pushenv (int32 self.brattywriter) 0x004668
0x00465C:
    call (instance_destroy[]:int32 )
0x004668:
    popenv 0x00465C
0x00466C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0046EC
0x004694:
    pushenv (int32 self.brattywriter) 0x0046B0
0x0046A4:
    call (instance_destroy[]:int32 )
0x0046B0:
    popenv 0x0046A4
0x0046B4:
    stog.msg[0s] = "\\M2* Or...&  her at all.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 66s
0x0046EC:
    if !(== self.con 66s) goto 0x004778
0x004700:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004738
0x004718:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x00473C
0x004738:
    push 0s
0x00473C:
    if !pop goto 0x004778
0x004740:
    stog.msg[0s] = "\\E0* She must^1,&  like^1, just&  stay in her&  lab all day./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 67s
0x004778:
    if !(== self.con 67s) goto 0x00480C
0x00478C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x00480C
0x0047B4:
    pushenv (int32 self.brattywriter) 0x0047D0
0x0047C4:
    call (instance_destroy[]:int32 )
0x0047D0:
    popenv 0x0047C4
0x0047D4:
    stog.msg[0s] = "\\M4* Like^1, live&  a little^1,&  girl./*"
    call (event_user[]:int32 (var 2s))
    self.con = 68s
0x00480C:
    if !(== self.con 68s) goto 0x004898
0x004820:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004858
0x004838:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x00485C
0x004858:
    push 0s
0x00485C:
    if !pop goto 0x004898
0x004860:
    stog.msg[0s] = "\\E1* Yeah!!^1!&* Like us!!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 70s
0x004898:
    if !(== self.con 70s) goto 0x0048C8
0x0048AC:
    push (== (instance_exists[]:int32 self.cattywriter) 0s)
    goto 0x0048CC
0x0048C8:
    push 0s
0x0048CC:
    if !pop goto 0x004908
0x0048D0:
    pushenv (int32 self.brattywriter) 0x0048EC
0x0048E0:
    call (instance_destroy[]:int32 )
0x0048EC:
    popenv 0x0048E0
0x0048F0:
    self.con = 0s
    self.selling = 1s
0x004908:
    if !(== self.con 75s) goto 0x0049B4
0x00491C:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004960
0x004940:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x004964
0x004960:
    push 0s
0x004964:
    if !pop goto 0x0049B4
0x004968:
    stog.flag[20s] = 5s
    stog.msg[0s] = "\\E4* Oh my god^1,&  can you go&  get us some&  Glamburgers?/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 76s
0x0049B4:
    if !(== self.con 76s) goto 0x004A48
0x0049C8:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x004A48
0x0049F0:
    pushenv (int32 self.brattywriter) 0x004A0C
0x004A00:
    call (instance_destroy[]:int32 )
0x004A0C:
    popenv 0x004A00
0x004A10:
    stog.msg[0s] = "\\M0* We don't.&* Really need^1.&* Anything./*"
    call (event_user[]:int32 (var 2s))
    self.con = 77s
0x004A48:
    if !(== self.con 77s) goto 0x004AE0
0x004A5C:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004AA0
0x004A80:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x004AA4
0x004AA0:
    push 0s
0x004AA4:
    if !pop goto 0x004AE0
0x004AA8:
    stog.msg[0s] = "\\E2* Wait^1! I'll pay&  you 1000G if&  you get Mettaton&  to autograph&  my butt!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 78s
0x004AE0:
    if !(== self.con 78s) goto 0x004B10
0x004AF4:
    push (== (instance_exists[]:int32 self.cattywriter) 0s)
    goto 0x004B14
0x004B10:
    push 0s
0x004B14:
    if !pop goto 0x004B50
0x004B18:
    pushenv (int32 self.brattywriter) 0x004B34
0x004B28:
    call (instance_destroy[]:int32 )
0x004B34:
    popenv 0x004B28
0x004B38:
    self.con = 0s
    self.selling = 1s
0x004B50:
    if !(== self.con 81s) goto 0x004BFC
0x004B64:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004BA8
0x004B88:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x004BAC
0x004BA8:
    push 0s
0x004BAC:
    if !pop goto 0x004BFC
0x004BB0:
    stog.flag[20s] = 5s
    stog.msg[0s] = "\\E4* OH MY GOD!!^1!&* GIMME!!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 83s
0x004BFC:
    if !(== self.con 83s) goto 0x004C90
0x004C10:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x004C90
0x004C38:
    pushenv (int32 self.brattywriter) 0x004C54
0x004C48:
    call (instance_destroy[]:int32 )
0x004C54:
    popenv 0x004C48
0x004C58:
    stog.msg[0s] = "\\M4* God^1, Catty.&* Try to have&  some&  self-control./*"
    call (event_user[]:int32 (var 2s))
    self.con = 84s
0x004C90:
    if !(== self.con 84s) goto 0x004D28
0x004CA4:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004CE8
0x004CC8:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x004CEC
0x004CE8:
    push 0s
0x004CEC:
    if !pop goto 0x004D28
0x004CF0:
    stog.msg[0s] = "\\E5* Sorry.../%%"
    call (event_user[]:int32 (var 3s))
    self.con = 85s
0x004D28:
    if !(== self.con 85s) goto 0x004DBC
0x004D3C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x004DBC
0x004D64:
    pushenv (int32 self.brattywriter) 0x004D80
0x004D74:
    call (instance_destroy[]:int32 )
0x004D80:
    popenv 0x004D74
0x004D84:
    stog.msg[0s] = "\\M6* 'Cause they&  OBVIOUSLY&  brought that&  Glamburger&  for ME./*"
    call (event_user[]:int32 (var 2s))
    self.con = 86s
0x004DBC:
    if !(== self.con 86s) goto 0x004E54
0x004DD0:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004E14
0x004DF4:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x004E18
0x004E14:
    push 0s
0x004E18:
    if !pop goto 0x004E54
0x004E1C:
    stog.msg[0s] = "\\E1* NOOO WAYYY!!!!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 87s
0x004E54:
    if !(== self.con 87s) goto 0x004E84
0x004E68:
    push (== (instance_exists[]:int32 self.cattywriter) 0s)
    goto 0x004E88
0x004E84:
    push 0s
0x004E88:
    if !pop goto 0x004EC4
0x004E8C:
    pushenv (int32 self.brattywriter) 0x004EA8
0x004E9C:
    call (instance_destroy[]:int32 )
0x004EA8:
    popenv 0x004E9C
0x004EAC:
    self.con = 0s
    self.selling = 1s
0x004EC4:
    if !(== self.con 110s) goto 0x004F5C
0x004ED8:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x004F1C
0x004EFC:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x004F20
0x004F1C:
    push 0s
0x004F20:
    if !pop goto 0x004F5C
0x004F24:
    stog.msg[0s] = "\\E5* Yeah^1! He's&  a creep!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 111s
0x004F5C:
    if !(== self.con 111s) goto 0x004F8C
0x004F70:
    push (== (instance_exists[]:int32 self.cattywriter) 0s)
    goto 0x004F90
0x004F8C:
    push 0s
0x004F90:
    if !pop goto 0x005000
0x004F94:
    pushenv (int32 self.brattywriter) 0x004FB0
0x004FA4:
    call (instance_destroy[]:int32 )
0x004FB0:
    popenv 0x004FA4
0x004FB4:
    self.con = 112s
    stog.flag[20s] = 2s
    stog.msg[0s] = "\\E7* But he's kind&  of cute^1,&  too.../%%"
    call (event_user[]:int32 (var 3s))
0x005000:
    if !(== self.con 112s) goto 0x005074
0x005014:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x005074
0x00503C:
    stog.msg[0s] = "\\M4* C'mon^1,&  Catty^1, don't&  you have&  ANY&  standards^2?/*"
    call (event_user[]:int32 (var 2s))
    self.con = 113s
0x005074:
    if !(== self.con 113s) goto 0x005120
0x005088:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x0050CC
0x0050AC:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x0050D0
0x0050CC:
    push 0s
0x0050D0:
    if !pop goto 0x005120
0x0050D4:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E1*\\M1 Nope!!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 114s
0x005120:
    if !(== self.con 114s) goto 0x005150
0x005134:
    push (== (instance_exists[]:int32 self.cattywriter) 0s)
    goto 0x005154
0x005150:
    push 0s
0x005154:
    if !pop goto 0x005190
0x005158:
    pushenv (int32 self.brattywriter) 0x005174
0x005168:
    call (instance_destroy[]:int32 )
0x005174:
    popenv 0x005168
0x005178:
    self.con = 0s
    self.selling = 1s
0x005190:
    if !(== self.con 120s) goto 0x005228
0x0051A4:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x0051E8
0x0051C8:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x0051EC
0x0051E8:
    push 0s
0x0051EC:
    if !pop goto 0x005228
0x0051F0:
    stog.msg[0s] = "\\E7* He'd be OK&  if he just&  treated us&  with some&  respect./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 121s
0x005228:
    if !(== self.con 121s) goto 0x0052BC
0x00523C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0052BC
0x005264:
    pushenv (int32 self.brattywriter) 0x005280
0x005274:
    call (instance_destroy[]:int32 )
0x005280:
    popenv 0x005274
0x005284:
    stog.msg[0s] = "\\M5* But he just&  acts..^1.&* Really&  weird./*"
    call (event_user[]:int32 (var 2s))
    self.con = 122s
0x0052BC:
    if !(== self.con 122s) goto 0x005354
0x0052D0:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x005314
0x0052F4:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x005318
0x005314:
    push 0s
0x005318:
    if !pop goto 0x005354
0x00531C:
    stog.msg[0s] = "\\E5* And then acts&  like it's OUR&  fault he&  acts that&  way!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 123s
0x005354:
    if !(== self.con 123s) goto 0x0053E8
0x005368:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0053E8
0x005390:
    pushenv (int32 self.brattywriter) 0x0053AC
0x0053A0:
    call (instance_destroy[]:int32 )
0x0053AC:
    popenv 0x0053A0
0x0053B0:
    stog.msg[0s] = "\\M0* Like^1, when&  we asked him&  to get those&  Glamburgers.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 124s
0x0053E8:
    if !(== self.con 124s) goto 0x005480
0x0053FC:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x005440
0x005420:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x005444
0x005440:
    push 0s
0x005444:
    if !pop goto 0x005480
0x005448:
    stog.msg[0s] = "\\E0* He dropped them&  and ran away&  before we&  could even say&  anything!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 126s
0x005480:
    if !(== self.con 126s) goto 0x005514
0x005494:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x005514
0x0054BC:
    pushenv (int32 self.brattywriter) 0x0054D8
0x0054CC:
    call (instance_destroy[]:int32 )
0x0054D8:
    popenv 0x0054CC
0x0054DC:
    stog.msg[0s] = "\\M3* We were^1,&  like^1, going&  to share&  them./*"
    call (event_user[]:int32 (var 2s))
    self.con = 127s
0x005514:
    if !(== self.con 127s) goto 0x0055AC
0x005528:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x00556C
0x00554C:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x005570
0x00556C:
    push 0s
0x005570:
    if !pop goto 0x0055AC
0x005574:
    stog.msg[0s] = "\\E7* Really^1?&* I wasn't./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 128s
0x0055AC:
    if !(== self.con 128s) goto 0x005660
0x0055C0:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x005660
0x0055E8:
    pushenv (int32 self.brattywriter) 0x005604
0x0055F8:
    call (instance_destroy[]:int32 )
0x005604:
    popenv 0x0055F8
0x005608:
    global.faceemotion = 1s
    stog.flag[437s] = 5s
    stog.msg[0s] = "\\M1* Catty!!/%%"
    call (event_user[]:int32 (var 2s))
    self.con = 129s
0x005660:
    if !(== self.con 129s) goto 0x005690
0x005674:
    push (== (instance_exists[]:int32 self.brattywriter) 0s)
    goto 0x005694
0x005690:
    push 0s
0x005694:
    if !pop goto 0x0056D0
0x005698:
    pushenv (int32 self.cattywriter) 0x0056B4
0x0056A8:
    call (instance_destroy[]:int32 )
0x0056B4:
    popenv 0x0056A8
0x0056B8:
    self.con = 0s
    self.selling = 1s
0x0056D0:
    if !(== self.con 140s) goto 0x005768
0x0056E4:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x005728
0x005708:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x00572C
0x005728:
    push 0s
0x00572C:
    if !pop goto 0x005768
0x005730:
    stog.msg[0s] = "\\E1*\\M2 Yeah!^1!&* He should come&  look for&  junk with us!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 141s
0x005768:
    if !(== self.con 141s) goto 0x005808
0x00577C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x005808
0x0057A4:
    pushenv (int32 self.brattywriter) 0x0057C0
0x0057B4:
    call (instance_destroy[]:int32 )
0x0057C0:
    popenv 0x0057B4
0x0057C4:
    global.faceemotion = 7s
    stog.msg[0s] = "\\M3* But like^1, if&  we let him&  hang out with&  us..^1. I just&  worry it'll.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 142s
0x005808:
    if !(== self.con 142s) goto 0x0058A0
0x00581C:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x005860
0x005840:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x005864
0x005860:
    push 0s
0x005864:
    if !pop goto 0x0058A0
0x005868:
    stog.msg[0s] = "\\E4*\\M2 ... be really&  super fun!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 143s
0x0058A0:
    if !(== self.con 143s) goto 0x005940
0x0058B4:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x005940
0x0058DC:
    pushenv (int32 self.brattywriter) 0x0058F8
0x0058EC:
    call (instance_destroy[]:int32 )
0x0058F8:
    popenv 0x0058EC
0x0058FC:
    global.faceemotion = 7s
    stog.msg[0s] = "\\M1* Um^1, that was&  NOT what I&  was gonna say./*"
    call (event_user[]:int32 (var 2s))
    self.con = 145s
0x005940:
    if !(== self.con 145s) goto 0x0059D8
0x005954:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x005998
0x005978:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x00599C
0x005998:
    push 0s
0x00599C:
    if !pop goto 0x0059D8
0x0059A0:
    stog.msg[0s] = "\\E1* But I was&  close^1, right!?/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 114s
0x0059D8:
    if !(== self.con 160s) goto 0x005AC0
0x0059EC:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.brattywriter) 0s) goto 0x005AC0
0x005A14:
    stog.flag[20s] = 5s
    stog.msg[0s] = "\\E7* But don't you&  feel bad for&  him^1, Bratty?/"
    stog.msg[1s] = "\\E5* Poor&  Burgerpants.../"
    stog.msg[2s] = "\\E4* Think about how&  cool we are&  compared to&  him!!!/"
    stog.msg[3s] = "* We'd be saving&  his LIFE with&  our&  friendship!!/"
    stog.msg[4s] = "\\E1* His LIFE^1,&  Bratty!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 161s
0x005AC0:
    if !(== self.con 161s) goto 0x005B60
0x005AD4:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x005B60
0x005AFC:
    pushenv (int32 self.brattywriter) 0x005B18
0x005B0C:
    call (instance_destroy[]:int32 )
0x005B18:
    popenv 0x005B0C
0x005B1C:
    global.faceemotion = 8s
    stog.msg[0s] = "\\M4* Uh^1, so?/%%"
    call (event_user[]:int32 (var 2s))
    self.con = 162s
0x005B60:
    if !(== self.con 162s) goto 0x005BEC
0x005B74:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.brattywriter) 0s) goto 0x005BEC
0x005B9C:
    stog.msg[0s] = "\\E7* ..^5. %"
    stog.msg[1s] = "\\E1* Think of all&  the glamburgers&  he could get&  for us!!/*"
    call (event_user[]:int32 (var 3s))
    self.con = 163s
0x005BEC:
    if !(== self.con 163s) goto 0x005CA4
0x005C00:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.cattywriter)) goto 0x005C44
0x005C24:
    push (!= (int32 self.cattywriter):halt 0s)
    goto 0x005C48
0x005C44:
    push 0s
0x005C48:
    if !pop goto 0x005CA4
0x005C4C:
    pushenv (int32 self.brattywriter) 0x005C68
0x005C5C:
    call (instance_destroy[]:int32 )
0x005C68:
    popenv 0x005C5C
0x005C6C:
    stog.msg[0s] = "\\M3* ... so is he&  free after&  work?/%%"
    call (event_user[]:int32 (var 2s))
    self.con = 129s
0x005CA4:
    if !(== self.con 170s) goto 0x005D3C
0x005CB8:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x005CFC
0x005CDC:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x005D00
0x005CFC:
    push 0s
0x005D00:
    if !pop goto 0x005D3C
0x005D04:
    stog.msg[0s] = "\\E0* Yeah^1, like^1,&  totally&  free./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 171s
0x005D3C:
    if !(== self.con 171s) goto 0x005DD0
0x005D50:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x005DD0
0x005D78:
    pushenv (int32 self.brattywriter) 0x005D94
0x005D88:
    call (instance_destroy[]:int32 )
0x005D94:
    popenv 0x005D88
0x005D98:
    stog.msg[0s] = "* Like..^1.&* Cool./*"
    call (event_user[]:int32 (var 2s))
    self.con = 172s
0x005DD0:
    if !(== self.con 172s) goto 0x005E68
0x005DE4:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x005E28
0x005E08:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x005E2C
0x005E28:
    push 0s
0x005E2C:
    if !pop goto 0x005E68
0x005E30:
    stog.msg[0s] = "\\E0* Yeah^1, like^1,&  cool./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 173s
0x005E68:
    if !(== self.con 173s) goto 0x005EFC
0x005E7C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x005EFC
0x005EA4:
    pushenv (int32 self.brattywriter) 0x005EC0
0x005EB4:
    call (instance_destroy[]:int32 )
0x005EC0:
    popenv 0x005EB4
0x005EC4:
    stog.msg[0s] = "* Like^1,&  milennia&  of being&  imprisoned&  finally over?/*"
    call (event_user[]:int32 (var 2s))
    self.con = 174s
0x005EFC:
    if !(== self.con 174s) goto 0x005F94
0x005F10:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x005F54
0x005F34:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x005F58
0x005F54:
    push 0s
0x005F58:
    if !pop goto 0x005F94
0x005F5C:
    stog.msg[0s] = "\\E0* Yeah^1, that's&  like pretty&  chill I guess./%%"
    call (event_user[]:int32 (var 3s))
    self.con = 114s
0x005F94:
    if !(== self.con 180s) goto 0x00601C
0x005FA8:
    self.selling = 4s
    if !(~ (bool (instance_exists[]:int32 self.brattywriter))) goto 0x00601C
0x005FD0:
    stog.flag[20s] = 5s
    stog.msg[0s] = "\\E7* Did we say&  that?/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 181s
0x00601C:
    if !(== self.con 181s) goto 0x0060C8
0x006030:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0060C8
0x006058:
    pushenv (int32 self.brattywriter) 0x006074
0x006068:
    call (instance_destroy[]:int32 )
0x006074:
    popenv 0x006068
0x006078:
    stog.msg[0s] = "\\M4* Probably?/"
    stog.msg[1s] = "\\M1* It's^1, like^1,&  practically&  our&  catchphrase./%%"
    call (event_user[]:int32 (var 2s))
    self.con = 182s
0x0060C8:
    if !(== self.con 182s) goto 0x006168
0x0060DC:
    self.selling = 4s
    if !(~ (bool (instance_exists[]:int32 self.brattywriter))) goto 0x006168
0x006104:
    stog.flag[20s] = 5s
    stog.msg[0s] = "\\E8* Really^1?&* I thought our&  catchphrase&  was.../"
    stog.msg[1s] = "\\E4* B-B-Bratty's&  the best^1,&  C-C-Catty's&  the coolest!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 183s
0x006168:
    if !(== self.con 183s) goto 0x006220
0x00617C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x006220
0x0061A4:
    global.faceemotion = 7s
    pushenv (int32 self.brattywriter) 0x0061CC
0x0061C0:
    call (instance_destroy[]:int32 )
0x0061CC:
    popenv 0x0061C0
0x0061D0:
    stog.msg[0s] = "\\M1* Um^1, no?/"
    stog.msg[1s] = "* We've like&  literally&  NEVER said&  that./%%"
    call (event_user[]:int32 (var 2s))
    self.con = 184s
0x006220:
    if !(== self.con 184s) goto 0x006294
0x006234:
    self.selling = 4s
    if !(~ (bool (instance_exists[]:int32 self.brattywriter))) goto 0x006294
0x00625C:
    stog.msg[0s] = "\\E1* CAN it be&  though!^1?&* CAN it be!?/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 114s
0x006294:
    if !(== self.con 190s) goto 0x006340
0x0062A8:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x0062EC
0x0062CC:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x0062F0
0x0062EC:
    push 0s
0x0062F0:
    if !pop goto 0x006340
0x0062F4:
    stog.flag[20s] = 5s
    stog.msg[0s] = "\\E4* OMG^1, we&  can finally&  fulfill our&  DREAM of having&  a pet cat!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 191s
0x006340:
    if !(== self.con 191s) goto 0x0063E0
0x006354:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0063E0
0x00637C:
    global.faceemotion = 7s
    pushenv (int32 self.brattywriter) 0x0063A4
0x006398:
    call (instance_destroy[]:int32 )
0x0063A4:
    popenv 0x006398
0x0063A8:
    stog.msg[0s] = "\\M1* That's^1, like^1,&  YOUR dream^1,&  Catty./*"
    call (event_user[]:int32 (var 2s))
    self.con = 192s
0x0063E0:
    if !(== self.con 192s) goto 0x006490
0x0063F4:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x006438
0x006418:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x00643C
0x006438:
    push 0s
0x00643C:
    if !pop goto 0x006490
0x006440:
    stog.msg[0s] = "* But Bratty.../"
    stog.msg[1s] = "\\E5*\\M5 I don't wanna&  have a dream&  without YOU&  in it...!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 193s
0x006490:
    if !(== self.con 193s) goto 0x006524
0x0064A4:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x006524
0x0064CC:
    pushenv (int32 self.brattywriter) 0x0064E8
0x0064DC:
    call (instance_destroy[]:int32 )
0x0064E8:
    popenv 0x0064DC
0x0064EC:
    stog.msg[0s] = "* Aww..^1.&* Catty..^3./*"
    call (event_user[]:int32 (var 2s))
    self.con = 194s
0x006524:
    if !(== self.con 194s) goto 0x0065D0
0x006538:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x00657C
0x00655C:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x006580
0x00657C:
    push 0s
0x006580:
    if !pop goto 0x0065D0
0x006584:
    stog.flag[20s] = 2s
    stog.msg[0s] = "\\E1* And^1, in my&  dream^1, YOU clean&  up after&  the cat!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 195s
0x0065D0:
    if !(== self.con 195s) goto 0x006664
0x0065E4:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x006664
0x00660C:
    pushenv (int32 self.brattywriter) 0x006628
0x00661C:
    call (instance_destroy[]:int32 )
0x006628:
    popenv 0x00661C
0x00662C:
    stog.msg[0s] = "\\M1* Catty!!!/%%"
    call (event_user[]:int32 (var 2s))
    self.con = 129s
0x006664:
    if !(== self.con 200s) goto 0x006694
0x006678:
    push (== (instance_exists[]:int32 self.cattywriter) 0s)
    goto 0x006698
0x006694:
    push 0s
0x006698:
    if !pop goto 0x00673C
0x00669C:
    self.selling = 4s
    call (caster_pause[]:int32 global.currentsong)
    pushenv (int32 self.cattywriter) 0x0066D8
0x0066CC:
    call (instance_destroy[]:int32 )
0x0066D8:
    popenv 0x0066CC
0x0066DC:
    pushenv (int32 self.brattywriter) 0x0066F8
0x0066EC:
    call (instance_destroy[]:int32 )
0x0066F8:
    popenv 0x0066EC
0x0066FC:
    global.faceemotion = 8s
    stog.flag[20s] = 0s
    self.con = 201s
    stog.alarm[4s] = 70s
0x00673C:
    if !(== self.con 202s) goto 0x0067BC
0x006750:
    self.selling = 4s
    call (caster_resume[]:int32 global.currentsong)
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E5* Bratty&  NOOOO!!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 203s
0x0067BC:
    if !(== self.con 203s) goto 0x00688C
0x0067D0:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x00688C
0x0067F8:
    pushenv (int32 self.brattywriter) 0x006814
0x006808:
    call (instance_destroy[]:int32 )
0x006814:
    popenv 0x006808
0x006818:
    global.faceemotion = 1s
    stog.msg[0s] = "\\M1* I'm just&  kidding!!/"
    stog.msg[1s] = "\\M4*\\E8 Kind of./"
    stog.msg[2s] = "\\M5*\\E7 Anyway^1, when&  was the last&  time you even&  SAW a cat&  around here?/%%"
    call (event_user[]:int32 (var 2s))
    self.con = 204s
0x00688C:
    if !(== self.con 204s) goto 0x00695C
0x0068A0:
    self.selling = 4s
    if !(~ (bool (instance_exists[]:int32 self.brattywriter))) goto 0x00695C
0x0068C8:
    stog.flag[20s] = 5s
    stog.msg[0s] = "\\E8* Oh!^1!&* JUST the other&  day!/"
    stog.msg[1s] = "\\E3* There was&  this CUTE&  little white&  cat walking&  around.../"
    stog.msg[2s] = "\\E4* It was^1, like^1,&  SOOOOOO&  clueless&  looking./"
    stog.msg[3s] = "\\E1* I pet it&  for like an&  hour!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 205s
0x00695C:
    if !(== self.con 205s) goto 0x0069F0
0x006970:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0069F0
0x006998:
    pushenv (int32 self.brattywriter) 0x0069B4
0x0069A8:
    call (instance_destroy[]:int32 )
0x0069B4:
    popenv 0x0069A8
0x0069B8:
    stog.msg[0s] = "\\M5* ....^1.&* ....^1.&* ... Catty^2./*"
    call (event_user[]:int32 (var 2s))
    self.con = 206s
0x0069F0:
    if !(== self.con 206s) goto 0x006A88
0x006A04:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x006A48
0x006A28:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x006A4C
0x006A48:
    push 0s
0x006A4C:
    if !pop goto 0x006A88
0x006A50:
    stog.msg[0s] = "\\E7* Yeah^1, Bratty?/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 207s
0x006A88:
    if !(== self.con 207s) goto 0x006B28
0x006A9C:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x006B28
0x006AC4:
    pushenv (int32 self.brattywriter) 0x006AE0
0x006AD4:
    call (instance_destroy[]:int32 )
0x006AE0:
    popenv 0x006AD4
0x006AE4:
    global.faceemotion = 8s
    stog.msg[0s] = "\\M1* I think that&  was^1, like..^1.&* A dog^3./*"
    call (event_user[]:int32 (var 2s))
    self.con = 208s
0x006B28:
    if !(== self.con 208s) goto 0x006BC0
0x006B3C:
    self.selling = 4s
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x006B80
0x006B60:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x006B84
0x006B80:
    push 0s
0x006B84:
    if !pop goto 0x006BC0
0x006B88:
    stog.msg[0s] = "\\E1* DOGS ARE JUST&  FIRM CATS!!!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 114s
0x006BC0:
    if !(== self.con 250s) goto 0x006C54
0x006BD4:
    self.selling = 4s
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x006C54
0x006BFC:
    pushenv (int32 self.brattywriter) 0x006C18
0x006C0C:
    call (instance_destroy[]:int32 )
0x006C18:
    popenv 0x006C0C
0x006C1C:
    stog.msg[0s] = "* If you're&  reading&  this.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 251s
0x006C54:
    if !(== self.con 251s) goto 0x006CE0
0x006C68:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x006CA0
0x006C80:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x006CA4
0x006CA0:
    push 0s
0x006CA4:
    if !pop goto 0x006CE0
0x006CA8:
    stog.msg[0s] = "\\E7* Then^1, like^1,&  bad news you&  mega-evil&  weirdo!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 252s
0x006CE0:
    if !(== self.con 252s) goto 0x006D68
0x006CF4:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x006D68
0x006D10:
    pushenv (int32 self.brattywriter) 0x006D2C
0x006D20:
    call (instance_destroy[]:int32 )
0x006D2C:
    popenv 0x006D20
0x006D30:
    stog.msg[0s] = "* Alphys just&  came here&  and she's&  taking us.../*"
    call (event_user[]:int32 (var 2s))
    self.con = 253s
0x006D68:
    if !(== self.con 253s) goto 0x006DF4
0x006D7C:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x006DB4
0x006D94:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x006DB8
0x006DB4:
    push 0s
0x006DB8:
    if !pop goto 0x006DF4
0x006DBC:
    stog.msg[0s] = "\\E7* Someplace&  super duper&  safe!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 254s
0x006DF4:
    if !(== self.con 254s) goto 0x006E7C
0x006E08:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x006E7C
0x006E24:
    pushenv (int32 self.brattywriter) 0x006E40
0x006E34:
    call (instance_destroy[]:int32 )
0x006E40:
    popenv 0x006E34
0x006E44:
    stog.msg[0s] = "* But^1, first^1,&  we gotta use&  up these gel&  pens./*"
    call (event_user[]:int32 (var 2s))
    self.con = 255s
0x006E7C:
    if !(== self.con 255s) goto 0x006F08
0x006E90:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x006EC8
0x006EA8:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x006ECC
0x006EC8:
    push 0s
0x006ECC:
    if !pop goto 0x006F08
0x006ED0:
    stog.msg[0s] = "\\E7* Yeah^1!&* Chill^1, Alphys!&* We don't wanna&  waste pens!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 256s
0x006F08:
    if !(== self.con 256s) goto 0x006F90
0x006F1C:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x006F90
0x006F38:
    pushenv (int32 self.brattywriter) 0x006F54
0x006F48:
    call (instance_destroy[]:int32 )
0x006F54:
    popenv 0x006F48
0x006F58:
    stog.msg[0s] = "* And don't even&  THINK about&  stealing our&  stuff./*"
    call (event_user[]:int32 (var 2s))
    self.con = 257s
0x006F90:
    if !(== self.con 257s) goto 0x00701C
0x006FA4:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x006FDC
0x006FBC:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x006FE0
0x006FDC:
    push 0s
0x006FE0:
    if !pop goto 0x00701C
0x006FE4:
    stog.msg[0s] = "* Yeah^1, creep^1!&* Leave our&  junk alone!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 258s
0x00701C:
    if !(== self.con 258s) goto 0x0070A4
0x007030:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0070A4
0x00704C:
    pushenv (int32 self.brattywriter) 0x007068
0x00705C:
    call (instance_destroy[]:int32 )
0x007068:
    popenv 0x00705C
0x00706C:
    stog.msg[0s] = "* Catty^1, it's&  not JUNK^1.&* It's really&  valuable./*"
    call (event_user[]:int32 (var 2s))
    self.con = 259s
0x0070A4:
    if !(== self.con 259s) goto 0x007130
0x0070B8:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x0070F0
0x0070D0:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x0070F4
0x0070F0:
    push 0s
0x0070F4:
    if !pop goto 0x007130
0x0070F8:
    stog.msg[0s] = "* Yeah^1!&* Our garbage&  is REALLY&  valuable!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 260s
0x007130:
    if !(== self.con 260s) goto 0x0071B8
0x007144:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0071B8
0x007160:
    pushenv (int32 self.brattywriter) 0x00717C
0x007170:
    call (instance_destroy[]:int32 )
0x00717C:
    popenv 0x007170
0x007180:
    stog.msg[0s] = "* Anyway^1.&* In closing^1:&* You're a&  total loser!/*"
    call (event_user[]:int32 (var 2s))
    self.con = 261s
0x0071B8:
    if !(== self.con 261s) goto 0x007244
0x0071CC:
    if !(bool (instance_exists[]:int32 self.brattywriter)) goto 0x007204
0x0071E4:
    push (!= (int32 self.brattywriter):halt 0s)
    goto 0x007208
0x007204:
    push 0s
0x007208:
    if !pop goto 0x007244
0x00720C:
    stog.msg[0s] = "* Yeah^1!&* Loser!!^1!&* Nya ha ha!!!/%%"
    call (event_user[]:int32 (var 3s))
    self.con = 262s
0x007244:
    if !(== self.con 262s) goto 0x0072F8
0x007258:
    if !(== (instance_exists[]:int32 self.cattywriter) 0s) goto 0x0072F8
0x007274:
    pushenv (int32 self.brattywriter) 0x007290
0x007284:
    call (instance_destroy[]:int32 )
0x007290:
    popenv 0x007284
0x007294:
    stog.msg[0s] = "* Signed^1,&  Bratty <3/%%"
    call (event_user[]:int32 (var 2s))
    stog.msg[0s] = "* Signed^1,&  Catty <3 /%%"
    call (event_user[]:int32 (var 3s))
    self.con = 129s
0x0072F8:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x007374
0x007310:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x007374
0x007328:
    pushenv 782s 0x007370
0x007330:
    if !(== self.halt 0s) goto 0x00735C
0x007344:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x00735C:
    call (keyboard_clear[]:int32 (var 16s))
0x007370:
    popenv 0x007330
0x007374:
    if !(== self.selling 1s) goto 0x0073A4
0x007388:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0073A8
0x0073A4:
    push 0s
0x0073A8:
    if !pop goto 0x007448
0x0073AC:
    if !(== self.sell 2s) goto 0x0073E4
0x0073C0:
    self.selling = 2s
    call (event_user[]:int32 (var 1s))
    goto 0x007448
0x0073E4:
    if (== self.sell 1s) goto 0x00740C
0x0073F8:
    push (== self.sell 7s)
    goto 0x007410
0x00740C:
    push 1s
0x007410:
    if !pop goto 0x007424
0x007414:
    self.menu = 0s
    goto 0x007430
0x007424:
    self.menu = 3s
0x007430:
    self.sell = 0s
    self.selling = 0s
0x007448:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x0074D0
0x007460:
    push -1s
    stog.menuc[(+ (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(> (int32 self.menu):menuc self.menumax) goto 0x0074D0
0x0074B4:
    stog.menuc[(int32 self.menu)] = 0s
0x0074D0:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x007558
0x0074E8:
    push -1s
    stog.menuc[(- (int32 self.menu):menuc 1s)] = (int32 self.menu)
    push -1s
    if !(< (int32 self.menu):menuc 0s) goto 0x007558
0x007538:
    stog.menuc[(int32 self.menu)] = self.menumax
0x007558:
    if !(== global.debug 1s) goto 0x0075D0
0x00756C:
    if !(bool (keyboard_check_pressed[]:int32 (var 71s))) goto 0x007590
0x007584:
    global.gold = 5000s
0x007590:
    if !(bool (keyboard_check_pressed[]:int32 (var 75s))) goto 0x0075D0
0x0075A8:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 314s))
0x0075D0:
    exit
