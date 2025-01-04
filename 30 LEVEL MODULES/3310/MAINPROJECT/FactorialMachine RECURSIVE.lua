local dinklyfart = {}

function dinklyfart.getdinklyfartnumber()
    io.write("Enter number NOW:")
    local dinklyfartnumber = tonumber(io.read())
    return dinklyfartnumber
end

local dinklyfartnumber = dinklyfart.getdinklyfartnumber()

function dinklyfart.getfactorial(dinklyfartnumber)
if dinklyfartnumber == 0 then
    return 1
else
    return dinklyfartnumber * dinklyfart.getfactorial(dinklyfartnumber - 1) 
end
end

local result = dinklyfart.getfactorial(dinklyfartnumber)

print(result)