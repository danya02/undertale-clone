0x000000:
    if (== self.type 0s) goto 0x00003C
0x000014:
    if (== self.type 1s) goto 0x00003C
0x000028:
    push (== self.type 2s)
    goto 0x000040
0x00003C:
    push 1s
0x000040:
    if !pop goto 0x0002B4
0x000044:
    self.ch = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    self.g = (instance_create[]:int32 (var 353s) (var 0s) (var 0s))
    push (+ self.ch 1s)
    stog.choice* = (int32 self.g)
    push 1s
    stog.side* = (int32 self.g)
    self.ch2 = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    if !(== self.ch2 self.ch) goto 0x000128
0x000110:
    self.ch2 = (+ self.ch2 1s)
0x000128:
    if !(> self.ch2 2s) goto 0x000148
0x00013C:
    self.ch2 = 0s
0x000148:
    self.g2 = (instance_create[]:int32 (var 353s) (var 0s) (var 0s))
    push (+ self.ch2 1s)
    stog.choice* = (int32 self.g2)
    push 1s
    stog.side* = (int32 self.g2)
    if !(== self.type 0s) goto 0x000204
0x0001C0:
    push 8s
    stog.speedfactor* = (int32 self.g)
    push 8s
    stog.speedfactor* = (int32 self.g2)
    stog.alarm[0s] = 19s
0x000204:
    if !(== self.type 1s) goto 0x00025C
0x000218:
    push 11s
    stog.speedfactor* = (int32 self.g)
    push 11s
    stog.speedfactor* = (int32 self.g2)
    stog.alarm[0s] = 16s
0x00025C:
    if !(== self.type 2s) goto 0x0002B4
0x000270:
    push 13s
    stog.speedfactor* = (int32 self.g)
    push 13s
    stog.speedfactor* = (int32 self.g2)
    stog.alarm[0s] = 14s
0x0002B4:
    if (== self.type 3s) goto 0x0002F0
0x0002C8:
    if (== self.type 4s) goto 0x0002F0
0x0002DC:
    push (== self.type 5s)
    goto 0x0002F4
0x0002F0:
    push 1s
0x0002F4:
    if !pop goto 0x0003E8
0x0002F8:
    self.g = (instance_create[]:int32 (var 351s) (var 0s) (var 0s))
    if !(== self.type 3s) goto 0x000360
0x000334:
    push 4s
    stog.speedfactor* = (int32 self.g)
    stog.alarm[0s] = 17s
0x000360:
    if !(== self.type 4s) goto 0x0003A8
0x000374:
    push 3.5d
    stog.speedfactor* = (int32 self.g)
    stog.alarm[0s] = 17s
0x0003A8:
    if !(== self.type 5s) goto 0x0003E8
0x0003BC:
    push 3s
    stog.speedfactor* = (int32 self.g)
    stog.alarm[0s] = 16s
0x0003E8:
    if (== self.type 6s) goto 0x000424
0x0003FC:
    if (== self.type 7s) goto 0x000424
0x000410:
    push (== self.type 8s)
    goto 0x000428
0x000424:
    push 1s
0x000428:
    if !pop goto 0x0004FC
0x00042C:
    self.g = (instance_create[]:int32 (var 355s) (var 0s) (var 0s))
    push 13s
    stog.speedfactor* = (int32 self.g)
    push 0s
    stog.side* = (int32 self.g)
    if !(== self.type 6s) goto 0x0004AC
0x000498:
    stog.alarm[0s] = 24s
0x0004AC:
    if !(== self.type 7s) goto 0x0004D4
0x0004C0:
    stog.alarm[0s] = 22s
0x0004D4:
    if !(== self.type 8s) goto 0x0004FC
0x0004E8:
    stog.alarm[0s] = 19s
0x0004FC:
    if (== self.type 9s) goto 0x00054C
0x000510:
    if (== self.type 10s) goto 0x00054C
0x000524:
    if (== self.type 11s) goto 0x00054C
0x000538:
    push (== self.type 12s)
    goto 0x000550
0x00054C:
    push 1s
0x000550:
    if !pop goto 0x00067C
0x000554:
    self.g = (instance_create[]:int32 (var 353s) (var 0s) (var 0s))
    if !(== self.type 9s) goto 0x0005BC
0x000590:
    stog.alarm[0s] = 15s
    push 4s
    stog.speedfactor* = (int32 self.g)
0x0005BC:
    if !(== self.type 10s) goto 0x0005FC
0x0005D0:
    stog.alarm[0s] = 9s
    push 6s
    stog.speedfactor* = (int32 self.g)
0x0005FC:
    if !(== self.type 11s) goto 0x00063C
0x000610:
    stog.alarm[0s] = 8s
    push 8s
    stog.speedfactor* = (int32 self.g)
0x00063C:
    if !(== self.type 12s) goto 0x00067C
0x000650:
    stog.alarm[0s] = 7s
    push 10s
    stog.speedfactor* = (int32 self.g)
0x00067C:
    if (== self.type 13s) goto 0x0006B8
0x000690:
    if (== self.type 14s) goto 0x0006B8
0x0006A4:
    push (== self.type 16s)
    goto 0x0006BC
0x0006B8:
    push 1s
0x0006BC:
    if !pop goto 0x0007DC
0x0006C0:
    self.g = (instance_create[]:int32 (var 354s) (var 0s) (var 0s))
    self.g = (instance_create[]:int32 (var 354s) (var 0s) (var 0s))
    self.g = (instance_create[]:int32 (var 354s) (var 0s) (var 0s))
    if !(== self.type 16s) goto 0x000764
0x00074C:
    [obj_vertspider].dmg = (- self.dmg 1s)
0x000764:
    if !(== self.type 13s) goto 0x00078C
0x000778:
    stog.alarm[0s] = 22s
0x00078C:
    if !(== self.type 14s) goto 0x0007B4
0x0007A0:
    stog.alarm[0s] = 18s
0x0007B4:
    if !(== self.type 16s) goto 0x0007DC
0x0007C8:
    stog.alarm[0s] = 16s
0x0007DC:
    if !(bool (instance_exists[]:int32 (var 678s))) goto 0x000848
0x0007F4:
    [blt_parent].dmg = self.dmg
    if !(bool (instance_exists[]:int32 (var 360s))) goto 0x000848
0x00081C:
    if !(>= 360.turnamt 15s) goto 0x000848
0x000830:
    [blt_parent].dmg = (- self.dmg 1s)
0x000848:
    exit
