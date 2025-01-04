local fart = math.random(1, 10)
local RIGHT_ANSWER = false

-- print(fart) -- for debugging

print("skibidi skibidi on the wall. Pick a number or you will fall")
print("Pick a number between 1 and 10")

local skibidi = tonumber(io.read())  

-- start of functions

function fart_check()
    if fart == skibidi then
        print("Wow you got it sigma epic gamer pants")
        RIGHT_ANSWER = true
    end

end


function isbigorsmall()
    if fart > skibidi then
        print("bigger!")
    else
        print("smaller!")
    end
end


function checkbutrealthistime()
    fart_check()

    if not RIGHT_ANSWER then
        isbigorsmall()
    end
end

-- end of functions

repeat
    checkbutrealthistime()
if not RIGHT_ANSWER
then
    print("Pick a number between 1 and 10")
    skibidi = tonumber(io.read())
end
until RIGHT_ANSWER
