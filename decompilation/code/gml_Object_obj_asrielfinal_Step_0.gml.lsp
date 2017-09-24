0x000000:
    if !(== global.mnfight 3s) goto 0x000020
0x000014:
    self.attacked = 0s
0x000020:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001C8
0x00003C:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000C0
0x000058:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000C0
0x000090:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000C0:
    push -5s
    if !(== 1s:monster 1s) goto 0x000144
0x0000DC:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000144
0x000114:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000144:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001C8
0x000160:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001C8
0x000198:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001C8:
    if !(== global.mnfight 1s) goto 0x000280
0x0001DC:
    if !(== self.talked 1s) goto 0x000220
0x0001F0:
    if !(== (instance_exists[]:int32 self.blconwd) 0s) goto 0x000220
0x00020C:
    call (event_user[]:int32 (var 2s))
0x000220:
    if !(== self.talked 0s) goto 0x000260
0x000234:
    call (event_user[]:int32 (var 3s))
    self.talked = 1s
    global.heard = 0s
0x000260:
    if !(== self.talked 2s) goto 0x000280
0x000274:
    self.talked = 0s
0x000280:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x0002E4
0x0002A4:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x0002E4:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0003D4
0x000308:
    pushenv (int32 self.dmgwriter) 0x00032C
0x000318:
    stog.alarm[2s] = 15s
0x00032C:
    popenv 0x000318
0x000330:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003A4
0x000354:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0003D4
0x0003A4:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0003D4:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004A4
0x0003F8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00046C
0x000458:
    stog.alarm[2s] = 30s
0x00046C:
    popenv 0x000458
0x000470:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004A4:
    if !(== global.mnfight 2s) goto 0x000934
0x0004B8:
    if !(== self.attacked 0s) goto 0x0008DC
0x0004CC:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000528
0x000508:
    global.firingrate = (* global.firingrate 2.5d)
0x000528:
    if !(== self.pop 2s) goto 0x00055C
0x00053C:
    global.firingrate = (* global.firingrate 1.8d)
0x00055C:
    push -5s
    if !(< 501s:flag 3s) goto 0x000594
0x000578:
    push 1s
    stog.ucon* = (int32 self.mypart1)
    goto 0x000788
0x000594:
    if !(== self.turns 0s) goto 0x0005D8
0x0005A8:
    push 2s
    stog.u_gen* = (int32 self.mypart1)
    push 1s
    stog.ucon* = (int32 self.mypart1)
0x0005D8:
    if !(== self.turns 1s) goto 0x00061C
0x0005EC:
    push 3s
    stog.u_gen* = (int32 self.mypart1)
    push 1s
    stog.ucon* = (int32 self.mypart1)
0x00061C:
    if (== self.turns 2s) goto 0x00066C
0x000630:
    if (== self.turns 3s) goto 0x00066C
0x000644:
    if (== self.turns 4s) goto 0x00066C
0x000658:
    push (== self.turns 5s)
    goto 0x000670
0x00066C:
    push 1s
0x000670:
    if !pop goto 0x000700
0x000674:
    global.turntimer = 120s
    global.firingrate = 2s
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push self.myself
    stog.myself* = (int32 self.gen)
    push 1s
    stog.dmg* = (int32 self.gen)
    push 9s
    stog.bullettype* = (int32 self.gen)
0x000700:
    if !(== self.turns 6s) goto 0x00072C
0x000714:
    push 1s
    stog.bcon* = (int32 self.mypart1)
0x00072C:
    if !(>= self.turns 7s) goto 0x00074C
0x000740:
    self.mercymod = -12s
0x00074C:
    if !(>= self.turns 11s) goto 0x000770
0x000760:
    self.mercymod = 999999
0x000770:
    self.turns = (+ self.turns 1s)
0x000788:
    stog.msg[0s] = "* The whole world is ending."
    push -5s
    push 505s:flag
    push (+ -5s 506s:flag)
    push (+ -5s 507s:flag)
    self.total = (+ -5s 508s:flag)
    if !(== self.total 1s) goto 0x000820
