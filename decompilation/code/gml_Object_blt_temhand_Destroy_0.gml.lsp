0x000000:
    if !(== (instance_number[]:int32 self.object_index) 1s) goto 0x00003C
0x00001C:
    pushenv 294s 0x000038
0x000024:
    stog.alarm[3s] = 30s
0x000038:
    popenv 0x000024
0x00003C:
    exit
