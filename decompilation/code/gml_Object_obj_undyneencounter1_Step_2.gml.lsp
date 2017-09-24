0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0000E4
0x000018:
    pushenv 1570s 0x000078
0x000020:
    push self.x
    stog.view_xview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) (/ self.sprite_width (double 2s))))
0x000078:
    popenv 0x000020
0x00007C:
    push -5s
    if !(== 85s:flag 1s) goto 0x0000E4
0x000098:
    pushenv 1570s 0x0000E0
0x0000A0:
    stog.view_xview[0s] = (floor[]:int32 (+ (- self.x 160s) (/ self.sprite_width (double 2s))))
0x0000E0:
    popenv 0x0000A0
0x0000E4:
    exit
