0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    if !(== self.number -1s) goto 0x000098
0x000040:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rot (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
0x000098:
    if !(== self.number 0s) goto 0x0000EC
0x0000AC:
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "By Toby Fox") (var 90s) (var 90s))
0x0000EC:
    if !(== self.number 1s) goto 0x000198
0x000100:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Logo Design#Cutscene Artist#Overworld Artist+#Animator (Area 1,2,3)#Shop Artist (Area 2,3)#Tile Artist (Area 2)") (var 30s) (var 86s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Temmie Chang") (var 130s) (var 40s))
0x000198:
    if !(== self.number 2s) goto 0x00032C
0x0001AC:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Tile Artist (Area3+4)#And Hypertester") (var 34s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Kenju") (var 74s) (var 90s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Main BG Artist") (var 104s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Merrigo") (var 124s) (var 90s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Assistant Monster Designer") (var 154s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Magnolia Porter") (var 174s) (var 90s))
0x00032C:
    if !(== self.number 3s) goto 0x0004C0
0x000340:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Extra Art and Testing") (var 24s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Gigi DG#Drak#Clairevoire") (var 44s) (var 90s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Misc. Art") (var 104s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Easynam (Tile Area 1)#Guzusuru (Asgore Spear Reveal)") (var 124s) (var 90s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Guest Monster Designs") (var 164s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "\"Muffet\" - Michelle Czajkowski#\"Woshua\" - Inspired by OMOCAT") (var 184s) (var 90s))
0x0004C0:
    if !(== self.number 4s) goto 0x000654
0x0004D4:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Photoshop#Flowey Battle Co-design") (var 20s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Everdraed") (var 55s) (var 90s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Programming Help") (var 95s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Flashygoodness#Leon Arnott") (var 115s) (var 90s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Other Monster Designs") (var 165s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Mike Reid#????????????") (var 185s) (var 90s))
0x000654:
    if !(== self.number 5s) goto 0x0007E8
0x000668:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Guest NPC Concepts") (var 24s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Mushroom \"Ragel\" - Alexander Sward#\"Sam Byool\" - Ahmed Almutawa#Bah! \"Puzzle Guy\" - Summer Wine#Stars..? \"Loren\" - Colin MacDougall#Comedian Dad - Braxton Harris") (var 44s) (var 90s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Guitar") (var 135s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "Stephanie MacIntire") (var 155s) (var 90s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "Bratty & Catty Help") (var 185s) (var 60s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "IPGD") (var 205s) (var 90s))
0x0007E8:
    if !(>= self.won 1s) goto 0x000844
0x0007FC:
    if !(bool (keyboard_multicheck[]:int32 (var 0s))) goto 0x000844
0x000814:
    push -1s
    if !(> 5s:alarm 20s) goto 0x000844
0x000830:
    stog.alarm[5s] = 20s
0x000844:
    exit
