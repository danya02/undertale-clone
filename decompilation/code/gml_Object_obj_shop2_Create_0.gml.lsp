0x000000:
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x00002C
0x000020:
    self.murder = 1s
0x00002C:
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    self.vol = 0.8d
    push -5s
    if !(== 7s:flag 0s) goto 0x000100
0x000080:
    self.shopmus = (caster_load[]:int32 (var "music/shop.ogg"))
    call (caster_loop[]:int32 (var 0.93d) self.vol self.shopmus)
    if !(== self.murder 1s) goto 0x000100
0x0000DC:
    call (caster_set_pitch[]:int32 (var 0.2d) self.shopmus)
0x000100:
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
    stog.item[0s] = 37s
    stog.item[1s] = 41s
    stog.item[2s] = 44s
    stog.item[3s] = 45s
    self.sell = 0s
    self.bought = 0s
    self.mainmessage = 0s
    stog.itemcost[0s] = 25s
    stog.itemcost[1s] = 18s
    stog.itemcost[2s] = 30s
    stog.itemcost[3s] = 55s
    self.minimenuy = 120s
    global.typer = 23s
    call (draw_set_font[]:int32 (var 2s))
    self.sidemessage = 0s
    self.selling = 0s
    global.msc = 0s
    self.glow = 0s
    self.shx = 130s
    call (instance_create[]:int32 (var 1405s) (var 44s) self.shx)
    self.soldo = 0s
    global.faceemotion = 0s
0x000314:
    exit
