local dinklyfart = {}

function dinklyfart.getdinklyfartnumber()
    io.write("Enter number NOW:")
    dinklyfartnumber = tonumber(io.read())
    return dinklyfartnumber
end


function dinklyfart.getfactorial(dinklyfartnumber)
    local dinklyfartfactorialed = 1
    for i = 1, dinklyfartnumber do
    dinklyfartfactorialed = i * dinklyfartfactorialed
    print(dinklyfartfactorialed)
    end
end


dinklyfart.getdinklyfartnumber()
dinklyfart.getfactorial(dinklyfartnumber)