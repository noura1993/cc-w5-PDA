### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

#Error: we should require_relative('./card')

class CardGame


  def checkforAce(card) #not an error but the convention is to use snake case in naming methods rather than camel case
    if card.value = 1   #we should write == instead of =
      return true
    else
      return false
    end
  end

#not an error but the indentation is not right
  dif highest_card(card1 card2) #def not dif, and put a comma between the arguments -> (card1, card2)
  if card1.value > card2.value
    return card #it should be card1
  else
    return card2
  end
end
end #this is an extra end

def self.cards_total(cards)
  total #should be initialized with 0
  for card in cards
    total += card.value
    return "You have a total of" + total #the return statement should be after the for loop and the total should be converted to string
  end
end

#should be end for the card game class
```
