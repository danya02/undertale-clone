0x000000:
    global.at = (+ 8s (* global.lv 2s))
    global.df = (+ 9s (ceil[]:int32 (/ global.lv (double 4s))))
    global.sp = self.tempspd
    stog.flag[78s] = 0s
0x000070:
    exit
