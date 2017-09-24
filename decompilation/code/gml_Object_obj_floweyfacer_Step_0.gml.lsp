0x000000:
    if (== self.type 0s) goto 0x000028
0x000014:
    push (== self.type 3s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x000388
0x000030:
    self.image_speed = 0s
    self.image_alpha = 1s
    self.image_xscale = 2s
    self.image_yscale = 2s
    if !(== self.type 0s) goto 0x0000E4
0x000074:
    if !(== self.set 0s) goto 0x000094
0x000088:
    self.sprite_index = 2197s
0x000094:
    if !(== self.set 1s) goto 0x0000B4
0x0000A8:
    self.sprite_index = 2198s
0x0000B4:
    if !(== self.set 2s) goto 0x0000D4
0x0000C8:
    self.sprite_index = 2199s
0x0000D4:
    self.image_index = global.faceemotion
0x0000E4:
    if !(== self.type 3s) goto 0x000118
0x0000F8:
    self.image_speed = 0.5d
    self.sprite_index = 2200s
0x000118:
    if !(!= self.moved 2s) goto 0x000158
0x00012C:
    if !(bool (caster_is_playing[]:int32 self.ns)) goto 0x000158
0x000144:
    call (caster_stop[]:int32 self.ns)
0x000158:
    if !(== self.moved 2s) goto 0x000388
0x00016C:
    self.image_xscale = (+ 1.98d (random[]:int32 (var 0.02d)))
    self.image_yscale = (+ 1.98d (random[]:int32 (var 0.02d)))
    self.x = (+ self.xx (random[]:int32 (var 1s)))
    self.y = (+ self.yy (random[]:int32 (var 1s)))
    self.helltimer = (+ self.helltimer 1s)
    if !(< self.helltimer 50s) goto 0x00026C
0x000240:
    if !(bool (caster_is_playing[]:int32 self.ns)) goto 0x00026C
0x000258:
    call (caster_stop[]:int32 self.ns)
0x00026C:
    if !(== self.helltimer 50s) goto 0x0002C0
0x000280:
    if !(~ (bool (caster_is_playing[]:int32 self.ns))) goto 0x0002C0
0x00029C:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.ns)
0x0002C0:
    if !(>= self.helltimer 50s) goto 0x000320
0x0002D4:
    self.sprite_index = 2206s
    self.image_index = (random[]:int32 (var 99s))
    self.image_xscale = 0.86d
    self.image_yscale = 0.58d
0x000320:
    if !(>= self.helltimer 56s) goto 0x000388
0x000334:
    self.helltimer = (- -100s (floor[]:int32 (random[]:int32 (var 320s))))
    if !(bool (caster_is_playing[]:int32 self.ns)) goto 0x000388
0x000374:
    call (caster_stop[]:int32 self.ns)
0x000388:
    if !(== self.type 1s) goto 0x000428
0x00039C:
    self.image_alpha = 1s
    self.sprite_index = 2206s
    self.image_xscale = 0.86d
    self.image_yscale = 0.58d
    self.image_speed = 1s
    if !(~ (bool (caster_is_playing[]:int32 self.ns))) goto 0x000428
0x000404:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.ns)
0x000428:
    if !(== self.type 2s) goto 0x000474
0x00043C:
    if !(bool (caster_is_playing[]:int32 self.ns)) goto 0x000468
0x000454:
    call (caster_stop[]:int32 self.ns)
0x000468:
    self.image_alpha = 0s
0x000474:
    exit
