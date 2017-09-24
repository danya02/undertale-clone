0x000000:
    self.murder = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.gm = (ini_read_real[]:int32 (var 0s) (var "Gameover") (var "General"))
    call (ini_close[]:int32 )
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x000080
0x000074:
    self.murder = 1s
0x000080:
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    self.vol = 0.5d
    push -5s
    if !(== 7s:flag 0s) goto 0x00014C
0x0000D4:
    self.shopmus = (caster_load[]:int32 (var "music/temshop.ogg"))
    call (caster_loop[]:int32 (var 1s) self.vol self.shopmus)
    if !(== self.murder 1s) goto 0x00014C
0x000128:
    call (caster_set_pitch[]:int32 (var 0.5d) self.shopmus)
0x00014C:
    self.menumax = 3s
    self.menu = 0s
    stog.menuc[0s] = 0s
    stog.menuc[1s] = 0s
    stog.menuc[2s] = 0s
    stog.menuc[3s] = 0s
    stog.menuc[4s] = 0s
    stog.menuc[5s] = 0s
    stog.menuc[6s] = 0s
    stog.menuc[7s] = 0s
    self.item0pic = 34s
    self.item1pic = 34s
    self.item2pic = 34s
    self.item3pic = 34s
    stog.item[0s] = 22s
    stog.item[1s] = 22s
    stog.item[2s] = 22s
    stog.item[3s] = 64s
    if !(== self.murder 1s) goto 0x0002AC
0x000298:
    stog.item[3s] = 22s
0x0002AC:
    self.sell = 0s
    self.bought = 0s
    self.mainmessage = 0s
    stog.itemcost[0s] = 3s
    stog.itemcost[1s] = 1s
    stog.itemcost[2s] = 20s
    stog.itemcost[3s] = 1000s
    self.minimenuy = 120s
    global.typer = 24s
    call (draw_set_font[]:int32 (var 2s))
    self.sidemessage = 0s
    self.selling = 0s
    global.msc = 0s
    self.glow = 0s
    self.shx = 130s
    call (instance_create[]:int32 (var 1403s) (var 0s) (var 0s))
    self.soldo = 0s
    global.faceemotion = 0s
    self.sellpos = 0s
    self.sellpos2 = 0s
    self.i = 0s
    if !(< self.i 8s) goto 0x000450
0x0003FC:
    stog.value[(int32 self.i)] = 0s
    stog.sold[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x0003E8
0x000450:
    stog.value[8s] = 0s
    stog.value[9s] = 0s
    stog.value[10s] = 0s
    self.thanks = 0s
    self.joytimer = 0s
    self.s_quit = 0s
    self.specialsell = 0s
    self.c_con = 0s
    self.colleg = 0s
0x0004D4:
    exit
