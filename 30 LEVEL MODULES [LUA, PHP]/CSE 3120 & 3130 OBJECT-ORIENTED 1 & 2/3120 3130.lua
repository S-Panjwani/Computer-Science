local bankaccount = {
    balance = 0,  
    AccountID = tostring(math.random(0, 10000000000)),
    transactions = {},
    main = {}
}

print("Welcome to the bank account system. Your account ID is: " .. bankaccount.AccountID)

local override = true

function bankaccount.checkbalance()
    print("Your balance is: $" .. bankaccount.balance)
    bankaccount.main.getoptions()
end

function bankaccount.transactions.deposit()
    io.write("Enter the amount you would like to deposit: $")
    local deposit = tonumber(io.read()) 
    if deposit and deposit > 0 then
        bankaccount.balance = bankaccount.balance + deposit
        print("Your new balance is: $" .. bankaccount.balance)
    else
        print("Invalid amount. Please try again.")
    end
    bankaccount.main.getoptions()
end

function bankaccount.transactions.withdraw()
    io.write("Enter the amount you would like to withdraw: $")
    local withdraw = tonumber(io.read())
    if withdraw and withdraw > 0 then
        if withdraw > bankaccount.balance then
            print("Insufficient funds. Please try again.")
        else
            bankaccount.balance = bankaccount.balance - withdraw
            print("Your new balance is: $" .. bankaccount.balance)
        end
    else
        print("Invalid amount. Please try again.")
    end
    bankaccount.main.getoptions()
end

function bankaccount.main.getoptions()
    if not override then
        print("Hello! Welcome to the account. Please clarify your Account ID to proceed:")
        local idinput = io.read()
        if idinput == bankaccount.AccountID then
            print("Welcome!")
            override = true 
        else
            print("Invalid Account ID. Please try again.")
            return bankaccount.main.getoptions()  
        end
    end

    print("What would you like to do?")
    print("1. Deposit")
    print("2. Withdraw")
    print("3. Check Balance")
    print("4. Exit")
    io.write("Enter your choice: ")
    local choice = io.read()

    if choice == "1" then
        bankaccount.transactions.deposit()
    elseif choice == "2" then
        bankaccount.transactions.withdraw()
    elseif choice == "3" then
        bankaccount.checkbalance()
    elseif choice == "4" then
        print("Goodbye!")
    else
        print("Invalid choice. Please try again.")
        bankaccount.main.getoptions()  
    end
end

bankaccount.main.getoptions()
