0x000000:
    self.hshake = global.hshake
    self.vshake = global.vshake
    stog.alarm[0s] = 1s
    self.shakespeed = global.shakespeed
    self.myview = self.view_current
    push -1s
    self.myx = (int32 self.myview):view_xview
    push -1s
    self.myy = (int32 self.myview):view_yview
0x000094:
    exit
