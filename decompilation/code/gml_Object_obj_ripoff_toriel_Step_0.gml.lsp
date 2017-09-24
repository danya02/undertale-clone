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
    if !(== global.mnfight 1s) goto 0x000230
0x0001DC:
    if !(== self.talked 0s) goto 0x000230
0x0001F0:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002BC
0x000248:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002A0
0x000264:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002A0
0x000284:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002A4
0x0002A0:
    push 0s
0x0002A4:
    if !pop goto 0x0002BC
0x0002A8:
    stog.alarm[5s] = 2s
0x0002BC:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000320
0x0002E0:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000320:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000410
0x000344:
    pushenv (int32 self.dmgwriter) 0x000368
0x000354:
    stog.alarm[2s] = 15s
0x000368:
    popenv 0x000354
0x00036C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003E0
0x000390:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000410
0x0003E0:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000410:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004E0
0x000434:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004A8
0x000494:
    stog.alarm[2s] = 30s
0x0004A8:
    popenv 0x000494
0x0004AC:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004E0:
    if !(== global.mnfight 2s) goto 0x0006E4
0x0004F4:
    if !(== self.attacked 0s) goto 0x0006A8
0x000508:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000564
0x000544:
    global.firingrate = (* global.firingrate 2.5d)
0x000564:
    if !(== self.pop 2s) goto 0x000598
0x000578:
    global.firingrate = (* global.firingrate 1.8d)
0x000598:
    if !(>= self.mycommand 50s) goto 0x000614
0x0005AC:
    global.turntimer = 190s
    self.gen = (instance_create[]:int32 (var 459s) (var 0s) (var 0s))
    push 35s
    stog.factor* = (int32 self.gen)
    push 9s
    stog.dmg* = (int32 self.gen)
    goto 0x000678
0x000614:
    global.turntimer = 180s
    self.gen = (instance_create[]:int32 (var 470s) (var 0s) (var 0s))
    push 1s
    stog.diff* = (int32 self.gen)
    push 9s
    stog.dmg* = (int32 self.gen)
0x000678:
    self.turnoff = 1s
    stog.msg[0s] = "* The Lost Souls stand there."
    self.attacked = 1s
0x0006A8:
    if !(== self.mercymod 999999) goto 0x0006D8
0x0006C0:
    global.turntimer = -1s
    global.mnfight = 3s
0x0006D8:
    self.whatiheard = -1s
0x0006E4:
    if !(== global.myfight 2s) goto 0x000D68
0x0006F8:
    if !(!= self.whatiheard -1s) goto 0x000D68
0x00070C:
    if !(== global.heard 0s) goto 0x000D68
0x000720:
    if !(== self.whatiheard 0s) goto 0x0008A4
0x000734:
    global.msc = 0s
    pushenv 605s 0x000760
0x000748:
    self.totalmercy = (+ self.totalmercy 1s)
0x000760:
    popenv 0x000748
0x000764:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You tell the Lost Soul that&  you have to go if you're&  going to free everyone./"
    stog.msg[1s] = "* Something is stirring within&  her.../^"
    if !(>= self.totalmercy 4s) goto 0x000834
0x0007C0:
    stog.msg[1s] = "* Something stirs within her..^1.&* It's all flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
    if !(== 563.mercyno 0s) goto 0x000834
0x000804:
    stog.msg[1s] = "* Suddenly^1, her memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing her remember you^1, the&  male Lost Soul tried hard&  to remember you^1, too!/%%"
0x000834:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000894
0x000888:
    self.halt = 0s
0x000894:
    popenv 0x000888
0x000898:
    self.whatiheard = 9s
0x0008A4:
    if !(== self.whatiheard 3s) goto 0x000A1C
0x0008B8:
    global.msc = 0s
    pushenv 605s 0x0008E4
0x0008CC:
    self.totalmercy = (+ self.totalmercy 1s)
0x0008E4:
    popenv 0x0008CC
0x0008E8:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You refuse to fight the Lost&  Soul./"
    stog.msg[1s] = "* Something about this&  is so familiar to her.../^"
    if !(>= self.totalmercy 4s) goto 0x0009B8
0x000944:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
    if !(== 563.mercyno 0s) goto 0x0009B8
0x000988:
    stog.msg[1s] = "* Suddenly^1, her memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing her remember you^1, the&  male Lost Soul tried hard&  to remember you^1, too!/%%"
0x0009B8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A18
0x000A0C:
    self.halt = 0s
0x000A18:
    popenv 0x000A0C
0x000A1C:
    if !(== self.whatiheard 1s) goto 0x000B94
0x000A30:
    global.msc = 0s
    pushenv 605s 0x000A5C
0x000A44:
    self.totalmercy = (+ self.totalmercy 1s)
0x000A5C:
    popenv 0x000A44
0x000A60:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You hug the Lost Soul and&  tell her that you're going&  to see her again./"
    stog.msg[1s] = "* Something about this&  is so familar to her.../^"
    if !(>= self.totalmercy 4s) goto 0x000B30
