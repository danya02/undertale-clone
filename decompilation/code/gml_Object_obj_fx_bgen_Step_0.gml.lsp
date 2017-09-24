0x000000:
    if !(== self.attack 1s) goto 0x0000E8
0x000014:
    self.counter = (+ self.counter 1s)
    if !(== self.counter 10s) goto 0x000094
0x000040:
    call (instance_create[]:int32 (var 1633s) 1589.y 1589.x)
    call (instance_create[]:int32 (var 1633s) 1589.y (+ 1589.x 1589.op))
0x000094:
    if !(== self.counter 20s) goto 0x0000C8
0x0000A8:
    pushenv 1589s 0x0000C4
0x0000B0:
    call (event_user[]:int32 (var 1s))
0x0000C4:
    popenv 0x0000B0
0x0000C8:
    if !(>= self.counter 22s) goto 0x0000E8
0x0000DC:
    self.counter = 16s
0x0000E8:
    if !(== self.attack 2s) goto 0x000168
0x0000FC:
    self.counter = (+ self.counter 1s)
    if !(== self.counter 14s) goto 0x000148
0x000128:
    pushenv 1591s 0x000144
0x000130:
    call (event_user[]:int32 (var 1s))
0x000144:
    popenv 0x000130
0x000148:
    if !(>= self.counter 16s) goto 0x000168
0x00015C:
    self.counter = 13s
0x000168:
    if !(== self.attack 3s) goto 0x000254
0x00017C:
    self.counter = (+ self.counter 1s)
    self.counter2 = (+ self.counter2 1s)
    if !(> self.counter 20s) goto 0x0001F4
0x0001C0:
    call (instance_create[]:int32 (var 1638s) (var 200s) (+ 110s (random[]:int32 (var 400s))))
0x0001F4:
    if !(> self.counter 40s) goto 0x000214
0x000208:
    self.counter = 0s
0x000214:
    if !(== self.counter2 90s) goto 0x000254
0x000228:
    pushenv 1590s 0x000244
0x000230:
    call (event_user[]:int32 (var 1s))
0x000244:
    popenv 0x000230
0x000248:
    self.counter2 = -999s
0x000254:
    if !(== self.attack 4s) goto 0x000304
0x000268:
    self.counter = (+ self.counter 1s)
    self.counter2 = (+ self.counter2 1s)
    if !(< self.counter2 90s) goto 0x0002E4
0x0002AC:
    if !(== self.counter 8s) goto 0x0002E4
0x0002C0:
    call (instance_create[]:int32 (var 1645s) (var 0s) (var 0s))
0x0002E4:
    if !(>= self.counter 16s) goto 0x000304
0x0002F8:
    self.counter = -5s
0x000304:
    if !(== self.attack 5s) goto 0x0004B8
0x000318:
    self.counter = (+ self.counter 1s)
    self.counter2 = (+ self.counter2 1s)
    if !(< self.counter2 100s) goto 0x0004B8
0x00035C:
    if !(== self.counter 10s) goto 0x0003E0
0x000370:
    self.gn = (instance_create[]:int32 (var 1635s) (var -100s) (+ 100s (random[]:int32 (var 420s))))
    self.gn2 = (instance_create[]:int32 (var 1635s) (var -100s) (+ 100s (random[]:int32 (var 420s))))
0x0003E0:
    if !(== self.counter 12s) goto 0x000444
0x0003F4:
    self.gn = (instance_create[]:int32 (var 1635s) (var -100s) (+ -20s (random[]:int32 (var 130s))))
    push 16s
    stog.vspeed* = (int32 self.gn)
0x000444:
    if !(== self.counter 14s) goto 0x000498
0x000458:
    call (instance_create[]:int32 (var 1635s) (var -100s) (- (+ self.room_width 20s) (random[]:int32 (var 130s))))
0x000498:
    if !(>= self.counter 18s) goto 0x0004B8
0x0004AC:
    self.counter = 9s
0x0004B8:
    if !(== self.attack 6s) goto 0x0005A4
0x0004CC:
    self.counter = (+ self.counter 1s)
    if !(== self.counter 12s) goto 0x000524
0x0004F8:
    call (instance_create[]:int32 (var 1631s) (var 140s) (random[]:int32 (var 530s)))
0x000524:
    if !(== self.counter 24s) goto 0x000564
0x000538:
    call (instance_create[]:int32 (var 1631s) (var 140s) (random[]:int32 (var 530s)))
