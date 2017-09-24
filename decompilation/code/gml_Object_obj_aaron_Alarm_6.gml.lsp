0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.y 25s) (+ self.x 95s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000A0
0x00008C:
    push (< self.mycommand 25s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000C0
0x0000A8:
    stog.msg[0s] = "Come on&in, the&water's&fine ; )"
0x0000C0:
    if !(>= self.mycommand 25s) goto 0x0000EC
0x0000D4:
    stog.msg[0s] = "No need&for a&swimming&suit ; )"
0x0000EC:
    if !(>= self.mycommand 50s) goto 0x000118
0x000100:
    stog.msg[0s] = "Edu-&cation?&Hobby?&Talent?"
0x000118:
    if !(>= self.mycommand 75s) goto 0x000144
0x00012C:
    stog.msg[0s] = "Whew,&I'm&sweating&; )"
0x000144:
    push -5s
    if !(== 95s:flag 1s) goto 0x00022C
0x000160:
    if !(>= self.mycommand 0s) goto 0x000188
0x000174:
    push (< self.mycommand 25s)
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x0001A8
0x000190:
    stog.msg[0s] = "Don't&get too&close&; )"
0x0001A8:
    if !(>= self.mycommand 25s) goto 0x0001D4
0x0001BC:
    stog.msg[0s] = "Sure&isn't&creepy&out ; )"
0x0001D4:
    if !(>= self.mycommand 50s) goto 0x000200
0x0001E8:
    stog.msg[0s] = "I sure&do love&muscles&; )"
0x000200:
    if !(>= self.mycommand 75s) goto 0x00022C
0x000214:
    stog.msg[0s] = "Whew,&I'm&sweating&; )"
0x00022C:
    if !(== self.whatiheard 3s) goto 0x0002B0
0x000240:
    stog.msg[0s] = "Flagrant&error&; )"
    if !(== self.flex 1s) goto 0x000284
0x00026C:
    stog.msg[0s] = "Flexing&contest?&OK, flex&more ; )"
0x000284:
    if !(== self.flex 2s) goto 0x0002B0
0x000298:
    stog.msg[0s] = "Nice!!&I won't&lose&tho ; )"
0x0002B0:
    if !(== self.whatiheard 1s) goto 0x000348
0x0002C4:
    if !(== self.gg 0s) goto 0x0002F0
0x0002D8:
    stog.msg[0s] = "Fiesty,&huh?&; )"
0x0002F0:
    if !(== self.gg 1s) goto 0x00031C
0x000304:
    stog.msg[0s] = "Wow!&Spunky!&Love it&; )"
0x00031C:
    if !(== self.gg 2s) goto 0x000348
0x000330:
    stog.msg[0s] = "You'll&change&your&mind ; )"
0x000348:
    if !(== self.whatiheard 9s) goto 0x0003A8
0x00035C:
    stog.msg[0s] = "CHECK&all you&want ; )"
    push -5s
    if !(== 95s:flag 1s) goto 0x0003A8
0x000390:
    stog.msg[0s] = "... ; )"
0x0003A8:
    if !(== self.whatiheard 12s) goto 0x0003D4
0x0003BC:
    stog.msg[0s] = "Ha, nice.&My kind&of humor&; )"
0x0003D4:
    if !(== self.alphaup 1s) goto 0x000400
0x0003E8:
    stog.msg[0s] = "Just the&two of&us, huh?&; )"
0x000400:
    if !(== self.alphaup 1s) goto 0x000430
0x000414:
    push -5s
    push (== 95s:flag 1s)
    goto 0x000434
0x000430:
    push 0s
0x000434:
    if !pop goto 0x000450
0x000438:
    stog.msg[0s] = "Hi?&; )"
0x000450:
    self.alphaup = 0s
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 6s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x00056C:
    exit
