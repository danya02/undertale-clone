0x000000:
    if !(== global.cast_type 0s) goto 0x000138
0x000014:
    self.timer = (+ self.timer 1s)
    if !(> self.timer 3s) goto 0x000118
0x000040:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_halign[]:int32 (var 1s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (var -100s) (var 0s) (var 0s) (var 0s))
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "(( CAST ))") (var 280s) (var 320s))
0x000118:
    if !(> self.timer 244s) goto 0x000138
0x00012C:
    self.active = 1s
0x000138:
    if !(== self.active 1s) goto 0x000170
0x00014C:
    push -1s
    stog.view_yview[(+ 0s:view_yview 2s)] = 0s
0x000170:
    if !(== self.active 1s) goto 0x003E10
0x000184:
    if !(== global.cast_type 0s) goto 0x0001AC
0x000198:
    push (== self.active 1s)
    goto 0x0001B0
0x0001AC:
    push 0s
0x0001B0:
    if !pop goto 0x000F0C
0x0001B4:
    self.g = 0s
    call (draw_set_halign[]:int32 (var 1s))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.froggit
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "FROGGIT") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 130s:flag 0s) goto 0x000344
0x0002D4:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Pondering#Life") (+ (int32 self.mon):y 110s) (var 210s))
    goto 0x0003B0
0x000344:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Professional#Frog") (+ (int32 self.mon):y 110s) (var 210s))
0x0003B0:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "WHIMSUN") (var 530s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (var 570s) (var 430s))
    push -5s
    if !(== 131s:flag 0s) goto 0x0004C0
0x000464:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Still A Bit#Guilty") (var 710s) (var 430s))
    goto 0x000518
0x0004C0:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Braver Every#Day ") (var 710s) (var 430s))
0x000518:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.moldsmal
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "MOLDSMAL") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 132s:flag 0s) goto 0x000674
0x000604:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Found a New#Cave") (+ (int32 self.mon):y 110s) (var 210s))
    goto 0x0006E0
0x000674:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Backup Dancer") (+ (int32 self.mon):y 110s) (var 210s))
0x0006E0:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.loox
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "LOOX") (- (int32 self.mon):y 70s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Temmie") (- (int32 self.mon):y 30s) (var 430s))
    push -5s
    if !(== 133s:flag 0s) goto 0x00083C
0x0007CC:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Slightly#Bully-like") (+ (int32 self.mon):y 110s) (var 430s))
    goto 0x0008A8
0x00083C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Reformed#Bully") (+ (int32 self.mon):y 110s) (var 430s))
0x0008A8:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.vegetoid
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "VEGETOID") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby & Temmie") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 134s:flag 0s) goto 0x000A04
0x000994:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Pushy Grocer") (+ (int32 self.mon):y 110s) (var 210s))
    goto 0x000A70
0x000A04:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Popular#Nutritionist") (+ (int32 self.mon):y 110s) (var 210s))
0x000A70:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.migosp
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "MIGOSP") (- (int32 self.mon):y 70s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 430s))
    push -5s
    if !(== 135s:flag 0s) goto 0x000BCC
0x000B5C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Dedicated#Yesman") (+ (int32 self.mon):y 110s) (var 430s))
    goto 0x000C38
0x000BCC:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Casually#Enjoys Life") (+ (int32 self.mon):y 110s) (var 430s))
0x000C38:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.napstablook
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "NAPSTABLOOK") (- (int32 self.mon):y 70s) (var 330s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 330s))
    push -5s
    if !(== 36s:flag 0s) goto 0x000D94
0x000D24:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Zzzzzzz...") (+ (int32 self.mon):y 210s) (var 330s))
    goto 0x000E00
0x000D94:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Spooky DJ") (+ (int32 self.mon):y 210s) (var 330s))
0x000E00:
    call (draw_set_halign[]:int32 (var 0s))
    push -1s
    if !(> 0s:view_yview 1520s) goto 0x000E4C
0x000E30:
    push -1s
    push (< 0s:view_yview 1540s)
    goto 0x000E50
0x000E4C:
    push 0s
0x000E50:
    if !pop goto 0x000E60
0x000E54:
    self.exper = 0s
0x000E60:
    push -1s
    if !(> 0s:view_yview 1540s) goto 0x000F0C
0x000E7C:
    self.exper = (+ self.exper 0.2d)
    push -1s
    stog.view_yview[(+ 0s:view_yview self.exper)] = 0s
    push -1s
    if !(> 0s:view_yview (+ (int32 self.napstablook):y 300s)) goto 0x000F0C
0x000EF8:
    call (room_goto[]:int32 (var 279s))
