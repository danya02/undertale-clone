import pygame
from pygame.locals import *
import sys
import gzip
import threading
import frisk

pygame.init()
d = pygame.display.set_mode((800,600))

def scale(img, times):
    return pygame.transform.scale(img, (int(img.get_width()*times), int(img.get_height()*times)))

def invoke_dog(text=""):
    s1 = pygame.image.fromstring(gzip.decompress(b'\x1f\x8b\x08\x00\xd8\xb8\xbbY\x02\xffc`\xa0\x14\xfc\xff\xff\x1fB\xc2\x01\\\x90\x18\xbdX\x01%z\tjGv$V\xc7\x93g).\x13\xe0"h\n\x881\x01Y1ZP\x13\xe3\x184\xff\x92\xe1\x8b\xffd\x81\x11\xa5\x97\xd4\x80\xc5\xaf\x17\x7f\x94\xe1\x91\xc5\xaa\x12\xab^\x82y\x19\xbf\x08\xe5\x00\x00W\x07lAt\x04\x00\x00'), (20, 19), 'RGB')
    s2 = pygame.image.fromstring(gzip.decompress(b'\x1f\x8b\x08\x00\x85\xb9\xbbY\x02\xffc`\xa0\x0e\xf8\xff\xff?\x84\x84\x03\xb8 \xf1&`\x05\x94\x9b@\xa4!\xc8\xce\xc6\xea\x1dJ\x1c@\xa49h\xca\xc80\x079\xe4\xb1z\x84\xa0\x99\x98\xe6\x93\xea\xaf\xffd\x81Q\x13\xb0F+\xb5L\xc0\x1f\xb9\xb8d\xb1\xaa\xc1\x9a\xe4\x08\x9a@RIB]\x00\x00h\x1d1\xcc\xe6\x04\x00\x00'), (22, 19), 'RGB')
    s1 = scale(s1, 4)
    s2 = scale(s2, 4)
    try:
        pygame.mixer.music.load("mus/mus_dance_of_dog.ogg")
    except:
        pass
    font = pygame.font.Font("fonts/determinationmono.ttf", 32)
    text = font.render(text, 0, pygame.Color(255,255,255,255))
    try:
        pygame.mixer.music.play(-1)
    except:
        pass
    while 1:
        for event in pygame.event.get():
            if event.type==QUIT:
                pygame.quit()
                sys.exit()
            if event.type == KEYDOWN:
                if (event.key == K_ESCAPE):
                    pygame.quit()
                    sys.exit()
        d.fill(pygame.Color(0,0,0,255))
        d.blit(s1, (400 - int(s1.get_width()/2), 300 - int(s1.get_height()/2)))
        d.blit(text, (400 - int(text.get_width()/2), 450))
        pygame.display.update()
        pygame.time.wait(250)
        d.fill(pygame.Color(0,0,0,255))
        d.blit(s2, (400 - int(s1.get_width()/2), 300 - int(s1.get_height()/2)))
        d.blit(text, (400 - int(text.get_width()/2), 450))
        pygame.display.update()
        pygame.time.wait(250)

