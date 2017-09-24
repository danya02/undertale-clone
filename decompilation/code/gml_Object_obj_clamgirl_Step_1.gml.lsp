0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_npc_anim[]:int32 )
    if !(> self.myinteract 0s) goto 0x000064
0x000054:
    self.sprite_index = 1955s
    goto 0x000070
0x000064:
    self.sprite_index = 1954s
0x000070:
    exit
