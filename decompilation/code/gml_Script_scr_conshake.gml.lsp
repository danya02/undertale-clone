0x000000:
    self.consiner = (+ self.consiner 1s)
    stog.view_xview[0s] = (+ self.conshakex (* (sin[]:int32 self.consiner) self.argument0))
    stog.view_yview[0s] = (+ self.conshakey (* (cos[]:int32 self.consiner) self.argument0))
0x000088:
    exit
