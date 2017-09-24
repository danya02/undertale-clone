0x000000:
    if !(== self.conversation 1s) goto 0x000398
0x000014:
    self.t = 0s
    self.mkid = 1481s
    if !(> 1570.x (+ (int32 self.mkid):x 40s)) goto 0x000064
0x000058:
    self.t = 1s
0x000064:
    if !(< 1570.x (- (int32 self.mkid):x 40s)) goto 0x00009C
0x000090:
    self.t = 2s
0x00009C:
    if !(== self.t 1s) goto 0x000110
0x0000B0:
    push 3s
    stog.hspeed* = (int32 self.mkid)
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    push 0.2d
    stog.image_speed* = (int32 self.mkid)
0x000110:
    if !(== self.t 2s) goto 0x0001CC
0x000124:
    if !(> (int32 self.mkid):x (- (int32 self.mkid):xstart 40s)) goto 0x0001C0
0x00015C:
    push -3s
    stog.hspeed* = (int32 self.mkid)
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    push 0.2d
    stog.image_speed* = (int32 self.mkid)
    goto 0x0001CC
0x0001C0:
    self.t = 0s
0x0001CC:
    if !(== self.t 0s) goto 0x000398
0x0001E0:
    if !(== (int32 self.mkid):sprite_index (int32 self.mkid):rsprite) goto 0x000228
0x000210:
    push 0s
    stog.image_index* = (int32 self.mkid)
0x000228:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):dtsprite
    stog.sprite_index* = (int32 self.mkid)
    if !(> (- 1570.x (int32 self.mkid):x) 16s) goto 0x0002EC
0x0002AC:
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
    push 1s
    stog.con* = (int32 self.mkid)
0x0002EC:
    if !(< (- 1570.x (int32 self.mkid):x) -10s) goto 0x000358
0x000318:
    push (int32 self.mkid):ltsprite
    stog.sprite_index* = (int32 self.mkid)
    push 2s
    stog.con* = (int32 self.mkid)
0x000358:
    if !(== (int32 self.mkid):myinteract 3s) goto 0x000398
0x000378:
    push 0.2d
    stog.image_speed* = (int32 self.mkid)
0x000398:
    exit