0x000ABC:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
    if !(== 563.mercyno 0s) goto 0x000B30
0x000B00:
    stog.msg[1s] = "* Suddenly^1, her memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing her remember you^1, the&  male Lost Soul tried hard&  to remember you^1, too!/%%"
0x000B30:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B90
0x000B84:
    self.halt = 0s
0x000B90:
    popenv 0x000B84
0x000B94:
    if !(== self.whatiheard 4s) goto 0x000D5C
0x000BA8:
    global.msc = 0s
    pushenv 605s 0x000BD4
0x000BBC:
    self.totalmercy = (+ self.totalmercy 1s)
0x000BD4:
    popenv 0x000BBC
0x000BD8:
    self.mercyno = (+ self.mercyno 1s)
    push -5s
    if !(== 46s:flag 1s) goto 0x000C24
0x000C0C:
    stog.msg[0s] = "* You tell the Lost Soul you&  prefer butterscotch instead&  of cinnamon./"
0x000C24:
    push -5s
    if !(== 46s:flag 0s) goto 0x000C58
0x000C40:
    stog.msg[0s] = "* You tell the Lost Soul you&  prefer cinnamon instead&  of butterscotch./"
0x000C58:
    stog.msg[1s] = "* Somehow^1, she faintly recalls&  hearing this before.../^"
    if !(>= self.totalmercy 4s) goto 0x000CF8
0x000C84:
    stog.msg[1s] = "* Suddenly^1, her memories&  are flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
    if !(== 563.mercyno 0s) goto 0x000CF8
0x000CC8:
    stog.msg[1s] = "* Suddenly^1, her memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing her remember you^1, the&  male Lost Soul tried hard&  to remember you^1, too!/%%"
0x000CF8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D58
0x000D4C:
    self.halt = 0s
0x000D58:
    popenv 0x000D4C
0x000D5C:
    global.heard = 1s
0x000D68:
    if !(== global.myfight 4s) goto 0x000DC4
0x000D7C:
    if !(== global.mercyuse 0s) goto 0x000DC4
0x000D90:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000DC4
0x000DB8:
    call (instance_destroy[]:int32 )
0x000DC4:
    if !(== self.mercymod 222s) goto 0x000DF4
0x000DD8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DF8
0x000DF4:
    push 0s
0x000DF8:
    if !pop goto 0x000E30
0x000DFC:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E30
0x000E24:
    call (instance_destroy[]:int32 )
0x000E30:
    if !(== global.mnfight 5s) goto 0x000E60
0x000E44:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E64
0x000E60:
    push 0s
0x000E64:
    if !pop goto 0x001120
0x000E68:
    if !(== self.saved 1s) goto 0x000F58
0x000E7C:
    if !(< global.hp global.maxhp) goto 0x000EB8
0x000E94:
    global.hp = global.maxhp
    call (snd_play[]:int32 (var 155s))
0x000EB8:
    pushenv 1662s 0x000ECC
0x000EC0:
    call (instance_destroy[]:int32 )
0x000ECC:
    popenv 0x000EC0
0x000ED0:
    global.faceemotion = 0s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 30s))
    self.saved = 2s
    stog.alarm[11s] = 3s
    pushenv 563s 0x000F54
0x000F3C:
    push 0s
    stog.face* = (int32 self.mypart1)
0x000F54:
    popenv 0x000F3C
0x000F58:
    if !(== self.saved 3s) goto 0x001040
0x000F6C:
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 8s
    stog.msg[0s] = "Your fate is up to&you now!/%%"
    call (scr_blcon_x[]:int32 (var 20s) (var 160s))
    pushenv 563s 0x001030
0x000FCC:
    global.msc = 0s
    global.typer = 63s
    stog.msg[0s] = "You are our future!     /%%"
    call (scr_blcon_x[]:int32 (var 140s) (var 160s))
    push 30s
    stog.sprite_index* = (int32 self.blcon)
0x001030:
    popenv 0x000FCC
0x001034:
    self.saved = 4s
0x001040:
    if !(== self.saved 4s) goto 0x001070
0x001054:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001074
0x001070:
    push 0s
0x001074:
    if !pop goto 0x0010E0
0x001078:
    call (instance_create[]:int32 (var 557s) (var -10s) (var -10s))
    self.saved = 5s
    call (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
    stog.alarm[11s] = 34s
0x0010E0:
    if !(== self.saved 6s) goto 0x001120
0x0010F4:
    global.battlegroup = 256s
    stog.flag[508s] = 1s
    call (room_restart[]:int32 )
0x001120:
    if !(== self.turnoff 1s) goto 0x001148
0x001134:
    push (<= global.turntimer 0s)
    goto 0x00114C
0x001148:
    push 0s
0x00114C:
    if !pop goto 0x00118C
0x001150:
    self.dont = 0s
    global.turntimer = -1s
    self.turnoff = 0s
    global.mnfight = 3s
    global.myfight = -1s
0x00118C:
    exit
