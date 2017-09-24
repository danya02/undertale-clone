0x000000:
    push self.xstart
    self.stayx = (- -1s 0s:view_xview)
    push self.ystart
    self.stayy = (- -1s 0s:view_yview)
    self.on = 1s
    self.ang = (+ 1s (* (random[]:int32 (var 2s)) (choose[]:int32 (var -1s) (var 1s))))
    if !(> self.ang 0s) goto 0x0000BC
0x0000A4:
    self.ang = (/ self.ang 2s)
0x0000BC:
    self.tx = 0s
    self.stringer = "MTT-BRAND STILL TOP-RATED    ||    SCHOOL CANCELLED OVER REACTIVATED PUZZLES    ||     "
    self.stringer = (+ self.stringer "SCIENTIST DISCOVERS HEALTH BENEFITS OF USING COMPUTER (JUST KIDDING LOL)   ||     ")
    self.stringer = (+ self.stringer "LOCAL METTATON VERY RICH FAMOUS AND GORGEOUS ||    ")
    self.stringer = (+ self.stringer "TINY VOLCANO MONSTER TRIES ITS BEST, RECEIVES TINY APPLAUSE ||    ")
    self.stringer = (+ self.stringer "PYROPE IRONICALLY MISSES INVITATION TO THIS SCENARIO \"WOULD HAVE LOVED IT\"  ||    ")
    self.stringer = (+ self.stringer "LOCAL PLANE CREATES HUGE LINE AT STORE BY SAYING \"IT'S NOT LIKE I WANT TO BUY THESE PRODUCTS OR ANYTHING\" CASHIER CONFUSED   ||     ")
    self.stringer = (+ self.stringer "HOTLAND TECHNICAL MALFUNCTIONS ACCEDE AND RECEDE IN LINEAR PROGRESSION THROUGHOUT AREA  ||     ")
    self.stringer = (+ self.stringer "WOSHUA CLEANS UP LOCAL CRIME, LITERALLY FINDS CRIMINALS AND DOUSES THEM IN SOAP, CRIME DOESN'T GO DOWN BUT IT SMELLS AMAZING   ||   ")
    self.stringer = (+ self.stringer "HISTORIC NEWS TICKER HEADLINE SHORTAGE ||     ")
    self.write = 1s
    self.doom = 0s
    stog.alarm[2s] = 1s
    self.thischara = 1570s
    self.timertimer = 0s
    self.voff = 0s
    self.doomtimer = 0s
    self.doomx = 0s
0x000220:
    exit
