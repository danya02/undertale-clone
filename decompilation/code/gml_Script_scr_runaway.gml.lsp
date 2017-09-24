0x000000:
    push -5s
    if !(== 6s:flag 0s) goto 0x00004C
0x00001C:
    self.runvalue = (+ (random[]:int32 (var 100s)) (* 10s global.turn))
    goto 0x0000B4
0x00004C:
    if !(== global.turn 0s) goto 0x00006C
0x000060:
    self.runvalue = 0s
0x00006C:
    if !(>= global.turn 1s) goto 0x0000B4
0x000080:
    self.runvalue = (+ (random[]:int32 (var 100s)) (* 10s (- global.turn 1s)))
0x0000B4:
    if !(bool (instance_exists[]:int32 (var 272s))) goto 0x0000D8
0x0000CC:
    self.runvalue = 100s
0x0000D8:
    push -5s
    if !(== 6s:flag 0s) goto 0x000114
0x0000F4:
    if !(== global.armor 4s) goto 0x000114
0x000108:
    self.runvalue = 100s
0x000114:
    if !(> self.runvalue 50s) goto 0x00028C
0x000128:
    self.runaway = 1s
    call (snd_play[]:int32 (var 50s))
    [obj_heart].hspeed = -3s
    [obj_heart].sprite_index = 50s
    [obj_heart].image_speed = 0.5d
    [OBJ_WRITER].halt = 3s
    push global.xp
    global.xp = (+ -5s 3s:xpreward)
    push global.gold
    global.gold = (+ -5s 3s:goldreward)
    self.tlvl = global.lv
    call (script_execute[]:int32 (var 55s))
    if !(== self.levelup 1s) goto 0x000214
0x000200:
    call (snd_play[]:int32 (var 49s))
0x000214:
    global.msc = 14s
    push (var 785s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    stog.flag[11s] = 1s
    push -5s
    stog.flag[(+ 24s:flag 1s)] = 24s
0x00028C:
    exit
