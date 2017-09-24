0x000000:
    if !(== self.d 0s) goto 0x000020
0x000014:
    call (scr_depth[]:int32 )
0x000020:
    if !(== self.fun 0s) goto 0x00005C
0x000034:
    call (script_execute[]:int32 (var 2s) (var 106s))
    call (scr_npc_anim[]:int32 )
0x00005C:
    exit
