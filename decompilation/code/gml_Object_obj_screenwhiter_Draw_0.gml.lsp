0x000000:
    if !(== self.ex 0s) goto 0x00007C
0x000014:
    if !(== self.atimer 0s) goto 0x000048
0x000028:
    self.aaa = (+ self.aaa 0.03d)
0x000048:
    if !(== self.atimer 1s) goto 0x00007C
0x00005C:
    self.aaa = (- self.aaa 0.03d)
0x00007C:
    if !(== self.ex 1s) goto 0x0000F8
0x000090:
    if !(== self.atimer 0s) goto 0x0000C4
0x0000A4:
    self.aaa = (+ self.aaa 0.015d)
0x0000C4:
    if !(== self.atimer 1s) goto 0x0000F8
0x0000D8:
    self.aaa = (- self.aaa 0.015d)
0x0000F8:
    if !(== self.ex 2s) goto 0x000174
0x00010C:
    if !(== self.atimer 0s) goto 0x000140
0x000120:
    self.aaa = (+ self.aaa 0.0075d)
0x000140:
    if !(== self.atimer 1s) goto 0x000174
0x000154:
    self.aaa = (- self.aaa 0.0075d)
0x000174:
    if !(<= self.aaa -0.03d) goto 0x00019C
0x000190:
    call (instance_destroy[]:int32 )
0x00019C:
    if !(>= self.aaa 1.2d) goto 0x0001D0
0x0001B8:
    self.aaa = 1s
    self.atimer = 1s
0x0001D0:
    call (draw_set_alpha[]:int32 self.aaa)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x000244:
    exit