0x000564:
    if !(== self.counter 36s) goto 0x0005A4
0x000578:
    call (instance_create[]:int32 (var 1631s) (var 140s) (random[]:int32 (var 530s)))
0x0005A4:
    if !(== self.attack 7s) goto 0x000664
0x0005B8:
    self.counter2 = (+ self.counter2 1s)
    self.counter = (+ self.counter 1s)
    if !(< self.counter 100s) goto 0x000664
0x0005FC:
    if !(== self.counter 16s) goto 0x000644
0x000610:
    call (instance_create[]:int32 (var 1629s) (+ 200s (random[]:int32 (var 280s))) (var 0s))
0x000644:
    if !(>= self.counter 20s) goto 0x000664
0x000658:
    self.counter = 15s
0x000664:
    if !(== self.attack 8s) goto 0x0007F4
0x000678:
    self.counter = (+ self.counter 1s)
    if !(== self.counter 2s) goto 0x0007F4
0x0006A4:
    pushenv 1656s 0x0006C0
0x0006AC:
    call (event_user[]:int32 (var 6s))
0x0006C0:
    popenv 0x0006AC
0x0006C4:
    self.v_side = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.v_side 1s) goto 0x00076C
0x0006F8:
    if !(== (int32 self.leftarm):acon 0s) goto 0x000744
0x000718:
    pushenv (int32 self.leftarm) 0x00073C
0x000728:
    call (event_user[]:int32 (var 1s))
0x00073C:
    popenv 0x000728
0x000740:
    goto 0x00076C
0x000744:
    pushenv (int32 self.rightarm) 0x000768
0x000754:
    call (event_user[]:int32 (var 1s))
0x000768:
    popenv 0x000754
0x00076C:
    if !(== self.v_side 0s) goto 0x0007F4
0x000780:
    if !(== (int32 self.rightarm):acon 0s) goto 0x0007CC
0x0007A0:
    pushenv (int32 self.rightarm) 0x0007C4
0x0007B0:
    call (event_user[]:int32 (var 1s))
0x0007C4:
    popenv 0x0007B0
0x0007C8:
    goto 0x0007F4
0x0007CC:
    pushenv (int32 self.leftarm) 0x0007F0
0x0007DC:
    call (event_user[]:int32 (var 1s))
0x0007F0:
    popenv 0x0007DC
0x0007F4:
    if !(== self.attack 9s) goto 0x0008B4
0x000808:
    self.counter = (+ self.counter 1s)
    if !(== self.counter 18s) goto 0x00087C
0x000834:
    call (instance_create[]:int32 (var 1640s) (var 140s) (var 110s))
    call (instance_create[]:int32 (var 1640s) (var 140s) (var 530s))
0x00087C:
    if !(>= self.counter 93s) goto 0x0008B4
0x000890:
    if !(bool (instance_exists[]:int32 (var 1640s))) goto 0x0008B4
0x0008A8:
    [obj_floweyx_flamethrower].con = 3s
0x0008B4:
    if !(== self.attack 20s) goto 0x000A0C
0x0008C8:
    self.counter = (+ self.counter 1s)
    self.counter2 = (+ self.counter2 1s)
    if !(> self.counter 20s) goto 0x00095C
0x00090C:
    self.v = (instance_create[]:int32 (var 1638s) (var 200s) (+ 110s (random[]:int32 (var 400s))))
    push 1s
    stog.memorymode* = (int32 self.v)
0x00095C:
    if !(> self.counter 40s) goto 0x00097C
0x000970:
    self.counter = 0s
0x00097C:
    if !(== self.counter2 30s) goto 0x0009C0
0x000990:
    pushenv 1585s 0x0009AC
0x000998:
    call (event_user[]:int32 (var 4s))
0x0009AC:
    popenv 0x000998
0x0009B0:
    self.nowhp = global.my_hp
0x0009C0:
    if !(== self.counter2 70s) goto 0x000A0C
0x0009D4:
    if !(>= global.my_hp self.nowhp) goto 0x000A0C
0x0009EC:
    pushenv 1585s 0x000A08
0x0009F4:
    call (event_user[]:int32 (var 5s))
0x000A08:
    popenv 0x0009F4
0x000A0C:
    if !(== self.attack 21s) goto 0x000CC0
0x000A20:
    if !(== self.counter2 15s) goto 0x000A44
0x000A34:
    self.checkx1 = 1581.x
