0x000000:
    if !(bool (audio_is_playing[]:int32 self.argument0)) goto 0x000028
0x000018:
    ret var (var 1s)
    goto 0x000034
0x000028:
    ret var (var 0s)
0x000034:
    exit
