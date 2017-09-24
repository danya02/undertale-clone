0x000000:
    if !(== self.con 0s) goto 0x000240
0x000014:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.skip = 0s
    stog.msg[0s] = "* Ark Club: Meet here!&* Next meeting:&* Tuesday Oct 10th 8PM/%%"
    if !(== self.murd 1s) goto 0x0000AC
0x000088:
    self.skip = 1s
    stog.msg[0s] = "* (Art club is cancelled!)/%%"
0x0000AC:
    push -5s
    if !(== 281s:flag 1s) goto 0x0000EC
0x0000C8:
    stog.msg[0s] = "* (Art is dead.)/%%"
    self.skip = 1s
0x0000EC:
    push -5s
    if !(== 281s:flag 2s) goto 0x00012C
0x000108:
    stog.msg[0s] = "* Let's meet again someday!/%%"
    self.skip = 1s
0x00012C:
    push -5s
    if !(== 7s:flag 1s) goto 0x00016C
0x000148:
    stog.msg[0s] = "* Who knows what lies in the&  future for Art Club!?/%%"
    self.skip = 1s
0x00016C:
    if !(== self.skip 0s) goto 0x000200
0x000180:
    if !(== self.current_weekday 2s) goto 0x0001BC
0x000194:
    if !(== self.current_month 10s) goto 0x0001BC
0x0001A8:
    push (== self.current_day 10s)
    goto 0x0001C0
0x0001BC:
    push 0s
0x0001C0:
    if !pop goto 0x000200
0x0001C4:
    if (== self.current_hour 8s) goto 0x0001EC
0x0001D8:
    push (== self.current_hour 20s)
    goto 0x0001F0
0x0001EC:
    push 1s
0x0001F0:
    if !pop goto 0x000200
0x0001F4:
    self.con = 1s
0x000200:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000240:
    exit
