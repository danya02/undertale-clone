0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000168
0x000018:
    if !(== 1570.cutscene 1s) goto 0x000168
0x00002C:
    self.o = 1570s
    if !(>= 1570.x 450s) goto 0x000060
0x00004C:
    stog.view_object[0s] = -4s
0x000060:
    if !(< 1570.x 450s) goto 0x000168
0x000074:
    stog.view_object[0s] = 1570s
    push (int32 self.o):x
    stog.view_xview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) (/ (int32 self.o):sprite_width (double 2s))))
    push (int32 self.o):y
    stog.view_yview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) (/ (int32 self.o):sprite_height (double 2s))))
0x000168:
    exit
