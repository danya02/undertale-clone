0x000000:
    if !(< (distance_to_point[]:int32 743.y self.x) 100s) goto 0x000060
0x000024:
    self.hspeed = (- (/ (double 180s) (+ (distance_to_point[]:int32 self.y 743.x) 10s)) 1s)
0x000060:
    if !(> 743.x self.x) goto 0x00008C
0x000078:
    self.hspeed = (- self.hspeed)
0x00008C:
    if !(< global.turntimer 1s) goto 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    push self.x
    if !(< -5s 0s:idealborder) goto 0x0000D8
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    push self.x
    if !(> -5s 1s:idealborder) goto 0x000104
0x0000F8:
    call (instance_destroy[]:int32 )
0x000104:
    push self.y
    if !(> -5s 2s:idealborder) goto 0x000130
0x000124:
    self.visible = 1s
0x000130:
    push self.y
    if !(> -5s 3s:idealborder) goto 0x00015C
0x000150:
    call (instance_destroy[]:int32 )
0x00015C:
    exit
