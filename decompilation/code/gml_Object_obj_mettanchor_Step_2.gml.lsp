0x000000:
    push -5s
    if !(<= 20s:flag 9s) goto 0x000038
0x00001C:
    push -5s
    push (> 20s:flag 0s)
    goto 0x00003C
0x000038:
    push 0s
0x00003C:
    if !pop goto 0x000058
0x000040:
    push -5s
    self.j = 20s:flag
0x000058:
    push -1s
    self.sprite_index = (int32 (- self.j 1s)):mysprite
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x000170
0x00009C:
    if !(== self.on 1s) goto 0x000170
0x0000B0:
    push 1570.x
    stog.view_xview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) 10s))
    push 1570.y
    stog.view_yview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) 10s))
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x000170
0x00015C:
    stog.view_yview[0s] = 0s
0x000170:
    if !(== self.on 1s) goto 0x0001CC
0x000184:
    push -1s
    self.x = (+ 0s:view_xview self.stayx)
    push -1s
    self.y = (+ 0s:view_yview self.stayy)
0x0001CC:
    if !(== self.on 2s) goto 0x000348
0x0001E0:
    self.adjust = 0s
    push self.x
    push -1s
    if !(> 0s:view_xview (- (+ -1s 0s:view_wview) 50s)) goto 0x00024C
0x000228:
    self.x = (- self.x 4s)
    self.adjust = 1s
0x00024C:
    push self.y
    push -1s
    if !(> 0s:view_yview (- (+ -1s 0s:view_hview) 80s)) goto 0x0002AC
0x000288:
    self.y = (- self.y 4s)
    self.adjust = 1s
0x0002AC:
    if !(== self.adjust 0s) goto 0x000348
0x0002C0:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (cos[]:int32 (/ self.siner (double 2s))) 0.5d))
    self.y = (+ self.y (sin[]:int32 (/ self.siner (double 6s))))
0x000348:
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x000378
0x000364:
    stog.view_yview[0s] = 0s
0x000378:
    exit
