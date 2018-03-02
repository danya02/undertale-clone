import pygame
from pygame.locals import *
import sys
import gzip
import threading
import math
import sprite

# our modules are imported below the invoke_dog function
import typer

global clock
clock = None
global chara
chara = None
global running
running = True
global room
room = None
global d
d = None
if __name__ == '__main__':
    pygame.init()
    d = pygame.display.set_mode((646, 505))


def scale(img, times):
    return pygame.transform.scale(img, (int(img.get_width() * times), int(img.get_height() * times)))


def invoke_dog(text="", kind=0):
    """
    Show the Annoying Dog with optional text until user quits.
    Use this as a fatal error handler, or if the SAVE file is FUBAR.
    Supposed to work under as few assumptions as possible.
    """
    pygame.init()
    s1 = pygame.image.fromstring(gzip.decompress(
        b'\x1f\x8b\x08\x00\xd8\xb8\xbbY\x02\xffc`\xa0\x14\xfc\xff\xff\x1fB\xc2\x01\\\x90\x18\xbdX\x01%z\tjGv$V\xc7'
        b'\x93g).\x13\xe0"h\n\x881\x01Y1ZP\x13\xe3\x184\xff\x92\xe1\x8b\xffd\x81\x11\xa5\x97\xd4\x80\xc5\xaf\x17\x7f'
        b'\x94\xe1\x91\xc5\xaa\x12\xab^\x82y\x19\xbf\x08\xe5\x00\x00W\x07lAt\x04\x00\x00'),
        (20, 19), 'RGB')
    s2 = pygame.image.fromstring(gzip.decompress(
        b'\x1f\x8b\x08\x00\x85\xb9\xbbY\x02\xffc`\xa0\x0e\xf8\xff\xff?\x84\x84\x03\xb8 '
        b'\xf1&`\x05\x94\x9b@\xa4!\xc8\xce\xc6\xea\x1dJ\x1c@\xa49h\xca\xc80\x079\xe4\xb1z\x84\xa0\x99\x98\xe6\x93\xea'
        b'\xaf\xffd\x81Q\x13\xb0F+\xb5L\xc0\x1f\xb9\xb8d\xb1\xaa\xc1\x9a\xe4\x08\x9a@RIB]\x00\x00h\x1d1\xcc\xe6\x04'
        b'\x00\x00'),
        (22, 19), 'RGB')
    s1 = scale(s1, 4)
    s2 = scale(s2, 4)
    s3 = pygame.image.fromstring(gzip.decompress(
        b'\x1f\x8b\x08\x00\xe1!\xd9Y\x02\xffc`\x18\x05\x03\t\xfec\x00\xaa\x18\x82\x07\xd0\xc2L"\rGS\x89\xc6 '
        b'\xdbd\xac\xc6\x12i2yQC\xd0\n"\xcd\x84\x88 '
        b'\x93\xc8\xdai\x11\x08d$9\xac\xea\xf1\x84\t\x19\xe1\x80\'vp\x89\xd0:c\x02\x00\x85\xf4\xb8\xa3\x19\x05\x00'
        b'\x00'),
        (29, 15), "RGB")
    s4 = pygame.image.fromstring(gzip.decompress(
        b"\x1f\x8b\x08\x00\xe7!\xd9Y\x02\xffc`\x18\x05C\x1e\xfc'\x1a\xd0\xc2L\xe2\xcdGS\x89\xc6 "
        b"\xdbd\xac\xc6\x12i2I!@\xd0F\x82\xc6b*C#\xd1L\xa0E "
        b"\xe02\x16\x97\xf9X}G0X\xf0\xbb\x99\xa4\x14E^\x02\xa6\x10\x00\x00K\\\xfb\xa9\x19\x05\x00\x00"),
        (29, 15), "RGB")
    s3 = scale(s3, 4)
    s4 = scale(s4, 4)
    try:
        pygame.mixer.music.load(["mus/mus_dance_of_dog.ogg", "mus/mus_sigh_of_dog.ogg"][kind])
    except pygame.error:
        pass
    length = 1000
    height = 33
    while not length < 505:
        height -= 1
        try:
            font = pygame.font.Font("fonts/determinationmono.ttf", height)
        except OSError:
            font = pygame.font.SysFont(pygame.font.get_default_font(), 32)
        text_obj = font.render(text, 0, pygame.Color('white'))
        length = text_obj.get_width()

    try:
        pygame.mixer.music.play(-1)
    except pygame.error:
        pass
    try:
        while 1:
            for event in pygame.event.get():
                if event.type == QUIT:
                    pygame.quit()
                    sys.exit()
                if event.type == KEYDOWN:
                    if event.key == K_ESCAPE:
                        pygame.quit()
                        sys.exit()
            d.fill(pygame.Color('black'))
            d.blit([s1, s3][kind],
                   (323 - int([s1, s3][kind].get_width() / 2), 252 - int([s1, s3][kind].get_height() / 2)))
            d.blit(text_obj, (252 - int(text_obj.get_width() / 2), 350))
            pygame.display.update()
            pygame.time.wait([250, 500][kind])
            d.fill(pygame.Color('black'))
            d.blit([s2, s4][kind],
                   (323 - int([s1, s3][kind].get_width() / 2), 252 - int([s1, s3][kind].get_height() / 2)))
            d.blit(text_obj, (252 - int(text_obj.get_width() / 2), 350))
            pygame.display.update()
            pygame.time.wait([250, 500][kind])
    except pygame.error:
        pygame.quit()
        sys.exit()


