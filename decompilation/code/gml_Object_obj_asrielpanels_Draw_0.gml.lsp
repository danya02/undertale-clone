0x000000:
    if !(== self.active 1s) goto 0x000494
0x000014:
    if !(< self.on 3s) goto 0x000080
0x000028:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (var 56s) (var 120s) self.image_index self.sprite_index)
0x000080:
    if !(== self.on 1s) goto 0x0000A8
0x000094:
    push (< self.image_alpha 1s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000D0
0x0000B0:
    self.image_alpha = (+ self.image_alpha 0.06d)
0x0000D0:
    if !(== self.on 0s) goto 0x0000F8
0x0000E4:
    push (> self.image_alpha 0s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x00015C
0x000100:
    if !(< self.image_index 4s) goto 0x000138
0x000114:
    self.image_alpha = (- self.image_alpha 0.06d)
    goto 0x00015C
0x000138:
    self.on = 2s
    self.memtimer = 250s
    self.wht = 0s
0x00015C:
    self.memtimer = (+ self.memtimer 1s)
    if !(== self.memtimer 120s) goto 0x000194
0x000188:
    self.on = 0s
0x000194:
    if !(== self.memtimer 138s) goto 0x0001C0
0x0001A8:
    self.image_index = (+ self.image_index 1s)
0x0001C0:
    if !(== self.memtimer 141s) goto 0x0001EC
0x0001D4:
    self.on = 1s
    self.memtimer = 0s
0x0001EC:
    if !(== self.on 2s) goto 0x0002F0
0x000200:
    self.wht = (+ self.wht 0.02d)
    call (draw_set_alpha[]:int32 self.wht)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(> self.wht 1.18d) goto 0x0002F0
0x0002B0:
    self.on = 3s
    global.battlegroup = 256s
    stog.flag[501s] = 3s
    call (room_goto[]:int32 (var 306s))
0x0002F0:
    if !(== self.on 3s) goto 0x0003B8
0x000304:
    self.wht = (- self.wht 0.05d)
    call (draw_set_alpha[]:int32 self.wht)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(< self.wht 0s) goto 0x0003B8
0x0003AC:
    self.on = 4s
0x0003B8:
    self.xtimer = (+ self.xtimer 1s)
    self.qual = 0s
    if !(== self.xtimer 2263s) goto 0x0003FC
0x0003F0:
    self.qual = 1s
0x0003FC:
    if !(== (caster_is_playing[]:int32 global.batmusic) 0s) goto 0x000434
0x000418:
    push (== (caster_is_playing[]:int32 global.batmusic2) 0s)
    goto 0x000438
0x000434:
    push 0s
0x000438:
    if !pop goto 0x000448
0x00043C:
    self.qual = 1s
0x000448:
    if !(== self.qual 1s) goto 0x000494
0x00045C:
    self.xtimer = 2266s
    call (caster_loop[]:int32 (var 0.85d) self.thisvol global.batmusic2)
0x000494:
    exit
