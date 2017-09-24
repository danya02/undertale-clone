0x000000:
    if !(== (instance_exists[]:int32 (var 651s)) 0s) goto 0x000030
0x00001C:
    push (< global.invc 1s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000148
0x000038:
    stog.msg[0s] = " YOU'RE BLUE NOW./"
    stog.msg[1s] = " THAT'S MY ATTACK!/"
    stog.msg[2s] = " NYEH HEH HEH& HEH HEH HEH& HEH HEH HEH!!!/%%"
    global.typer = 22s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 52s) (+ self.x 145s))
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.batmusic = global.batmusic2
    stog.alarm[6s] = 2s
    [obj_papyrusboss].dontcancel = 1s
    goto 0x00015C
0x000148:
    stog.alarm[5s] = 2s
0x00015C:
    exit
