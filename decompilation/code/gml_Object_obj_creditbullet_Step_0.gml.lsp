0x000000:
    self.image_angle = (+ self.image_angle self.aa)
    if !(> self.y 800s) goto 0x000044
0x000030:
    push (> self.vspeed 0s)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x000058
0x00004C:
    call (instance_destroy[]:int32 )
0x000058:
    if !(> self.x 800s) goto 0x000080
0x00006C:
    push (> self.hspeed 0s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x000094
0x000088:
    call (instance_destroy[]:int32 )
0x000094:
    if !(< self.y -200s) goto 0x0000BC
0x0000A8:
    push (< self.vspeed 0s)
    goto 0x0000C0
0x0000BC:
    push 0s
0x0000C0:
    if !pop goto 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    if !(< self.x -200s) goto 0x0000F8
0x0000E4:
    push (< self.hspeed 0s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x00010C
0x000100:
    call (instance_destroy[]:int32 )
0x00010C:
    if !(== self.action 1s) goto 0x00021C
0x000120:
    if !(< self.hspeed 0s) goto 0x000164
0x000134:
    push (< self.x (- self.room_width (/ self.width (double 2s))))
    goto 0x000168
0x000164:
    push 0s
0x000168:
    if !pop goto 0x0001A0
0x00016C:
    if !(> self.speed 0s) goto 0x0001A0
0x000180:
    self.speed = (- self.speed 0.5d)
0x0001A0:
    if !(> self.hspeed 0s) goto 0x0001E0
0x0001B4:
    push (> self.x (+ 0s (/ self.width (double 2s))))
    goto 0x0001E4
0x0001E0:
    push 0s
0x0001E4:
    if !pop goto 0x00021C
0x0001E8:
    if !(> self.speed 0s) goto 0x00021C
0x0001FC:
    self.speed = (- self.speed 0.5d)
0x00021C:
    if !(== self.action 3s) goto 0x0002CC
0x000230:
    if !(< self.x -50s) goto 0x000258
0x000244:
    push (< self.hspeed 0s)
    goto 0x00025C
0x000258:
    push 0s
0x00025C:
    if !pop goto 0x000278
0x000260:
    self.x = (+ self.x 710s)
0x000278:
    if !(> self.x (+ self.room_width 50s)) goto 0x0002AC
0x000298:
    push (> self.hspeed 0s)
    goto 0x0002B0
0x0002AC:
    push 0s
0x0002B0:
    if !pop goto 0x0002CC
0x0002B4:
    self.x = (- self.x 710s)
0x0002CC:
    exit
