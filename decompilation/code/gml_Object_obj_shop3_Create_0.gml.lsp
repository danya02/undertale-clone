0x000000:
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x00002C
0x000020:
    self.murder = 1s
0x00002C:
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    self.vol = 0.8d
    push -5s
    if !(== 7s:flag 0s) goto 0x0000F8
0x000080:
    self.shopmus = (caster_load[]:int32 (var "music/date.ogg"))
    call (caster_loop[]:int32 (var 1s) self.vol self.shopmus)
    if !(== self.murder 1s) goto 0x0000F8
0x0000D4:
    call (caster_set_pitch[]:int32 (var 0.25d) self.shopmus)
0x0000F8:
    self.menumax = 3s
    self.menu = 0s
    stog.menuc[0s] = 0s
    stog.menuc[1s] = 0s
    stog.menuc[2s] = 0s
    stog.menuc[3s] = 0s
    stog.menuc[4s] = 0s
    self.item0pic = 34s
    self.item1pic = 34s
    self.item2pic = 34s
    self.item3pic = 34s
    stog.item[0s] = 59s
    stog.item[1s] = 49s
    stog.item[2s] = 48s
    stog.item[3s] = 60s
    self.sell = 0s
    self.bought = 0s
    self.mainmessage = 0s
    stog.itemcost[0s] = 25s
    stog.itemcost[1s] = 350s
    stog.itemcost[2s] = 350s
    stog.itemcost[3s] = 600s
    if !(== self.murder 1s) goto 0x0002CC
0x00027C:
    stog.itemcost[0s] = 0s
    stog.itemcost[1s] = 0s
    stog.itemcost[2s] = 0s
    stog.itemcost[3s] = 0s
0x0002CC:
    self.minimenuy = 120s
    global.typer = 23s
    call (draw_set_font[]:int32 (var 2s))
    self.sidemessage = 0s
    self.selling = 0s
    global.msc = 0s
    self.glow = 0s
    self.shx = 130s
    self.soldo = 0s
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    self.cattywriter = 1s
    self.brattywriter = 2s
    self.cwe = 0s
    self.bwe = 0s
    self.catty = 1407s
    self.bratty = 1408s
    if !(== self.murder 1s) goto 0x0003C8
0x0003BC:
    [obj_shopkeeper_catty].visible = 0s
0x0003C8:
    if !(== self.murder 1s) goto 0x0003E8
0x0003DC:
    [obj_shopkeeper_bratty].visible = 0s
0x0003E8:
    self.con = 0s
0x0003F4:
    exit