if __name__ == "__main__":
    try:
        import frisk
        import rooms
    except ImportError as e:
        frisk = None
        rooms = None
        invoke_dog("ImportError: " + str(e))


def intro(version=0):
    """
    Play the Undertale intro, as seen on program start. Return when the intro is done.
    """
    if version == 0:  # normal intro
        pygame.mixer.music.load("mus/mus_story_91.ogg")
        image = sprite.get_dynamic_sprite('spr_introimage', 2)
        image.rect.x = 0
        image.rect.y = 0

        text = ["Long ago^1, two races&ruled over Earth^1:&HUMANS and MONSTERS^5. ^1  ",
                "One day^1, war broke&out between the two&races^5. ^1  ",
                "After a long battle^1,&the humans were&victorious^5. ^1  ",
                "They sealed the monsters&underground with a magic&spell^4. ^1  ",
                "Many years later^2.^2.^4. ^1  ",
                "      MT. EBOTT&         201X^9  ",
                "Legends say that those&who climb the mountain&never return^5.^3  ",
                " ^9 ^5  ",
                " ^9 ^5  ",
                " ^9 ^9 ^9 ^9 ^9 ^9  "]
        pygame.mixer.music.play()

        def update(s: pygame.Surface, d: pygame.Surface):
            d.blit(s, (150, 300))
            pygame.display.update()

        for i in text:
            d.blit(image.image, image.rect)
            s = pygame.Surface((504, 200))
            t = typer.Typer()
            t.text = i
            t.surface = s
            t.to_on_run_loop = d
            t.on_run_loop = update
            t.run()
            image.update(True)
        pygame.mixer.music.load("mus/mus_intronoise.ogg")
        i = pygame.image.load("sprites/splash.png")
        i = scale(i, 2.5)
        d.blit(i, (323 - (i.get_width() / 2), 252 - (i.get_height() / 2)))
        pygame.display.update()
        pygame.mixer.music.play()
        pygame.time.wait(5000)
    elif version == 1:  # hijacked by Flowey EX
        pygame.mixer.music.load("mus/mus_story_91.ogg")
        images = []
        for i in ["_0", "2_0"]:
            images += [scale(pygame.image.load("sprites/spr_fakeintro" + str(i) + ".png"), 2.5)]
        pygame.mixer.music.play()
        d.blit(images[0], (323 - (images[0].get_width() / 2), 0))
        pygame.display.update()
        pygame.time.delay(6000)
        pygame.time.delay(2000)
        pygame.mixer.music.load("mus/mus_story_stuck.ogg")
        pygame.mixer.music.play(-1)
        d.blit(images[1], (323 - (images[1].get_width() / 2), 0))
        pygame.display.update()
        pygame.time.wait(5000)
    elif version == 2:  # world destroyed
        pygame.mixer.music.load("mus/mus_wind.ogg")
        pygame.mixer.music.play(-1)
        for i in range(600):
            pygame.time.wait(1000)