0x000F0C:
    if !(== global.cast_type 1s) goto 0x001D40
0x000F20:
    self.g = 0s
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_set_halign[]:int32 (var 1s))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.snowdrake
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "SNOWDRAKE") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Magnolia Porter") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 136s:flag 0s) goto 0x0010DC
0x00106C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Still Looking#For Laughs") (+ (int32 self.mon):y 210s) (var 210s))
    goto 0x001148
0x0010DC:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Semi-successful#Comedian") (+ (int32 self.mon):y 210s) (var 210s))
0x001148:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.icecap
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "ICECAP") (- (int32 self.mon):y 70s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Magnolia Porter") (- (int32 self.mon):y 30s) (var 430s))
    push -5s
    if !(== 137s:flag 0s) goto 0x0012A4
0x001234:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Thinking#About Its Hat") (+ (int32 self.mon):y 210s) (var 430s))
    goto 0x001310
0x0012A4:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Fashion#Designer") (+ (int32 self.mon):y 210s) (var 430s))
0x001310:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.gyftrot
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "GYFTROT") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Magnolia Porter (and Toby???)") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 138s:flag 0s) goto 0x00146C
0x0013FC:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Finding Peace#And Quiet") (+ (int32 self.mon):y 210s) (var 210s))
    goto 0x0014D8
0x00146C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Christmas#Display") (+ (int32 self.mon):y 210s) (var 210s))
0x0014D8:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.doggo
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "DOGGO") (- (int32 self.mon):y 70s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 430s))
    push -5s
    if !(== 139s:flag 0s) goto 0x001634
0x0015C4:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Believes In The#Almighty Stick") (+ (int32 self.mon):y 210s) (var 430s))
    goto 0x0016A0
0x001634:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Has His Own#Seeing Eye Dog") (+ (int32 self.mon):y 210s) (var 430s))
0x0016A0:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.dogamy
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "DOGAMY & DOGARESSA") (- (int32 self.mon):y 70s) (var 320s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby...?") (- (int32 self.mon):y 30s) (var 320s))
    call (draw_set_color[]:int32 (var 65535))
    push -5s
    if !(== 140s:flag 0s) goto 0x001814
0x0017A4:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Still Thinking#About That Stick") (+ (int32 self.mon):y 210s) (var 320s))
    goto 0x001880
0x001814:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Finally No. 1 Nose#Nuzzle Champions") (+ (int32 self.mon):y 210s) (var 320s))
0x001880:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.lesserdog
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "LESSER DOG") (- (int32 self.mon):y 70s) (var 190s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Temmie & Toby") (- (int32 self.mon):y 30s) (var 190s))
    push -5s
    if !(== 141s:flag 0s) goto 0x0019DC
0x00196C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Searching For#Affection") (+ (int32 self.mon):y 210s) (var 190s))
    goto 0x001A48
0x0019DC:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Found A Loving#Owner") (+ (int32 self.mon):y 210s) (var 190s))
0x001A48:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.greaterdog
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "GREATER DOG") (- (int32 self.mon):y 70s) (var 450s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby & Temmie") (- (int32 self.mon):y 30s) (var 450s))
    push -5s
    if !(== 142s:flag 0s) goto 0x001BA4
0x001B34:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Unaware of Life's#Changes") (+ (int32 self.mon):y 210s) (var 450s))
    goto 0x001C10
0x001BA4:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Excited by Life's#Changes") (+ (int32 self.mon):y 210s) (var 450s))
0x001C10:
    call (draw_set_halign[]:int32 (var 0s))
    push -1s
    if !(> 0s:view_yview 1920s) goto 0x001C5C
0x001C40:
    push -1s
    push (< 0s:view_yview 1940s)
    goto 0x001C60
0x001C5C:
    push 0s
0x001C60:
    if !pop goto 0x001C70
0x001C64:
    self.exper = 0s
0x001C70:
    push -1s
    if !(> 0s:view_yview 1940s) goto 0x001D40
0x001C8C:
    self.vol = (- self.vol 0.02d)
    call (caster_set_volume[]:int32 self.vol (var -3s))
    self.exper = (+ self.exper 0.5d)
    push -1s
    stog.view_xview[(- 0s:view_xview self.exper)] = 0s
    push -1s
    if !(< 0s:view_xview -600s) goto 0x001D40
0x001D2C:
    call (room_goto[]:int32 (var 280s))
0x001D40:
    if !(== global.cast_type 2s) goto 0x0029B4
0x001D54:
    self.g = 0s
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_set_halign[]:int32 (var 1s))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.aaron
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "AARON") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Temmie (reluctantly)") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 95s:flag 0s) goto 0x001F10
0x001EA0:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Still Flexing") (+ (int32 self.mon):y 210s) (var 210s))
    goto 0x001F7C
