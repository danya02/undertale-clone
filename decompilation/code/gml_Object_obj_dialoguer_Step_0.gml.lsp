0x000000:
    if !(== (instance_exists[]:int32 self.writer) 0s) goto 0x00002C
0x00001C:
    call (instance_destroy[]:int32 )
    goto 0x0000E0
0x00002C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0000E0
0x000044:
    if !(== (int32 self.writer):halt 0s) goto 0x0000CC
0x000064:
    if !(!= global.typer 10s) goto 0x0000CC
0x000078:
    push -5s
    stog.flag[(+ 25s:flag 1s)] = 25s
    push (string_length[]:int32 (int32 self.writer):originalstring)
    stog.stringpos* = (int32 self.writer)
0x0000CC:
    call (keyboard_clear[]:int32 (var 16s))
0x0000E0:
    if !(== global.facechange 2s) goto 0x000100
0x0000F4:
    global.facechange = 0s
0x000100:
    if !(== global.facechange 1s) goto 0x000128
0x000114:
    push (== global.facechoice 0s)
    goto 0x00012C
0x000128:
    push 0s
0x00012C:
    if !pop goto 0x0001D4
0x000130:
    if !(bool (instance_exists[]:int32 self.writer)) goto 0x000194
0x000148:
    push (+ self.xx 30s)
    stog.x* = (int32 self.writer)
    push (int32 self.writer):x
    stog.writingx* = (int32 self.writer)
0x000194:
    if !(== (instance_exists[]:int32 (var 774s)) 1s) goto 0x0001C8
0x0001B0:
    pushenv 774s 0x0001C4
0x0001B8:
    call (instance_destroy[]:int32 )
0x0001C4:
    popenv 0x0001B8
0x0001C8:
    global.facechange = 2s
0x0001D4:
    if !(== global.facechange 1s) goto 0x0004E8
0x0001E8:
    if !(bool (instance_exists[]:int32 self.writer)) goto 0x0004E8
0x000200:
    push (+ self.xx 68s)
    stog.x* = (int32 self.writer)
    push (+ (int32 self.writer):x 20s)
    stog.writingx* = (int32 self.writer)
    if !(== global.facechoice 1s) goto 0x0002BC
0x000268:
    if !(~ (bool (instance_exists[]:int32 (var 765s)))) goto 0x0002A0
0x000284:
    push (~ (bool (instance_exists[]:int32 (var 767s))))
    goto 0x0002A4
0x0002A0:
    push 0s
0x0002A4:
    if !pop goto 0x0002BC
0x0002A8:
    call (script_execute[]:int32 (var 144s))
0x0002BC:
    if !(== global.facechoice 2s) goto 0x000300
0x0002D0:
    if !(~ (bool (instance_exists[]:int32 (var 768s)))) goto 0x000300
0x0002EC:
    call (script_execute[]:int32 (var 144s))
0x000300:
    if !(== global.facechoice 3s) goto 0x000344
0x000314:
    if !(~ (bool (instance_exists[]:int32 (var 776s)))) goto 0x000344
0x000330:
    call (script_execute[]:int32 (var 144s))
0x000344:
    if !(== global.facechoice 4s) goto 0x000388
0x000358:
    if !(~ (bool (instance_exists[]:int32 (var 775s)))) goto 0x000388
0x000374:
    call (script_execute[]:int32 (var 144s))
0x000388:
    if !(== global.facechoice 5s) goto 0x0003CC
0x00039C:
    if !(~ (bool (instance_exists[]:int32 (var 777s)))) goto 0x0003CC
0x0003B8:
    call (script_execute[]:int32 (var 144s))
0x0003CC:
    if !(== global.facechoice 6s) goto 0x000410
0x0003E0:
    if !(~ (bool (instance_exists[]:int32 (var 770s)))) goto 0x000410
0x0003FC:
    call (script_execute[]:int32 (var 144s))
0x000410:
    if !(== global.facechoice 7s) goto 0x000454
0x000424:
    if !(~ (bool (instance_exists[]:int32 (var 771s)))) goto 0x000454
0x000440:
    call (script_execute[]:int32 (var 144s))
0x000454:
    if !(== global.facechoice 8s) goto 0x000498
0x000468:
    if !(~ (bool (instance_exists[]:int32 (var 773s)))) goto 0x000498
0x000484:
    call (script_execute[]:int32 (var 144s))
0x000498:
    if !(== global.facechoice 9s) goto 0x0004DC
0x0004AC:
    if !(~ (bool (instance_exists[]:int32 (var 772s)))) goto 0x0004DC
0x0004C8:
    call (script_execute[]:int32 (var 144s))
0x0004DC:
    global.facechange = 2s
0x0004E8:
    exit
