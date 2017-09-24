0x000000:
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x00002C
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
    stog.item[0s] = 14s
    stog.item[1s] = 15s
    stog.item[2s] = 19s
    stog.item[3s] = 21s
    self.sell = 0s
    self.bought = 0s
    self.mainmessage = 0s
    stog.itemcost[0s] = 50s
    stog.itemcost[1s] = 50s
    stog.itemcost[2s] = 15s
    if !(> global.plot 100s) goto 0x000284
0x000270:
    stog.itemcost[2s] = 30s
0x000284:
    if !(> global.plot 121s) goto 0x0002AC
0x000298:
    stog.itemcost[2s] = 45s
0x0002AC:
    if !(> global.plot 199s) goto 0x0002D4
0x0002C0:
    stog.itemcost[2s] = 70s
0x0002D4:
    stog.itemcost[3s] = 25s
    if !(== self.murder 1s) goto 0x00034C
0x0002FC:
    stog.itemcost[0s] = 0s
    stog.itemcost[1s] = 0s
    stog.itemcost[2s] = 0s
    stog.itemcost[3s] = 0s
0x00034C:
    self.minimenuy = 120s
    global.typer = 23s
    call (draw_set_font[]:int32 (var 2s))
    self.sidemessage = 0s
    self.selling = 0s
    global.msc = 0s
    self.glow = 0s
    self.shx = 130s
    call (instance_create[]:int32 (var 1406s) (var 40s) (+ 18s self.shx))
    self.soldo = 0s
    global.faceemotion = 0s
    self.an = 0s
    stog.facespr[1s] = 881s
    stog.facespr[2s] = 880s
    stog.facespr[3s] = 882s
    stog.facespr[4s] = 879s
    stog.facespr[5s] = 878s
    stog.facespr[6s] = 877s
    if !(== self.murder 1s) goto 0x0004A8
0x000490:
    pushenv 1406s 0x0004A4
0x000498:
    call (instance_destroy[]:int32 )
0x0004A4:
    popenv 0x000498
0x0004A8:
    exit