0x001F10:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Paranormal#Investigator") (+ (int32 self.mon):y 210s) (var 210s))
0x001F7C:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.moldbygg
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "MOLDBYGG") (- (int32 self.mon):y 70s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 430s))
    push -5s
    if !(== 144s:flag 0s) goto 0x0020E0
0x002068:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 1.5d) (var "Wistfully Adjusting#to City Life") (+ (int32 self.mon):y 210s) (var 430s))
    goto 0x00214C
0x0020E0:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Idyllic Life#on the Beach") (+ (int32 self.mon):y 210s) (var 430s))
0x00214C:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.woshua
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "WOSHUA") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "Inspired by OMOCAT") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 145s:flag 0s) goto 0x0022A8
0x002238:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Normal#Janitor") (+ (int32 self.mon):y 110s) (var 210s))
    goto 0x002314
0x0022A8:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Legendary#Janitor") (+ (int32 self.mon):y 110s) (var 210s))
0x002314:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.temmie
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "TEMMIE") (- (int32 self.mon):y 70s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "Temmie") (- (int32 self.mon):y 30s) (var 430s))
    push -5s
    if !(== 146s:flag 0s) goto 0x002470
0x002400:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Temmie") (+ (int32 self.mon):y 110s) (var 430s))
    goto 0x0024DC
0x002470:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Temmie") (+ (int32 self.mon):y 110s) (var 430s))
0x0024DC:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.maddummy
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "MAD DUMMY") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 147s:flag 0s) goto 0x002638
0x0025C8:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Changed Name to#Angry Dummy") (+ (int32 self.mon):y 210s) (var 210s))
    goto 0x0026A4
0x002638:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Calmed Down...#Just a Bit") (+ (int32 self.mon):y 210s) (var 210s))
0x0026A4:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.shyren
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "SHYREN") (- (int32 self.mon):y 70s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 430s))
    push -5s
    if !(!= 81s:flag 2s) goto 0x002800
0x002790:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Taking Piano#Lessons Again") (+ (int32 self.mon):y 210s) (var 430s))
    goto 0x00286C
0x002800:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "Released Her First Hit Single,#\"When You Say Goodbye#It's Like Magical Bullets#Are Slowly Flying Out of#Your Mouth And Hitting Me\"") (+ (int32 self.mon):y 210s) (var 430s))
0x00286C:
    call (draw_set_halign[]:int32 (var 0s))
    push -1s
    if !(> 0s:view_yview 1220s) goto 0x0028B8
0x00289C:
    push -1s
    push (< 0s:view_yview 1240s)
    goto 0x0028BC
0x0028B8:
    push 0s
0x0028BC:
    if !pop goto 0x0028CC
0x0028C0:
    self.exper = 0s
0x0028CC:
    push -1s
    if !(> 0s:view_yview 1240s) goto 0x0029B4
0x0028E8:
    self.vol = (- self.vol 0.02d)
    call (caster_set_volume[]:int32 self.vol (var -3s))
    self.exper = (+ self.exper 0.2d)
    push -1s
    stog.view_yview[(+ 0s:view_yview self.exper)] = 0s
    push -1s
    if !(> 0s:view_yview (+ (int32 self.shyren):y 300s)) goto 0x0029B4
0x0029A0:
    call (room_goto[]:int32 (var 281s))
0x0029B4:
    if !(== global.cast_type 3s) goto 0x003E10
0x0029C8:
    self.g = 0s
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_set_halign[]:int32 (var 1s))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.vulkin
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "VULKIN") (- (- (int32 self.mon):y 70s) 100s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Magnolia Porter") (- (- (int32 self.mon):y 30s) 100s) (var 210s))
    push -5s
    if !(== 148s:flag 0s) goto 0x002B9C
0x002B24:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Strolling#Happily") (- (+ (int32 self.mon):y 210s) 100s) (var 210s))
    goto 0x002C10
0x002B9C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Encouraging#Space Heater") (- (+ (int32 self.mon):y 210s) 100s) (var 210s))
0x002C10:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.tsunderplane
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "TSUNDERPLANE") (- (int32 self.mon):y 70s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 430s))
    push -5s
    if !(== 149s:flag 0s) goto 0x002D6C
0x002CFC:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "New Student#At School") (+ (int32 self.mon):y 210s) (var 430s))
    goto 0x002DE0
0x002D6C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 1.5d) (var "Finally Confesses#(What!? I don't!!)") (+ (int32 self.mon):y 210s) (var 430s))
0x002DE0:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.pyrope
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "PYROPE") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 150s:flag 0s) goto 0x002F3C
0x002ECC:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Continually#In Trouble") (+ (int32 self.mon):y 210s) (var 210s))
    goto 0x002FB8
