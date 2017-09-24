0x000000:
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x00005C
0x000020:
    self.murder = 1s
    push -5s
    if !(< 435s:flag 2s) goto 0x00005C
0x000048:
    stog.flag[435s] = 2s
0x00005C:
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    self.vol = 0.8d
    push -5s
    if !(== 7s:flag 0s) goto 0x000130
0x0000B0:
    self.shopmus = (caster_load[]:int32 (var "music/shop.ogg"))
    call (caster_loop[]:int32 (var 0.7d) self.vol self.shopmus)
    if !(== self.murder 1s) goto 0x000130
0x00010C:
    call (caster_set_pitch[]:int32 (var 0.4d) self.shopmus)
0x000130:
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
    stog.item[0s] = 42s
    stog.item[1s] = 40s
    stog.item[2s] = 43s
    stog.item[3s] = 61s
    self.sell = 0s
    self.bought = 0s
    self.mainmessage = 0s
    stog.itemcost[0s] = 60s
    stog.itemcost[1s] = 120s
    stog.itemcost[2s] = 300s
    stog.itemcost[3s] = 500s
    self.minimenuy = 120s
    global.typer = 23s
    call (draw_set_font[]:int32 (var 2s))
    self.sidemessage = 0s
    self.selling = 0s
    global.msc = 0s
    self.glow = 0s
    self.shx = 100s
    call (instance_create[]:int32 (var 1402s) (var 13s) self.shx)
    self.soldo = 0s
    global.faceemotion = 0s
0x000344:
    exit
