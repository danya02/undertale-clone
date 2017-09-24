0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x00007C
0x000018:
    pushenv 1570s 0x000078
0x000020:
    push self.x
    stog.view_xview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) (/ self.sprite_width (double 2s))))
0x000078:
    popenv 0x000020
0x00007C:
    exit
