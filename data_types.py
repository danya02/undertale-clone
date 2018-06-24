#!/usr/bin/python3

class DynamicLoadDict(dict):
    """Loads assets only when needed, caches them for later use."""

    def __getitem__(self, item):
        if item not in self:
            self.update({item: self.fetch(item)})
        return super().get(item)

    def fetch(self, name):
        raise NotImplementedError('This method should be overridden by someone else.')


