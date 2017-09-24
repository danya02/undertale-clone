0x000000:
    call (randomize[]:int32 )
    call (audio_channel_num[]:int32 (var 128s))
    global.awfultest = 0s
    global.steam_int = 0s
    if !(bool (steam_initialised[]:int32 )) goto 0x000194
0x000048:
    global.steam_int = 1s
    if !(bool (steam_file_exists[]:int32 (var "system_information_962"))) goto 0x0000C0
0x000070:
    self.exd = (file_text_open_write[]:int32 (var "system_information_962"))
    call (file_text_write_string[]:int32 (var "a") self.exd)
    call (file_text_close[]:int32 self.exd)
0x0000C0:
    if !(bool (steam_file_exists[]:int32 (var "system_information_963"))) goto 0x000194
0x0000DC:
    self.exd = (file_text_open_write[]:int32 (var "system_information_963"))
    call (file_text_write_string[]:int32 (var "b") self.exd)
    call (file_text_close[]:int32 self.exd)
    if !(bool (file_exists[]:int32 (var "system_information_962"))) goto 0x000160
0x000148:
    call (file_delete[]:int32 (var "system_information_962"))
0x000160:
    if !(bool (steam_file_exists[]:int32 (var "system_information_962"))) goto 0x000194
0x00017C:
    call (steam_file_delete[]:single (var "system_information_962"))
0x000194:
    global.debug = 0s
    global.hp = 20s
    global.maxhp = 20s
    global.en = 20s
    global.maxen = 20s
    global.at = 10s
    global.df = 10s
    global.adef = 0s
    global.sp = 4s
    global.asp = 4s
    global.hb = 5s
    global.gt = 5s
    global.km = 0s
    global.ph = 0s
    global.gold = 0s
    global.xp = 0s
    global.lv = 1s
    global.area = 0s
    global.charname = "CHARA"
    self.i = 0s
    if !(< self.i 8s) goto 0x00035C
0x00029C:
    stog.item[(int32 self.i)] = 0s
    stog.spell[(int32 self.i)] = 1s
    stog.bulletvariable[(int32 self.i)] = 0s
    global.menuno = -1s
    stog.menucoord[(int32 self.i)] = 0s
    global.bmenuno = 0s
    stog.bmenucoord[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x000288
0x00035C:
    self.i = 0s
    if !(< self.i 24s) goto 0x0003B4
0x00037C:
    stog.areapop[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x000368
0x0003B4:
    self.i = 0s
    if !(< self.i 99s) goto 0x000410
0x0003D4:
    stog.msg[(int32 self.i)] = "%%%"
    self.i = (+ self.i 1s)
    goto 0x0003C0
0x000410:
    global.area = 0s
    self.i = 0s
    if !(< self.i 512s) goto 0x000474
0x00043C:
    stog.flag[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x000428
0x000474:
    stog.flag[300s] = 14s
    stog.flag[301s] = 0s
    stog.flag[302s] = 0s
    stog.flag[303s] = 0s
    stog.flag[304s] = 0s
    stog.flag[512s] = 0s
    stog.idealborder[0s] = 0s
    stog.idealborder[1s] = 0s
    stog.idealborder[2s] = 0s
    stog.idealborder[3s] = 0s
    global.plot = 0s
    global.currentroom = 0s
    self.i = 0s
    if !(< self.i 3s) goto 0x000700
0x000574:
    stog.monstername[(int32 self.i)] = "Error"
    stog.monsterhp[(int32 self.i)] = 50s
    stog.monstermaxhp[(int32 self.i)] = 50s
    stog.monsterdef[(int32 self.i)] = 0s
    stog.xpreward[(int32 self.i)] = 0s
    stog.goldreward[(int32 self.i)] = 0s
    stog.itemrewardid[(int32 self.i)] = 0s
    stog.itemrewardchance[(int32 self.i)] = 0s
    stog.monster[(int32 self.i)] = 0s
    stog.attacker[(int32 self.i)] = 0s
    stog.mnpwr[(int32 self.i)] = 0s
    stog.bulletpwr[(int32 self.i)] = 0s
    stog.hurtanim[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x000560
0x000700:
    stog.xpreward[3s] = 0s
    stog.goldreward[3s] = 0s
    global.battlegroup = 3s
    global.turntimer = 0s
    global.talked = 0s
    global.inv = 20s
    global.invc = 0s
    global.turnmax = 0s
    global.myfight = 0s
    global.mnfight = 0s
    global.incombat = 0s
    global.firingrate = 14s
    global.border = 0s
    global.turn = 0s
    global.actfirst = 0s
    global.extraintro = 0s
    global.mytarget = 0s
    global.confirm = "ord('z')"
    global.damagetimer = 90s
    global.attacktype = 1s
    global.wstrength = 0s
    global.pwr = 0s
    global.attackspeed = 11s
    global.attackspeedr = 2s
    global.wstrength = 0s
    global.kills = 0s
    global.specialbattle = 0s
    global.batmusic = 43872483278L
    global.myview = 0s
    global.hshake = 0s
    global.vshake = 0s
    global.shakespeed = 0s
    global.encounter = 0s
    global.facing = 0s
    global.phasing = 0s
    global.choices = 0s
    global.interact = 0s
    global.viewpan = 0s
    global.inbattle = 0s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.seriousbattle = 0s
    global.mercy = 0s
    stog.item[0s] = 0s
    stog.item[1s] = 0s
    stog.item[2s] = 0s
    stog.item[3s] = 0s
    stog.item[4s] = 0s
    stog.item[5s] = 0s
    stog.item[6s] = 0s
    stog.item[7s] = 0s
    stog.item[8s] = 0s
    global.weapon = 3s
    global.armor = 4s
    stog.phone[0s] = 0s
    stog.phone[1s] = 0s
    stog.phone[2s] = 0s
    stog.phone[3s] = 0s
    stog.phone[4s] = 0s
    stog.phone[5s] = 0s
    stog.phone[6s] = 0s
    stog.phone[7s] = 0s
    stog.phone[8s] = 0s
    stog.menuchoice[0s] = 1s
    stog.menuchoice[1s] = 1s
    stog.menuchoice[2s] = 0s
    stog.menuchoice[3s] = 0s
    global.choice = -1s
    global.lastsavedtime = 0s
    global.lastsavedkills = 0s
    global.lastsavedlv = 0s
    global.filechoice = 0s
    global.dontfade = 0s
    global.entrance = 0s
    global.currentsong = -1s
    global.currentsong2 = -1s
    global.batmusic = -1s
    global.typer = 5s
    global.msc = 0s
    global.hardmode = 0s
    call (file_rename[]:int32 (var "data/unused/dfb.png") (var "data/unused/dfb"))
    global.background = (background_add[]:int32 (var 1s) (var 0s) (var "data/unused/dfb.png"))
    call (file_rename[]:int32 (var "data/unused/dfb") (var "data/unused/dfb.png"))
0x000C00:
    exit
