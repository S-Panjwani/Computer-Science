function createNode(value, position)
    return {
        value = value,      
        next = nil,         
        position = position 
    }
end


function printwholething(head)
    local current = head
    while current do  
        print(current.value)
        current = current.next  
    end
end


local head = createNode(1, 1)
local skibidi2 = createNode(2, 2)
local skibidi3 = createNode(3, 3)


head.next = skibidi2
skibidi2.next = skibidi3

function checkNode(node)
    print("We are checking the node...")
    if node == nil then
        print("The node is skibidi toilet. (no money)")
    else
        print("The node's value is: " .. node.value)
    end
end

function countnodes()
    local count = 0
    local current = head
    while current do
        count = count + 1
        current = current.next
    end
    print("The number of nodes is: " .. count) 
    return count 
end


function changenode(node, value)
    io.write("Enter new value for node 1: ")
    node.value = tonumber(io.read())
end

function deleteNode(node)
    io.write("Enter the value of the node you want to delete: ")
    local targetValue = tonumber(io.read())
    local current = head
    local previous = nil
    while current.value ~= targetValue do
        previous = current
        current = current.next
        if current == nil then
            print("Node not found")
            return
        end
    end
    if previous == nil then
        head = head.next
    else
        previous.next = current.next
    end
end





checkNode(head)
checkNode(skibidi2)
printwholething(head)
changenode(head)
printwholething(head)
deleteNode(head)
printwholething(head)
countnodes()
