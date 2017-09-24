0x000000:
    if !(== self.script 0s) goto 0x000048
0x000014:
    call (script_execute[]:int32 self.e self.d self.c self.b (var 28s))
0x000048:
    exit
