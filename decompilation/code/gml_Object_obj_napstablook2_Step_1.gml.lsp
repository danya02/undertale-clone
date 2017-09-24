0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.talkedto 1s) goto 0x000064
0x000048:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x0000D4
0x00006C:
    self.myinteract = 4s
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(< self.image_alpha 0.1d) goto 0x0000D4
0x0000B4:
    stog.flag[36s] = 2s
    call (instance_destroy[]:int32 )
0x0000D4:
    exit
