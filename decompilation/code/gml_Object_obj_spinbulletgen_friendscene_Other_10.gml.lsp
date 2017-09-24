0x000000:
    [obj_spinbullet_friendscene].targetx = self.targetx
    [obj_spinbullet_friendscene].targety = self.targety
    if !(== self.spec 0s) goto 0x000070
0x000034:
    pushenv 1665s 0x000060
0x00003C:
    call (move_towards_point[]:int32 (var 15s) self.targety self.targetx)
0x000060:
    popenv 0x00003C
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    if !(== self.spec 2s) goto 0x0000D0
0x000084:
    pushenv 1665s 0x0000B8
0x00008C:
    call (move_towards_point[]:int32 (var 0.8d) self.targety self.targetx)
0x0000B8:
    popenv 0x00008C
0x0000BC:
    stog.alarm[0s] = 90s
0x0000D0:
    exit
