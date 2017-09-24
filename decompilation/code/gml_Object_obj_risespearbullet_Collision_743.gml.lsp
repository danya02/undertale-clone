0x000000:
    if !(> self.part 0s) goto 0x00003C
0x000014:
    if !(< self.part 4s) goto 0x00003C
0x000028:
    push (== self.deactivate 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000050
0x000044:
    call (scr_damagestandard_x[]:int32 )
0x000050:
    exit
