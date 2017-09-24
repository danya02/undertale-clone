0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_npc_anim[]:int32 )
    self.image_alpha = 0s
    self.dist = (distance_to_object[]:int32 (var 1570s))
    if !(< self.dist 20s) goto 0x000144
0x000078:
    if !(== self.played 0s) goto 0x0000A8
0x00008C:
    push -5s
    push (== 94s:flag 0s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000F0
0x0000B0:
    call (caster_loop[]:int32 (var 0.5d) (var 0.8d) global.currentsong)
    self.played = 1s
0x0000F0:
    self.disto = (/ (double 10s) (+ self.dist 1s))
    if !(> self.disto 1s) goto 0x000134
0x000128:
    self.disto = 1s
0x000134:
    self.image_alpha = self.disto
0x000144:
    exit
