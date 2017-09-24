0x000000:
    self.ptimer = (+ self.ptimer 1s)
    if !(== self.ptimer 40s) goto 0x000044
0x00002C:
    global.facing = 2s
    self.vspeed = 0s
0x000044:
    if !(== self.ptimer 70s) goto 0x000098
0x000058:
    call (snd_play[]:int32 (var 13s))
    self.sprite_index = 1819s
    self.image_index = 0s
    self.image_speed = 0.334d
0x000098:
    if !(> self.ptimer 70s) goto 0x0000D4
0x0000AC:
    if !(== self.sprite_index 1819s) goto 0x0000D4
0x0000C0:
    push (> self.image_index 4s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000F4
0x0000DC:
    self.image_index = 4s
    self.image_speed = 0s
0x0000F4:
    if !(== self.ptimer 110s) goto 0x000128
0x000108:
    call (snd_play[]:int32 (var 13s))
    self.vspeed = 5s
0x000128:
    if !(> self.ptimer 110s) goto 0x000170
0x00013C:
    if !(> self.y (- self.ystart 5s)) goto 0x000170
0x00015C:
    push (== self.align 0s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x0001D8
0x000178:
    self.align = 1s
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 21s))
    self.vspeed = 0s
    self.y = self.ystart
0x0001D8:
    if !(> self.ptimer 110s) goto 0x000200
0x0001EC:
    push (> self.vspeed 0s)
    goto 0x000204
0x000200:
    push 0s
0x000204:
    if !pop goto 0x000248
0x000208:
    self.g = (scr_afterimage[]:int32 (var 0s) (var 6s))
    push 0.5d
    stog.image_alpha* = (int32 self.g)
0x000248:
    if !(== self.ptimer 160s) goto 0x000290
0x00025C:
    call (snd_play[]:int32 (var 106s))
    self.sprite_index = 1820s
    self.image_speed = 0.5d
0x000290:
    if !(> self.ptimer 160s) goto 0x0002E4
0x0002A4:
    self.x = (int32 self.clip):x
    self.y = (+ (int32 self.clip):y 10s)
0x0002E4:
    exit