0x000808:
    stog.msg[0s] = "* You feel something faintly&  resonating within ASRIEL."
0x000820:
    if !(== self.total 2s) goto 0x00084C
0x000834:
    stog.msg[0s] = "* You feel something&  resonating within ASRIEL."
0x00084C:
    if !(== self.total 3s) goto 0x000878
0x000860:
    stog.msg[0s] = "* You feel something strongly&  resonating within ASRIEL."
0x000878:
    if !(== self.total 4s) goto 0x0008A4
0x00088C:
    stog.msg[0s] = "* You feel your friends' SOULs&  resonating within ASRIEL!"
0x0008A4:
    if !(> self.turns 0s) goto 0x0008D0
0x0008B8:
    stog.msg[0s] = "* ..."
0x0008D0:
    self.attacked = 1s
0x0008DC:
    if (== self.mercymod -12s) goto 0x000908
0x0008F0:
    push (== self.mercymod 999999)
    goto 0x00090C
0x000908:
    push 1s
0x00090C:
    if !pop goto 0x000928
0x000910:
    global.turntimer = -1s
    global.mnfight = 3s
0x000928:
    self.whatiheard = -1s
0x000934:
    if !(== global.myfight 2s) goto 0x0011CC
0x000948:
    if !(!= self.whatiheard -1s) goto 0x0011CC
0x00095C:
    if !(== global.heard 0s) goto 0x0011CC
0x000970:
    push -5s
    if !(> 501s:flag 2s) goto 0x0009A4
0x00098C:
    global.myfight = 0s
    global.mnfight = 1s
0x0009A4:
    push -5s
    if !(== 501s:flag 2s) goto 0x000B04
0x0009C0:
    if !(== self.whatiheard 0s) goto 0x000B04
0x0009D4:
    global.msc = 0s
    self.savecon_a = 1s
    [OBJ_WRITER].halt = 3s
    stog.msg[0s] = "* Strangely^1, as your friends&  remembered you.../"
    stog.msg[1s] = "* Something else began resonating&  within the SOUL^1, stronger&  and stronger./"
    stog.msg[2s] = "* It seems that there's still&  one last person that needs&  to be saved./"
    stog.msg[3s] = "* But who...?/"
    stog.msg[4s] = "* .../"
    stog.msg[5s] = "* Suddenly^1, you realize./"
    stog.msg[6s] = "* You reach out and call&  their name./%%"
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AF4
0x000AE8:
    self.halt = 0s
0x000AF4:
    popenv 0x000AE8
0x000AF8:
    self.whatiheard = 9s
0x000B04:
    push -5s
    if !(== 501s:flag 1s) goto 0x000EC4
0x000B20:
    if !(== self.whatiheard 0s) goto 0x000C04
0x000B34:
    global.msc = 0s
    push -5s
    if !(== 505s:flag 0s) goto 0x000B80
0x000B5C:
    call (event_user[]:int32 (var 0s))
    self.nextbattle = 87s
    goto 0x000B94
0x000B80:
    call (event_user[]:int32 (var 1s))
0x000B94:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BF4
0x000BE8:
    self.halt = 0s
0x000BF4:
    popenv 0x000BE8
0x000BF8:
    self.whatiheard = 9s
0x000C04:
    if !(== self.whatiheard 3s) goto 0x000CDC
0x000C18:
    global.msc = 0s
    push -5s
    if !(== 506s:flag 0s) goto 0x000C64
0x000C40:
    call (event_user[]:int32 (var 0s))
    self.nextbattle = 89s
    goto 0x000C78
0x000C64:
    call (event_user[]:int32 (var 1s))
0x000C78:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000CD8
0x000CCC:
    self.halt = 0s
0x000CD8:
    popenv 0x000CCC
0x000CDC:
    if (== self.whatiheard 1s) goto 0x000D04
