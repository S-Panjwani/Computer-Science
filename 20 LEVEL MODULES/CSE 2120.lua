local poopoo = {1, 1, 1} -- Default numbers for age, height, and weight
print("what your age?")
local age = io.read() -- get input

print("what your height? (In feet)")
local height = io.read()-- get input

print("what your weight? (In pounds)")
local weight = io.read()-- get input


function setpoopoo()
poopoo[1] = age -- Set value of an array
poopoo[2] = height
poopoo[3] = weight
end


function printpoopoo()
print("you are ".. poopoo[1] .. " years old and you are " .. poopoo[2] .. " feet tall and you weigh " .. poopoo[3] .. " pounds")-- print full form.
end

function getsizeofpoopoo()
    print("THE ARRAY HAS ".. #poopoo .. " Objects")
end


function doall()
    setpoopoo()
    printpoopoo()
    getsizeofpoopoo()
end

doall()