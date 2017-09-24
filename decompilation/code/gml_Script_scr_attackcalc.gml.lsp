0x000000:
    push -5s
    self.defarg = (int32 global.mytarget):monsterdef
    global.pwr = (+ global.wstrength global.at)
    self.damage = (- global.pwr self.defarg)
0x000058:
    exit
