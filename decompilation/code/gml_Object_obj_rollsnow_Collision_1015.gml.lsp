0x000000:
    if !(!= self.falling 5s) goto 0x0001A8
0x000014:
    [obj_readable_room2].read = 0s
    call (snd_play[]:int32 (var 26s))
    self.iceflag = (instance_create[]:int32 (var 1018s) (- 1015.y 30s) 1015.x)
    stog.y* = (+ (int32 self.iceflag):y 40s)
    if !(> self.rolltime 180s) goto 0x0000B8
0x0000A0:
    push (int32 self.iceflag)
    push 1s
    stog.image_index* = (int32 self.iceflag)
0x0000B8:
    if !(> self.rolltime 240s) goto 0x0000E4
0x0000CC:
    push 2s
    stog.image_index* = (int32 self.iceflag)
0x0000E4:
    if !(> self.rolltime 330s) goto 0x000110
0x0000F8:
    push 3s
    stog.image_index* = (int32 self.iceflag)
0x000110:
    if !(> self.rolltime 450s) goto 0x00013C
0x000124:
    push 4s
    stog.image_index* = (int32 self.iceflag)
0x00013C:
    if !(> self.rolltime 600s) goto 0x000168
0x000150:
    push 5s
    stog.image_index* = (int32 self.iceflag)
0x000168:
    if !(< self.size 0.6d) goto 0x00019C
0x000184:
    push 6s
    stog.image_index* = (int32 self.iceflag)
0x00019C:
    self.falling = 5s
0x0001A8:
    self.friction = 1s
    if !(> self.size 0.3d) goto 0x0001F0
0x0001D0:
    self.size = (- self.size 0.1d)
0x0001F0:
    exit