0x000CF0:
    push (== self.whatiheard 4s)
    goto 0x000D08
0x000D04:
    push 1s
0x000D08:
    if !pop goto 0x000DD0
0x000D0C:
    global.msc = 0s
    push -5s
    if !(== 507s:flag 0s) goto 0x000D58
0x000D34:
    call (event_user[]:int32 (var 0s))
    self.nextbattle = 88s
    goto 0x000D6C
0x000D58:
    call (event_user[]:int32 (var 1s))
0x000D6C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DCC
0x000DC0:
    self.halt = 0s
0x000DCC:
    popenv 0x000DC0
0x000DD0:
    if (== self.whatiheard 2s) goto 0x000DF8
0x000DE4:
    push (== self.whatiheard 5s)
    goto 0x000DFC
0x000DF8:
    push 1s
0x000DFC:
    if !pop goto 0x000EC4
0x000E00:
    global.msc = 0s
    push -5s
    if !(== 508s:flag 0s) goto 0x000E4C
0x000E28:
    call (event_user[]:int32 (var 0s))
    self.nextbattle = 90s
    goto 0x000E60
0x000E4C:
    call (event_user[]:int32 (var 1s))
0x000E60:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000EC0
0x000EB4:
    self.halt = 0s
0x000EC0:
    popenv 0x000EB4
0x000EC4:
    push -5s
    if !(== 501s:flag 0s) goto 0x0011C0
0x000EE0:
    if !(== self.whatiheard 0s) goto 0x0011C0
0x000EF4:
    push -5s
    if !(>= 12s:tempvalue 4s) goto 0x001114
0x000F10:
    pushenv (int32 self.mypart1) 0x000F2C
0x000F20:
    self.darker = 1s
0x000F2C:
    popenv 0x000F20
0x000F30:
    self.songcon = 1s
    global.msc = 0s
    stog.msg[0s] = "* Can't move your body^1.&* Nothing happened./"
    stog.msg[1s] = "* You struggle..^1.&* Nothing happened./"
    stog.msg[2s] = "* You tried to reach your&  SAVE file^1.&* Nothing happened./"
    stog.msg[3s] = "* You tried again to reach&  your SAVE file^1.&* Nothing happened./"
    stog.msg[4s] = "* Seems SAVING the game really&  is impossible./"
    if !(== (file_exists[]:int32 (var "file0")) 0s) goto 0x001028
0x000FE0:
    stog.msg[2s] = "* SAVING over ASRIEL's file&  seems like the only way to&  defeat him.../"
    stog.msg[3s] = "* But^1, having never SAVED&  before^1, you lack the power&  to do it./"
    stog.msg[4s] = "* Seems SAVING the game really&  is impossible./"
0x001028:
    stog.msg[5s] = "* .../"
    stog.msg[6s] = "* But.../"
    stog.msg[7s] = "* Maybe^1, with what little&  power you have.../"
    stog.msg[8s] = "* You can SAVE something else./%%"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    push -1020s
    stog.depth* = (int32 self.iii)
    pushenv (int32 self.iii) 0x001100
0x0010F4:
    self.halt = 0s
0x001100:
    popenv 0x0010F4
0x001104:
    self.whatiheard = 9s
    goto 0x0011C0
0x001114:
    push -5s
    stog.tempvalue[(+ 12s:tempvalue 1s)] = 12s
    global.msc = 0s
    stog.msg[0s] = "* Can't move your body./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0011BC
0x0011B0:
    self.halt = 0s
0x0011BC:
    popenv 0x0011B0
0x0011C0:
    global.heard = 1s
0x0011CC:
    if !(== global.myfight 4s) goto 0x001228
0x0011E0:
    if !(== global.mercyuse 0s) goto 0x001228
0x0011F4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001228
0x00121C:
    call (instance_destroy[]:int32 )
0x001228:
    if !(== self.mercymod 222s) goto 0x001258
0x00123C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00125C
0x001258:
    push 0s
0x00125C:
    if !pop goto 0x001294