def intro(type=0):
    if type == 0: # normal intro
        pygame.mixer.music.load("mus/mus_story_91.ogg")
        images = []
        for i in range(11):
            images += [pygame.image.load("sprites/spr_introimage_"+str(i)+".png")]
        images = [scale(i, 3) for i in images]
        delays = [8000, 7000, 8000, 6000, 6000, 6000, 8000, 6000, 8000, 8000, 15000]
        pygame.mixer.music.play()
        for i,j in zip(images, delays):
            d.blit(i, (400-(i.get_width()/2), 0))
            pygame.display.update()
            pygame.time.delay(j)
        pygame.mixer.music.load("mus/mus_intronoise.ogg")
        i = pygame.image.load("sprites/splash.png")
        i = scale(i, 2.5)
        d.blit(i, (400-(i.get_width()/2), 300-(i.get_height()/2)))
        pygame.display.update()
        pygame.mixer.music.play()
        pygame.time.wait(5000)
    elif type == 1: # hijacked by Flowey EX
        pygame.mixer.music.load("mus/mus_story_91.ogg")
        images = []
        for i in ["_0", "2_0"]:
            images += [scale(pygame.image.load("sprites/spr_fakeintro"+str(i)+".png"), 2.5)]
        pygame.mixer.music.play()
        d.blit(images[0], (400-(images[0].get_width()/2), 0))
        pygame.display.update()
        pygame.time.delay(6000)
        pygame.time.delay(2000)
        pygame.mixer.music.load("mus/mus_story_stuck.ogg")
        pygame.mixer.music.play(-1)
        d.blit(images[1], (400-(images[1].get_width()/2), 0))
        pygame.display.update()
        pygame.time.wait(5000)
    elif type == 2: # world destroyed
        pygame.mixer.music.load("mus/mus_wind.ogg")
        pygame.mixer.music.play(-1)
        for i in range(600):
            pygame.time.wait(1000)
def init():
    global chara
    chara = frisk.Frisk()
    global running
    running = True

def spritecycle():
    global running
    global chara
    scale_factor = 2
    upcycle = [scale(pygame.image.load("sprites/spr_maincharau_"+str(i)+".png"), scale_factor) for i in range(4)]
    downcycle = [scale(pygame.image.load("sprites/spr_maincharad_"+str(i)+".png"), scale_factor) for i in range(4)]
    leftcycle = [scale(pygame.image.load("sprites/spr_maincharal_"+str(i)+".png"), scale_factor) for i in range(2)]
    rightcycle = [scale(pygame.image.load("sprites/spr_maincharar_"+str(i)+".png"), scale_factor) for i in range(2)]
    while running:
        chara.sprite = [upcycle,rightcycle,downcycle,leftcycle][chara.dir][0]
        if chara.moving:
            for i in [upcycle,rightcycle,downcycle,leftcycle][chara.dir]:
                if not chara.moving:
                    break
                chara.sprite = i
                for n in range(20):
                    if not chara.moving:
                        break
                    pygame.time.wait(10)
def maincycle():
    global chara
    global running
    sprite_cycle = threading.Thread(target=spritecycle)
    sprite_cycle.start()
    pygame.time.wait(250)
    while running:
        d.fill(pygame.Color(0,0,0,0))
        #d.blit(background,(0,0))
        d.blit(chara.sprite, (int(chara.pos[0]), int(chara.pos[1])))
        for event in pygame.event.get():
            if event.type==QUIT:
                pygame.quit()
                sys.exit()
            if event.type == KEYDOWN:
                if (event.key == K_ESCAPE):
                    pygame.quit()
                    sys.exit()
        keys_pressed = pygame.key.get_pressed()
        chara.moving = False
        if keys_pressed[K_LEFT]:
            chara.dir = 3
            chara.moving = True
            chara.pos = (chara.pos[0]-0.5, chara.pos[1])
        if keys_pressed[K_RIGHT]:
            chara.dir = 1
            chara.moving = True
            chara.pos = (chara.pos[0]+0.5, chara.pos[1])
        if keys_pressed[K_UP]:
            chara.dir = 0
            chara.moving = True
            chara.pos = (chara.pos[0], chara.pos[1]-0.5)
        if keys_pressed[K_DOWN]:
            chara.dir = 2
            chara.moving = True
            chara.pos = (chara.pos[0], chara.pos[1]+0.5)
        pygame.display.update()
        if not int(chara.pos[0]) in range(800) or not int(chara.pos[1]) in range(600):
            raise NotImplementedError("chara left screen area")
try:
    init()
    #intro(0)
    maincycle()
except:
    e = sys.exc_info()
    invoke_dog(type(e[1]).__name__+": "+str(e[1]))
