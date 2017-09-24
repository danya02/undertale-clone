0x000000:
    if !(== self.bonetalk3 0s) goto 0x000144
0x000014:
    self.vol = (caster_get_volume[]:int32 global.batmusic)
    stog.msg[0s] = " WELL...! *HUFF^1*& IT'S CLEAR...& YOU CAN'T^1! *HUFF^1*& DEFEAT ME!!!/"
    stog.msg[1s] = " YEAH!!!& I CAN SEE YOU& SHAKING IN YOUR& BOOTS!!!/"
    stog.msg[2s] = " THEREFORE I^1, THE& GREAT PAPYRUS^1,& ELECT TO GRANT& YOU PITY!!/"
    stog.msg[3s] = "\\X I WILL \\RSPARE\\X YOU,& HUMAN!!!/"
    stog.msg[4s] = " \\XNOW'S YOUR CHANCE& TO ACCEPT MY& \\RMERCY\\X./%%"
    global.typer = 22s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 52s) (+ self.x 145s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.bonetalk3 = 1s
0x000144:
    stog.alarm[8s] = 2s
    if !(== self.bonetalk3 1s) goto 0x000188
0x00016C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x000248
0x000190:
    self.vol = 0s
    pushenv (int32 self.blcon) 0x0001B8
0x0001AC:
    call (instance_destroy[]:int32 )
0x0001B8:
    popenv 0x0001AC
0x0001BC:
    self.dontcancel = 0s
    stog.alarm[8s] = -2s
    self.bonetalk3 = 2s
    self.mercymod = 8000s
    stog.msg[0s] = "* Papyrus is sparing you."
    push -5s
    stog.monsterdef[(int32 self.myself)] = (* (- (int32 self.myself):monsterhp) 2s)
0x000248:
    if !(> self.vol 0.01d) goto 0x000284
0x000264:
    self.vol = (- self.vol 0.01d)
0x000284:
    call (caster_set_volume[]:int32 self.vol global.batmusic)
0x0002A0:
    exit
