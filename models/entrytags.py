class EntryTag():

    # Class initializer. It has 5 custom parameters, with the
    # special `self` parameter that every method on a class
    # needs as the first parameter.
    def __init__(self, unique_id, entry_id, tag_id):
        self.id = unique_id
        self.entry_id = entry_id
        self.tag_id = tag_id