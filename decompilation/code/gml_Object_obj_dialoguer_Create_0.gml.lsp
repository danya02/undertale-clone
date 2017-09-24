0x000000:
    self.count = 0s
    self.side = 0s
    global.facechange = 1s
    push -1s
    self.xx = (int32 self.view_current):view_xview
    push -1s
    self.yy = (int32 self.view_current):view_yview
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0001F0
0x00007C:
    if !(> 1570.y (+ self.yy 130s)) goto 0x000148
0x00009C:
    self.side = 0s
    if !(!= global.facechoice 0s) goto 0x00010C
0x0000BC:
    self.writer = (instance_create[]:int32 (var 782s) (- self.yy 5s) (+ self.xx 68s))
    call (script_execute[]:int32 (var 144s))
    goto 0x000144
0x00010C:
    self.writer = (instance_create[]:int32 (var 782s) (- self.yy 5s) (+ self.xx 10s))
0x000144:
    goto 0x0001F0
0x000148:
    self.side = 1s
    if !(!= global.facechoice 0s) goto 0x0001B8
0x000168:
    self.writer = (instance_create[]:int32 (var 782s) (+ self.yy 150s) (+ self.xx 68s))
    call (script_execute[]:int32 (var 144s))
    goto 0x0001F0
0x0001B8:
    self.writer = (instance_create[]:int32 (var 782s) (+ self.yy 150s) (+ self.xx 10s))
0x0001F0:
    exit
