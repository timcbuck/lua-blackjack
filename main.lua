Object = require "classic"
Card = require "card"

local deck = {}
math.randomseed(os.time()) -- seed the random number generator


function love.load()
    createDeck()
    print(pullCard().suit, pullCard().value)
    print(pullCard().suit, pullCard().value)
    print(pullCard().suit, pullCard().value)
    print(pullCard().suit, pullCard().value)
    print(pullCard().suit, pullCard().value)
    printDeck()
end

function love.update(dt)

end

function love.draw()

end

function createDeck()
    local suits = {"Hearts", "Diamonds", "Clubs", "Spades"}
    for i = 1, 4 do -- 4 suits (Hearts, Diamonds, Clubs, Spades)
        for j = 1, 13 do
            if j == 11 or j == 12 or j == 13 then
                j = 10 -- Jack, Queen, King are all worth 10 points
            end
            if j == 1 then
                j = 11 -- Ace is worth 11 points
            end
            table.insert(deck, Card(suits[i], j))
        end
    end
end

function printDeck()
    for k, card in ipairs(deck) do
        print(card.suit, card.value)
    end
end

function pullCard()
    rand_number = math.random(#deck)
    return table.remove(deck, rand_number)
end