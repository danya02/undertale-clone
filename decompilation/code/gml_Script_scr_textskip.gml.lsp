0x000000:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000068
0x000018:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x000068
0x000030:
    pushenv 782s 0x000050
0x000038:
    self.stringpos = (string_length[]:int32 self.originalstring)
0x000050:
    popenv 0x000038
0x000054:
    call (keyboard_clear[]:int32 (var 16s))
0x000068:
    exit
