#!/usr/bin/python3


class Fight:
    def __init__(self):
        """
        Describes a Fight.
        """
        self.id = 0
        self.opponents = []
        self.rewards = []

    def monsters_except(self, monster: Monster) -> [type]:
        """
        Get monsters in this Fight except the given one.
        :param monster: the Monster to ignore. Does not have to be a part of this Fight.
        :return: list of types. Each type is a Monster type.
        """
        tmp = self.opponents.copy()
        try:
            tmp.remove(monster)
        except ValueError:
            pass
        tmp = [type(i) for i in tmp]
        return tmp

    def update_monsters(self) -> None:
        """
        For each Monster in the Fight, tell them that they are a part of this Fight.
        """
        for i in self.opponents:
            i.fight = self

    def spare(self):
        for i in self.opponents:
            if i.can_spare():
                self.rewards.append(i.do_spare())


class Monster:
    def __init__(self, fight: Fight):
        """
        Describes a Monster.
        :param fight: the Fight that this Monster is a part of.
        """
        self.id = 0
        self.hp = 1
        self.max_hp = 1
        self.alive = True
        self.fight = fight
        self.attacks = []
        self.name = ''
        self.gold_on_spare = 0
        self.gold_on_kill = 0
        self.exp_on_kill = 0

    def can_spare(self):
        """
        Is this enemy spareable at the moment?
        :return: boolean answering the question.
        """
        return False

    def do_spare(self):
        """
        Do actions upon a successful spare.
        :return: 3-tuple of rewards: gold, EXP, and items (None if no items are awarded).
        """
        return self.gold_on_spare, 0, None

    def do_kill(self):
        """
        Do actions upon a kill.
        :return: 3-tuple of rewards: gold, EXP, and items (None if no items are awarded).
        """
        return self.gold_on_kill, self.exp_on_kill, None


class Attack:  # TODO: implement this.
    pass


class Bullet:  # TODO: implement this.
    pass
