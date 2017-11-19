#!/usr/bin/python3

with open("strings.txt") as i:
    strings = i.read().split("\n")


def get_string(line: int) -> str:
    return strings[line - 1]
