0x000000:
    self.smuggy = 10s
    if !(== global.mnfight 2s) goto 0x000064
0x000020:
    if !(== (instance_exists[]:int32 (var 671s)) 0s) goto 0x000064
0x00003C:
    if !(== (instance_exists[]:int32 (var 662s)) 0s) goto 0x000064
0x000058:
    global.mnfight = 3s
0x000064:
    exit
