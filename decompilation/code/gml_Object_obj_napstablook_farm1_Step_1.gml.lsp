0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_npc_anim[]:int32 )
    call (script_execute[]:int32 (var 2s) (var 106s))
    self.image_alpha = 0s
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000100
0x000080:
    self.dist = (distance_to_object[]:int32 (var 1570s))
    if !(< self.dist 60s) goto 0x000100
0x0000AC:
    self.disto = (/ (double 5s) (+ self.dist 2s))
    if !(> self.disto 1s) goto 0x0000F0
0x0000E4:
    self.disto = 1s
0x0000F0:
    self.image_alpha = self.disto
0x000100:
    exit