0x000A44:
    self.counter = (+ self.counter 1s)
    self.counter2 = (+ self.counter2 1s)
    if !(< self.counter2 40s) goto 0x000ADC
0x000A88:
    if !(== self.counter 14s) goto 0x000ABC
0x000A9C:
    pushenv 1591s 0x000AB8
0x000AA4:
    call (event_user[]:int32 (var 1s))
0x000AB8:
    popenv 0x000AA4
0x000ABC:
    if !(>= self.counter 16s) goto 0x000ADC
0x000AD0:
    self.counter = 13s
0x000ADC:
    if !(== self.counter2 45s) goto 0x000B00
0x000AF0:
    self.checkx2 = 1581.x
0x000B00:
    if !(> self.counter2 50s) goto 0x000B28
0x000B14:
    push (< self.counter2 69s)
    goto 0x000B2C
0x000B28:
    push 0s
0x000B2C:
    if !pop goto 0x000C00
0x000B30:
    self.v = (instance_create[]:int32 (var 1638s) (var 200s) (+ 110s (random[]:int32 (var 400s))))
    if !(< self.checkx2 self.checkx1) goto 0x000BA8
0x000B80:
    stog.direction* = (- (int32 self.v):direction 12s)
0x000BA8:
    push (int32 self.v)
    if !(> self.checkx2 self.checkx1) goto 0x000BE8
0x000BC0:
    stog.direction* = (+ (int32 self.v):direction 12s)
0x000BE8:
    push (int32 self.v)
    push 1s
    stog.memorymode* = (int32 self.v)
0x000C00:
    if !(== self.counter2 40s) goto 0x000C5C
0x000C14:
    self.nowhp = global.my_hp
    pushenv 1585s 0x000C40
0x000C2C:
    call (event_user[]:int32 (var 4s))
0x000C40:
    popenv 0x000C2C
0x000C44:
    pushenv 1636s 0x000C58
0x000C4C:
    self.memorymode = 1s
0x000C58:
    popenv 0x000C4C
0x000C5C:
    if !(== self.counter2 70s) goto 0x000CC0
0x000C70:
    if !(>= global.my_hp self.nowhp) goto 0x000CA8
0x000C88:
    pushenv 1585s 0x000CA4
0x000C90:
    call (event_user[]:int32 (var 5s))
0x000CA4:
    popenv 0x000C90
0x000CA8:
    pushenv 1636s 0x000CBC
0x000CB0:
    self.memorymode = 0s
0x000CBC:
    popenv 0x000CB0
0x000CC0:
    if !(== self.attack 22s) goto 0x000D6C
0x000CD4:
    self.counter = (+ self.counter 1s)
    self.counter2 = (+ self.counter2 1s)
    if !(< self.counter2 70s) goto 0x000D6C
0x000D18:
    if !(== self.counter 32s) goto 0x000D4C
0x000D2C:
    pushenv 1591s 0x000D48
0x000D34:
    call (event_user[]:int32 (var 1s))
0x000D48:
    popenv 0x000D34
0x000D4C:
    if !(>= self.counter 36s) goto 0x000D6C
0x000D60:
    self.counter = 31s
0x000D6C:
    if !(== self.attack 23s) goto 0x000E88
0x000D80:
    self.counter = (+ self.counter 1s)
    self.counter = (+ self.counter 1s)
    if !(== self.counter 30s) goto 0x000E18
0x000DC4:
    call (instance_create[]:int32 (var 1633s) 1589.y 1589.x)
    call (instance_create[]:int32 (var 1633s) 1589.y (+ 1589.x 1589.op))
0x000E18:
    if !(== self.counter 40s) goto 0x000E40
0x000E2C:
    push (< self.counter2 80s)
    goto 0x000E44
0x000E40:
    push 0s
0x000E44:
    if !pop goto 0x000E68
0x000E48:
    pushenv 1589s 0x000E64
0x000E50:
    call (event_user[]:int32 (var 1s))
0x000E64:
    popenv 0x000E50
0x000E68:
    if !(>= self.counter 42s) goto 0x000E88
0x000E7C:
    self.counter = 32s
0x000E88:
    if !(== self.attack 99s) goto 0x000EE8
0x000E9C:
    self.counter = (+ self.counter 1s)
    if !(== self.counter 2s) goto 0x000EE8
0x000EC8:
    pushenv 1590s 0x000EE4
0x000ED0:
    call (event_user[]:int32 (var 1s))
0x000EE4:
    popenv 0x000ED0
0x000EE8:
    exit
