0x000000:
    if !(== self.active 1s) goto 0x000434
0x000014:
    self.hit = 1s
    if !(== self.blue 1s) goto 0x000054
0x000034:
    if !(== (scr_blueat[]:int32 ) 0s) goto 0x000054
0x000048:
    self.hit = 0s
0x000054:
    if !(< global.invc 1s) goto 0x00007C
0x000068:
    push (== self.hit 1s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x000434
0x000084:
    self.dmgamt = (round[]:int32 (- self.dmg (/ (+ global.df global.adef) (double 5s))))
    if !(< self.dmgamt 3s) goto 0x0000E0
0x0000D4:
    self.dmgamt = 3s
0x0000E0:
    if !(== global.hardmode 0s) goto 0x000178
0x0000F4:
    if !(bool (instance_exists[]:int32 (var 232s))) goto 0x000178
0x00010C:
    if !(> 232.fighto 13s) goto 0x000178
0x000120:
    if !(< global.hp 10s) goto 0x00014C
0x000134:
    self.dmgamt = (- self.dmgamt 1s)
0x00014C:
    if !(< global.hp 5s) goto 0x000178
0x000160:
    self.dmgamt = (- self.dmgamt 1s)
0x000178:
    global.hp = (- global.hp self.dmgamt)
    global.invc = (* global.inv 3s)
    if !(~ (bool (instance_exists[]:int32 (var 559s)))) goto 0x0003CC
0x0001C8:
    if !(> global.hp 0s) goto 0x000248
0x0001DC:
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
    goto 0x0003C8
0x000248:
    if !(== self.captured 0s) goto 0x0003C8
0x00025C:
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    self.visible = 0s
    global.hp = 1s
    self.captured = 1s
    global.turntimer = 300s
    pushenv 232s 0x0002FC
0x0002F0:
    self.dontcancel = 1s
0x0002FC:
    popenv 0x0002F0
0x000300:
    global.invc = 50s
    self.hspeed = 0s
    if !(bool (instance_exists[]:int32 (var 651s))) goto 0x000348
0x000330:
    [blt_sizebone].active = 2s
    [blt_sizebone].visible = 0s
0x000348:
    if !(bool (instance_exists[]:int32 (var 652s))) goto 0x000378
0x000360:
    [blt_topbone].active = 2s
    [blt_sizebone].visible = 0s
0x000378:
    if !(bool (instance_exists[]:int32 (var 685s))) goto 0x0003A8
0x000390:
    pushenv 685s 0x0003A4
0x000398:
    call (instance_destroy[]:int32 )
0x0003A4:
    popenv 0x000398
0x0003A8:
    [obj_heart].vspeed = 0s
    stog.alarm[2s] = 2s
0x0003C8:
    goto 0x000434
0x0003CC:
    call (snd_play[]:int32 (var 53s))
    global.hshake = 2s
    global.shakespeed = 2s
    global.vshake = 2s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
0x000434:
    exit
