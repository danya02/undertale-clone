0x000000:
    if !(== self.bonetalk4 1s) goto 0x0000F8
0x000014:
    stog.msg[0s] = " ALAS^1, POOR& PAPYRUS!/%%"
    if !(== self.murder 1s) goto 0x000058
0x000040:
    stog.msg[0s] = " W-WELL^1, THAT'S& NOT WHAT I& EXPECTED.../%%"
0x000058:
    global.typer = 22s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 52s) (+ self.x 145s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.bonetalk4 = 2s
0x0000F8:
    if !(== self.bonetalk4 3s) goto 0x000258
0x00010C:
    stog.msg[0s] = " WELL^1, AT LEAST I& STILL HAVE MY& HEAD!/%%"
    if !(== self.murder 1s) goto 0x0001B0
0x000138:
    stog.msg[0s] = " BUT.../"
    stog.msg[1s] = " ST..^1. STILL^1!& I BELIEVE IN& YOU!/"
    stog.msg[2s] = " YOU CAN DO A& LITTLE BETTER!/"
    stog.msg[3s] = " EVEN IF YOU& DON'T THINK SO!/"
    stog.msg[4s] = " I..^1.& I PROMISE.../%%"
0x0001B0:
    global.typer = 22s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 104s) (+ self.x 145s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.bonetalk4 = 3.5d
0x000258:
    stog.alarm[10s] = 2s
    if !(== self.bonetalk4 5s) goto 0x0002B4
0x000280:
    self.bonetalk4 = 6s
    call (event_user[]:int32 (var 2s))
    stog.alarm[10s] = -2s
0x0002B4:
    if !(== self.bonetalk4 4s) goto 0x000330
0x0002C8:
    global.xp = (+ global.xp 200s)
    push 7s
    stog.c* = (int32 self.dh)
    global.kills = (+ global.kills 1s)
    stog.alarm[10s] = 150s
    self.bonetalk4 = 5s
0x000330:
    if !(== self.bonetalk4 3.5d) goto 0x000368
0x00034C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00036C
0x000368:
    push 0s
0x00036C:
    if !pop goto 0x0003B0
0x000370:
    pushenv (int32 self.blcon) 0x00038C
0x000380:
    call (instance_destroy[]:int32 )
0x00038C:
    popenv 0x000380
0x000390:
    self.bonetalk4 = 4s
    stog.alarm[10s] = 100s
0x0003B0:
    if !(== self.bonetalk4 2.5d) goto 0x000404
0x0003CC:
    push 5s
    stog.c* = (int32 self.dh)
    self.bonetalk4 = 3s
    stog.alarm[10s] = 80s
0x000404:
    if !(== self.bonetalk4 2s) goto 0x000434
0x000418:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000438
0x000434:
    push 0s
0x000438:
    if !pop goto 0x0004B4
0x00043C:
    push 4s
    stog.c* = (int32 self.dh)
    push 4s
    stog.c* = (int32 self.db)
    pushenv (int32 self.blcon) 0x000488
0x00047C:
    call (instance_destroy[]:int32 )
0x000488:
    popenv 0x00047C
0x00048C:
    stog.alarm[10s] = 30s
    self.bonetalk4 = 2.5d
0x0004B4:
    if !(== self.bonetalk4 0s) goto 0x000500
0x0004C8:
    push 1s
    stog.c* = (int32 self.dh)
    stog.alarm[10s] = 60s
    self.bonetalk4 = 1s
0x000500:
    exit
