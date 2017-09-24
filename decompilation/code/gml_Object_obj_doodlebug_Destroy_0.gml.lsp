0x000000:
    stog.monster[(int32 self.myself)] = 0s
    if !(== (instance_number[]:int32 self.object_index) 1s) goto 0x000050
0x000038:
    pushenv 458s 0x00004C
0x000040:
    self.p_mode = 0s
0x00004C:
    popenv 0x000040
0x000050:
    exit