def init():
    global clock
    clock = pygame.time.Clock()
    global chara
    chara = frisk.Frisk()
    chara.set_ini_value("General", "time", 0.0)
    chara.save('')
    global running
    running = True
    global room
    room = rooms.Room_TEST1()
    pygame.event.set_blocked(
        [pygame.MOUSEBUTTONDOWN, pygame.MOUSEBUTTONUP, pygame.MOUSEMOTION])  # we don't care for mouse interactions


def spritecycle():
    global chara
    scale_factor = 2
    upcycle = [scale(pygame.image.load("sprites/spr_maincharau_" + str(i) + ".png"), scale_factor) for i in range(4)]
    down_cycle = [scale(pygame.image.load("sprites/spr_maincharad_" + str(i) + ".png"), scale_factor) for i in range(4)]
    left_cycle = [scale(pygame.image.load("sprites/spr_maincharal_" + str(i) + ".png"), scale_factor) for i in range(2)]
    right_cycle = [scale(pygame.image.load("sprites/spr_maincharar_" + str(i) + ".png"), scale_factor) for i in
                   range(2)]
    while running:
        chara.sprite = [upcycle, right_cycle, down_cycle, left_cycle][chara.dir][0]
        if chara.moving:
            for i in [upcycle, right_cycle, down_cycle, left_cycle][chara.dir]:
                if not chara.moving:
                    break
                chara.sprite = i
                for n in range(10):
                    if not chara.moving:
                        break
                    clock.tick(30)


def maincycle():
    global chara
    sprite_cycle = threading.Thread(target=spritecycle)
    sprite_cycle.start()
    pygame.time.wait(250)
    while running:
        d.fill(pygame.Color('black'))
        room.draw()
        d.blit(chara.sprite, (int(chara.pos[0]), int(chara.pos[1])))
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                sys.exit()
            if event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    pygame.quit()
                    sys.exit()
                if event.key == pygame.K_RETURN or event.key == pygame.K_z:
                    for i in room.objects:
                        if int(math.fabs(i.x - chara.x) * 2) + int(math.fabs(
                                        i.y - chara.y) * 2) < 100:  # TODO: decrease dubiosity of distance formula.
                            i.interact(chara)
                            break
        keys_pressed = pygame.key.get_pressed()
        chara.moving = False
        if keys_pressed[K_LEFT]:
            chara.dir = 3
            chara.moving = True
            chara.pos = (chara.pos[0] - 0.5, chara.pos[1])
        if keys_pressed[K_RIGHT]:
            chara.dir = 1
            chara.moving = True
            chara.pos = (chara.pos[0] + 0.5, chara.pos[1])
        if keys_pressed[K_UP]:
            chara.dir = 0
            chara.moving = True
            chara.pos = (chara.pos[0], chara.pos[1] - 0.5)
        if keys_pressed[K_DOWN]:
            chara.dir = 2
            chara.moving = True
            chara.pos = (chara.pos[0], chara.pos[1] + 0.5)
        pygame.display.update()
        if not int(chara.pos[0]) in range(646) or not int(chara.pos[1]) in range(505):
            raise NotImplementedError("chara left screen area", 1)


class UndertaleError(Exception):
    """
    Class for fatal errors that bring forth the Dog, but with no text.
    Use when the SAVE is FUBAR, or when the room is in the Dogcheck.
    """
    pass


if __name__ == "__main__":
    try:
        init()
        intro(0)
        maincycle()
    except UndertaleError as e:
        try:
            invoke_dog("", e.args[0])
        except IndexError:
            invoke_dog()
    except:
        e = sys.exc_info()
        try:
            invoke_dog(type(e[1]).__name__ + ": " + str(eval(str(e[1]))[0]), int(eval(str(e[1]))[1]))
        except SystemExit:
            sys.exit()
        except ValueError:
            invoke_dog(type(e[1]).__name__ + ": " + str(e[1]))
        except SyntaxError:
            invoke_dog(type(e[1]).__name__ + ": " + str(e[1]))

    finally:
        running = False
