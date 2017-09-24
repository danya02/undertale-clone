0x000000:
    self.i = 0s
    if !(< self.i 8s) goto 0x00005C
0x000020:
    stog.phonename[(int32 self.i)] = " "
    self.i = (+ self.i 1s)
    goto 0x00000C
0x00005C:
    self.i = 0s
    if !(< self.i 8s) goto 0x0002D8
0x00007C:
    push -5s
    self.itemid = (int32 self.i):phone
    if (== self.itemid 201s) goto 0x000138
0x0000B4:
    if (== self.itemid 202s) goto 0x00015C
0x0000C4:
    if (== self.itemid 203s) goto 0x000180
0x0000D4:
    if (== self.itemid 204s) goto 0x0001A4
0x0000E4:
    if (== self.itemid 205s) goto 0x0001C8
0x0000F4:
    if (== self.itemid 206s) goto 0x0001EC
0x000104:
    if (== self.itemid 210s) goto 0x000210
0x000114:
    if (== self.itemid 220s) goto 0x000270
0x000124:
    if (== self.itemid 221s) goto 0x000294
0x000134:
    push self.itemid
    goto 0x0002B8
0x000138:
    stog.phonename[(int32 self.i)] = "Say Hello"
    goto 0x0002B8
0x00015C:
    stog.phonename[(int32 self.i)] = "Puzzle Help"
    goto 0x0002B8
0x000180:
    stog.phonename[(int32 self.i)] = "About Yourself"
    goto 0x0002B8
0x0001A4:
    stog.phonename[(int32 self.i)] = "Call Her \"Mom\""
    goto 0x0002B8
0x0001C8:
    stog.phonename[(int32 self.i)] = "Flirt"
    goto 0x0002B8
0x0001EC:
    stog.phonename[(int32 self.i)] = "Toriel's Phone"
    goto 0x0002B8
0x000210:
    stog.phonename[(int32 self.i)] = "Papyrus's Phone"
    push -5s
    if !(> 465s:flag 0s) goto 0x00026C
0x00024C:
    stog.phonename[(int32 self.i)] = "Papyrus and Undyne"
0x00026C:
    goto 0x0002B8
0x000270:
    stog.phonename[(int32 self.i)] = "Dimensional Box A"
    goto 0x0002B8
0x000294:
    stog.phonename[(int32 self.i)] = "Dimensional Box B"
    goto 0x0002B8
0x0002B8:
    pop
    self.i = (+ self.i 1s)
    goto 0x000068
0x0002D8:
    exit
