0x000000:
    if !(!= self.hshake 0s) goto 0x0000C8
0x000014:
    if !(< self.hshake 0s) goto 0x000070
0x000028:
    push -1s
    stog.view_xview[(+ (int32 self.myview):view_xview self.hshake)] = (int32 self.myview)
    self.hshake = (+ self.hshake 1s)
0x000070:
    if !(> self.hshake 0s) goto 0x0000B4
0x000084:
    push -1s
    stog.view_xview[(+ (int32 self.myview):view_xview self.hshake)] = (int32 self.myview)
0x0000B4:
    self.hshake = (- self.hshake)
0x0000C8:
    if !(!= self.vshake 0s) goto 0x000190
0x0000DC:
    if !(> self.vshake 0s) goto 0x000120
0x0000F0:
    push -1s
    stog.view_yview[(+ (int32 self.myview):view_yview self.vshake)] = (int32 self.myview)
0x000120:
    if !(< self.vshake 0s) goto 0x00017C
0x000134:
    push -1s
    stog.view_yview[(+ (int32 self.myview):view_yview self.vshake)] = (int32 self.myview)
    self.vshake = (+ self.vshake 1s)
0x00017C:
    self.vshake = (- self.vshake)
0x000190:
    stog.alarm[(int32 self.myview)] = self.shakespeed
    if !(== self.hshake 0s) goto 0x0001D8
0x0001C4:
    push (== self.vshake 0s)
    goto 0x0001DC
0x0001D8:
    push 0s
0x0001DC:
    if !pop goto 0x0001EC
0x0001E0:
    call (instance_destroy[]:int32 )
0x0001EC:
    exit
