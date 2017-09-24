0x000000:
    if !(== self.conversation 1s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000140
0x000030:
    self.myinteract = 3s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    self.p2 = (instance_create[]:int32 (var 1032s) (int32 self.papyrus):y (int32 self.papyrus):x)
    pushenv (int32 self.papyrus) 0x0000C8
0x0000BC:
    call (instance_destroy[]:int32 )
0x0000C8:
    popenv 0x0000BC
0x0000CC:
    self.papyrus = self.p2
    push 3s
    stog.hspeed* = (int32 self.papyrus)
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
    self.conversation = 2s
    global.plot = (- self.xplot 1s)
0x000140:
    if !(== self.conversation 2s) goto 0x00016C
0x000154:
    push (bool (instance_exists[]:int32 (var 1032s)))
    goto 0x000170
0x00016C:
    push 0s
0x000170:
    if !pop goto 0x000218
0x000174:
    if !(>= (int32 self.papyrus):x (- self.x 56s)) goto 0x000218
0x0001A0:
    push 0s
    stog.hspeed* = (int32 self.papyrus)
    push (int32 self.papyrus):rtsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    self.conversation = 3s
    stog.alarm[4s] = 20s
0x000218:
    if !(== self.conversation 4s) goto 0x0003EC
0x00022C:
    global.msc = 0s
    stog.msg[0s] = "HUMAN!/"
    stog.msg[1s] = "\\E3HMMM..^1.&HOW DO I SAY&THIS.../"
    stog.msg[2s] = "\\E0YOU WERE TAKING A&LONG TIME TO&ARRIVE^1, SO.../"
    stog.msg[3s] = "I DECIDED TO&IMPROVE THIS&PUZZLE.../"
    stog.msg[4s] = "BY ARRANGING THE&SNOW TO LOOK MORE&LIKE MY FACE./"
    stog.msg[5s] = "\\E3UNFORTUNATELY^1,&THE SNOW FROZE&TO THE GROUND./"
    stog.msg[6s] = "\\E1NOW THE SOLUTION&IS DIFFERENT!/"
    stog.msg[7s] = "AND^1,AS USUAL^1, MY&LAZY BROTHER IS&NOWHERE AROUND./"
    stog.msg[8s] = "\\E3I SUPPOSE WHAT&I AM SAYING&IS.../"
    stog.msg[9s] = "\\E0WORRY NOT^1, HUMAN!/"
    stog.msg[10s] = "I^1, THE GREAT&PAPYRUS^1, WILL SOLVE&THIS CONUNDRUM!/"
    stog.msg[11s] = "THEN WE CAN BOTH&PROCEED!/"
    stog.msg[12s] = "MEANWHILE^1, FEEL&FREE TO TRY THE&PUZZLE YOURSELF!/"
    stog.msg[13s] = "I'LL TRY NOT TO&GIVE AWAY THE&ANSWER!!!/%%"
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 5s
0x0003EC:
    if !(== self.conversation 5s) goto 0x000418
0x000400:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x00041C
0x000418:
    push 0s
0x00041C:
    if !pop goto 0x000498
0x000420:
    if !(>= 782.stringno 9s) goto 0x000498
0x000434:
    push 1s
    stog.fun* = (int32 self.papyrus)
    push 0.5d
    stog.image_speed* = (int32 self.papyrus)
    push 1310s
    stog.sprite_index* = (int32 self.papyrus)
    self.conversation = 5.1d
0x000498:
    if !(== self.conversation 5.1d) goto 0x0004CC
0x0004B4:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0004D0
0x0004CC:
    push 0s
0x0004D0:
    if !pop goto 0x000534
0x0004D4:
    if !(>= 782.stringno 12s) goto 0x000534
0x0004E8:
    push 0s
    stog.fun* = (int32 self.papyrus)
    push (int32 self.papyrus):dtsprite
    stog.sprite_index* = (int32 self.papyrus)
    self.conversation = 6s
0x000534:
    if !(== self.conversation 6s) goto 0x000564
0x000548:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000568
0x000564:
    push 0s
0x000568:
    if !pop goto 0x0005F4
0x00056C:
    self.p3 = (instance_create[]:int32 (var 1026s) (int32 self.papyrus):y (int32 self.papyrus):x)
    pushenv (int32 self.papyrus) 0x0005C8
0x0005BC:
    call (instance_destroy[]:int32 )
0x0005C8:
    popenv 0x0005BC
0x0005CC:
    self.papyrus = self.p3
    global.interact = 0s
    self.conversation = 7s
0x0005F4:
    if !(== self.conversation 7s) goto 0x00066C
0x000608:
    if !(> 1570.x 400s) goto 0x00063C
0x00061C:
    push (< (int32 self.papyrus):x 300s)
    goto 0x000640
0x00063C:
    push 0s
0x000640:
    if !pop goto 0x00066C
0x000644:
    stog.x* = (+ (int32 self.papyrus):x 4s)
0x00066C:
    push (int32 self.papyrus)
    if !(== self.conversation 9s) goto 0x0006D0
0x000680:
    global.interact = 1s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    self.conversation = 10s
    stog.alarm[4s] = 20s
0x0006D0:
    if !(== self.conversation 11s) goto 0x0008C0
0x0006E4:
    global.msc = 0s
    call (instance_create[]:int32 (var 1339s) (var 100s) (var 20s))
    stog.msg[0s] = "WOW!!^1!&YOU SOLVED IT!!/"
    if !(== (int32 self.papyrus):talkedto 0s) goto 0x000768
0x00074C:
    stog.msg[1s] = "AND YOU DID IT&ALL WITHOUT MY&HELP.../"
    goto 0x000780
0x000768:
    stog.msg[1s] = "MY ADVICE HELPED^1!&IT REALLY HELPED&YOU!!/"
0x000780:
    self.p4 = (instance_create[]:int32 (var 1032s) (int32 self.papyrus):y (int32 self.papyrus):x)
    pushenv (int32 self.papyrus) 0x0007DC
0x0007D0:
    call (instance_destroy[]:int32 )
0x0007DC:
    popenv 0x0007D0
0x0007E0:
    self.papyrus = self.p4
    push (int32 self.papyrus):dtsprite
    stog.sprite_index* = (int32 self.papyrus)
    stog.msg[2s] = "INCREDIBLE^1!&I'M IMPRESSED!!/"
    stog.msg[3s] = "YOU MUST CARE&ABOUT PUZZLES&LIKE I DO!/"
    stog.msg[4s] = "WELL^1, I'M SURE&YOU'LL LOVE THE&NEXT PUZZLE THEN!/"
    stog.msg[5s] = "IT MIGHT EVEN&BE TOO EASY FOR&YOU!!/"
    stog.msg[6s] = "NYEH^1!&HEH HEH^1!&HEHEHEH!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 12s
0x0008C0:
    if !(== self.conversation 12s) goto 0x0008F0
0x0008D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0008F4
0x0008F0:
    push 0s
0x0008F4:
    if !pop goto 0x000970
0x0008F8:
    push 1s
    stog.npcdir* = (int32 self.papyrus)
    pushenv (int32 self.papyrus) 0x00094C
0x000920:
    call (path_start[]:int32 (var 0s) (var 0s) (var 5s) (var 30s))
0x00094C:
    popenv 0x000920
0x000950:
    stog.alarm[4s] = 60s
    self.conversation = 13s
0x000970:
    if !(== self.conversation 14s) goto 0x00099C
0x000984:
    call (instance_destroy[]:int32 )
    global.interact = 0s
0x00099C:
    exit