0x002F3C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 1.5d) (var 1.5d) (var "Candle In The#World's Largest#Birthday Cake") (+ (int32 self.mon):y 210s) (var 210s))
0x002FB8:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.muffet
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "MUFFET") (- (int32 self.mon):y 70s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Michelle") (- (int32 self.mon):y 30s) (var 430s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Spider Success#With a New Bakery") (+ (int32 self.mon):y 210s) (var 430s))
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.knighta
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "ROYAL GUARDS") (- (int32 self.mon):y 70s) (var 320s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 320s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Use Your#Imagination") (+ (int32 self.mon):y 210s) (var 320s))
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.finalfroggit
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 2s) (var "FINAL FROGGIT") (- (int32 self.mon):y 90s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 50s) (var 210s))
    push -5s
    if !(== 151s:flag 0s) goto 0x00338C
0x00331C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Searching For#Life's Meaning") (+ (int32 self.mon):y 110s) (var 210s))
    goto 0x0033F8
0x00338C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Giving Life#Its Own Meaning") (+ (int32 self.mon):y 110s) (var 210s))
0x0033F8:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.whimsalot
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "WHIMSALOT") (- (int32 self.mon):y 90s) (var 430s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 50s) (var 430s))
    push -5s
    if !(== 152s:flag 0s) goto 0x003554
0x0034E4:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Fighting For#The Future") (+ (int32 self.mon):y 110s) (var 430s))
    goto 0x0035C0
0x003554:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "The Long Battle#Finally Ending...") (+ (int32 self.mon):y 110s) (var 430s))
0x0035C0:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.astigmatism
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "ASTIGMATISM") (- (int32 self.mon):y 70s) (var 320s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 320s))
    push -5s
    if !(== 153s:flag 0s) goto 0x00371C
0x0036AC:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Still A Big#Bully") (+ (int32 self.mon):y 110s) (var 320s))
    goto 0x003788
0x00371C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Domineering#Glasses Seller") (+ (int32 self.mon):y 110s) (var 320s))
0x003788:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.madjick
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "MADJICK") (- (int32 self.mon):y 70s) (var 210s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 210s))
    push -5s
    if !(== 154s:flag 0s) goto 0x0038E4
0x003874:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Learning#Bowling") (+ (int32 self.mon):y 210s) (var 210s))
    goto 0x003950
0x0038E4:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Street#Magician") (+ (int32 self.mon):y 210s) (var 210s))
0x003950:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.knightknight
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "KNIGHT KNIGHT") (- (int32 self.mon):y 70s) (var 460s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "by Toby") (- (int32 self.mon):y 30s) (var 460s))
    push -5s
    if !(== 155s:flag 0s) goto 0x003AAC
0x003A3C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Retail Job") (+ (int32 self.mon):y 210s) (var 460s))
    goto 0x003B18
0x003AAC:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Taking a Well-#Deserved Nap") (+ (int32 self.mon):y 210s) (var 460s))
0x003B18:
    call (draw_set_color[]:int32 (var 16777215))
    self.mon = self.amalgamate1
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "AMALGAMATES") (- (int32 self.mon):y 70s) (var 320s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "??????") (- (int32 self.mon):y 30s) (var 320s))
    push -5s
    if !(== 156s:flag 0s) goto 0x003C74
0x003C04:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Living With#Their Families,#Thinking About#Sticks") (+ (int32 self.mon):y 210s) (var 320s))
    goto 0x003CE0
0x003C74:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Living With#Their Families") (+ (int32 self.mon):y 210s) (var 320s))
0x003CE0:
    call (draw_set_halign[]:int32 (var 0s))
    push -1s
    if !(> 0s:view_yview 3000s) goto 0x003D2C
0x003D10:
    push -1s
    push (< 0s:view_yview 3040s)
    goto 0x003D30
0x003D2C:
    push 0s
0x003D30:
    if !pop goto 0x003D40
0x003D34:
    self.exper = 0s
0x003D40:
    push -1s
    if !(> 0s:view_yview 3040s) goto 0x003E10
0x003D5C:
    self.exper = (+ self.exper 0.5d)
    push -1s
    stog.view_xview[(+ 0s:view_xview self.exper)] = 0s
    self.vol = (- self.vol 0.02d)
    call (caster_set_volume[]:int32 self.vol (var -3s))
    push -1s
    if !(> 0s:view_xview 640s) goto 0x003E10
0x003DFC:
    call (room_goto[]:int32 (var 282s))
0x003E10:
    exit
