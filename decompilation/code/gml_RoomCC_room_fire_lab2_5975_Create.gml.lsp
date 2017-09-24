0x000000:
    self.image_xscale = 6s
    self.image_yscale = 3s
    self.xstring1 = "* (Looks like Alphys's work&  table.^1)&* (Seems dusty.)/%%"
    self.xno = 0s
    push -5s
    if !(== 7s:flag 0s) goto 0x00006C
0x000050:
    push -5s
    push (>= 493s:flag 10s)
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x0000C8
0x000074:
    self.xstring1 = "* (Looks like Mettaton is&  undergoing repairs.)/%%"
    self.met = (scr_marker[]:int32 (var 1667s) (var 80s) (var 400s))
    push 300000
    stog.depth* = (int32 self.met)
0x0000C8:
    exit
