# Script: Single word converter to Pig Latin

# GET a word from user input
# IF the word starts with a vowel, add "way" to the end
# ELSE replace the word with its pig latin equivalent
#   GET all of the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add "ay"
# ENDIF
# RETURN the pig-latin word

# GET a text from user input
# INITIALIZE an array
# ASSIGNED the map applied by the pig_latin method, for the split text
# JOIN the item of array

def pig_latin (string)
  if string.chr == "a" || string.chr == "e" || string.chr == "i" || string.chr == "o" || string.chr == "u" 
    string + "way"
  else 
    arr=[]
    arr = string.split(//) << string.split(//)[0]
    arr.delete_at(0)
    arr.join + 'ay'
  end
end

# p pig_latin('hugo')
# p pig_latin('ugo')

def pig_latin_txt(string)
  arr=[]
  arr = string.split.map!{|x| pig_latin(x)}
  arr.join(' ')
end

p pig_latin_txt('maria tenia un corderito la amiga')