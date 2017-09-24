0x000000:
    if !(== global.weapon 47s) goto 0x00003C
0x000014:
    call (script_execute[]:int32 (+ self.argument0 4s) (var 56s))
    goto 0x000058
0x00003C:
    call (script_execute[]:int32 self.argument0 (var 56s))
0x000058:
    stog.item[8s] = self.recovered
    stog.flag[260s] = 1s
    if !(== self.maxedout 1s) goto 0x0000AC
0x000098:
    stog.item[8s] = 9999s
0x0000AC:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 11s) (var 146s))
0x0000E4:
    exit
