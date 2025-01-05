local Card = Object:extend()

function Card:new(suit, value)
    self.suit = suit
    self.value = value
end

return Card