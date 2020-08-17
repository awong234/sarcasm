from pysnark.sarcasm import split_characters, sarcastic

char = 'pythonistas'
text = ['pythonistas']
text_2 = ['pythonistas', 'r_users']
text_split = split_characters(text_2)

print("TESTING SPLIT FUNCTION")
print(split_characters(char))
print(split_characters(text))
print(split_characters(text_2))
print(split_characters(234))

print("TESTING SARCASM FUNCTION")
print(sarcastic(char))
print(sarcastic(text))
print(sarcastic(text_2))
print(sarcastic(234))