0x001260:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001294
0x001288:
    call (instance_destroy[]:int32 )
0x001294:
    if !(== self.songcon 1s) goto 0x001344
0x0012A8:
    self.vol = (caster_get_volume[]:int32 global.batmusic)
    self.vol = (- self.vol 0.04d)
    call (caster_set_volume[]:int32 self.vol global.batmusic)
    if !(<= self.vol 0.04d) goto 0x001344
0x001318:
    self.vol = 0s
    call (caster_free[]:int32 global.batmusic)
    self.songcon = 2s
0x001344:
    if !(== self.songcon 3s) goto 0x001398
0x001358:
    pushenv (int32 self.mypart1) 0x001374
0x001368:
    self.darker = 0s
0x001374:
    popenv 0x001368
0x001378:
    call (snd_play[]:int32 (var 30s))
    self.songcon = -1s
0x001398:
    if !(== self.songcon 2s) goto 0x0013C8
0x0013AC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0013CC
0x0013C8:
    push 0s
0x0013CC:
    if !pop goto 0x0014E0
0x0013D0:
    global.heard = 0s
    global.mercy = 1s
    stog.flag[501s] = 1s
    global.mnfight = 0s
    global.myfight = 0s
    global.bmenuno = 0s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    global.hp = global.maxhp
    [obj_talkbt].spec = 1s
    [obj_talkbt].sprite_index = 4s
    self.songcon = 3s
    global.batmusic = (caster_load[]:int32 (var "music/xpart_2.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 0.8d) global.batmusic)
    stog.msg[0s] = "* !?!?"
0x0014E0:
    if !(== self.gocon 1s) goto 0x001510
0x0014F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001514
0x001510:
    push 0s
0x001514:
    if !pop goto 0x0015A4
0x001518:
    if !(== self.gotimer 0s) goto 0x001550
0x00152C:
    call (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
0x001550:
    self.gotimer = (+ self.gotimer 1s)
    if !(== self.gotimer 34s) goto 0x0015A4
0x00157C:
    global.battlegroup = self.nextbattle
    self.gocon = 0s
    call (room_restart[]:int32 )
0x0015A4:
    if !(> self.savecon_a 0s) goto 0x001818
0x0015B8:
    self.vol = (caster_get_volume[]:int32 global.batmusic)
    self.vol = (- self.vol 0.04d)
    call (caster_set_volume[]:int32 self.vol global.batmusic)
    if !(<= self.vol 0.04d) goto 0x001648
0x001628:
    self.vol = 0s
    call (caster_free[]:int32 global.batmusic)
0x001648:
    if !(== self.savecon_a 1s) goto 0x001678
0x00165C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00167C
0x001678:
    push 0s
0x00167C:
    if !pop goto 0x001770
0x001680:
    self.savecon_a = 2s
    self.blcon = (instance_create[]:int32 (var 187s) (var 50s) (var 400s))
    global.msc = 0s
    stog.msg[0s] = "Huh^1? What are you&doing...!?"
    global.faceemotion = 2s
    global.typer = 86s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    push -2000s
    stog.depth* = (int32 self.blcon)
    push -2200s
    stog.depth* = (int32 self.blconwd)
0x001770:
    if !(== self.savecon_a 2s) goto 0x00179C
0x001784:
    self.savecon_a_x = (+ self.savecon_a_x 1s)
0x00179C:
    if !(== self.savecon_a_x 70s) goto 0x0017F0
0x0017B0:
    self.sw = (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
    push 1s
    stog.ex* = (int32 self.sw)
0x0017F0:
    if !(== self.savecon_a_x 138s) goto 0x001818
0x001804:
    call (room_goto[]:int32 (var 332s))
0x001818:
    if !(== self.endcon 1s) goto 0x00188C
0x00182C:
    self.sw = (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
    push 2s
    stog.ex* = (int32 self.sw)
    self.endcon = 3s
    stog.alarm[11s] = 136s
0x00188C:
    exit
