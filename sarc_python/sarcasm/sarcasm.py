from random import randrange

def split_characters(text):
    """
    Split a character or vector of characters into letters. Returns a list of lists, with each character composing the innermost list.

    text
        The text to split into characters. A string list.
    """
    if type(text) is not list:
        # Convert to list
        text = [text]
    all_strings = all([type(t) is str for t in text])
    if not all_strings:
        # Coerce all entries to str
        text = map(str, text)
    outlist = []
    for t in text:
        # Split up each character in the strings as their own element
        outlist.append([char for char in t])
    return outlist

def randcase(text):
    ind = randrange(0, 2)
    if ind == 0:
        return text.upper()
    else:
        return text.lower()


def sarcastic(text):
    text_split = split_characters(text)
    sarcastic_text = [''.join([randcase(t) for t in word]) for word in text_split]
    return(sarcastic_text)
