0x000000:
    if !(== self.green 0s) goto 0x000048
0x000014:
    call (scr_damagestandard[]:int32 (var 0s) (var 0s) (var 0s) (var 3s) (var 0s))
0x000048:
    if !(== self.green 1s) goto 0x000124
0x00005C:
    if !(bool (instance_exists[]:int32 (var 394s))) goto 0x0000A4
0x000074:
    stog.msg[0s] = "* Whimsalot doesn't want to&  fight anymore."
    [obj_whimsalot].mercymod = (+ 394.mercymod 40s)
0x0000A4:
    if !(< global.hp global.maxhp) goto 0x0000D4
0x0000BC:
    global.hp = (+ global.hp 1s)
0x0000D4:
    call (snd_play[]:int32 (var 109s))
    call (instance_destroy[]:int32 )
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.pop 1s) goto 0x000124
0x000118:
    global.turntimer = 20s
0x000124:
    exit
