# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount

  attr_reader :name, :position, :iban

  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    raise DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    add_transaction(-amount)
    " Your withdraw is: #{amount} /n Your current position is: #{@position}"
  end

    #you can withdraw or deposit money
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message

    #Implement BankAccount#withdraw and BankAccount#deposit.
    #Both these methods should call the private
    #BankAccount#add_transaction method (which is also called in the BankAccount#initialize).
    #These methods should return a message like "You've just withdrawn/deposit XXX euros".


  def deposit(amount)
    add_transaction(amount)
    " Your deposit is: #{amount} /n Your current position is: #{@position}"
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
  end

  def transactions_history(args = {})
    if args[:password] == @password
      #@transactions.map{|transaction| transaction.to_s}.join("\n")
      @transactions.map(&:to_s).join("\n") #=> Amelioration
    elsif args.empty?
      'no password given'
    else
      'wrong password'
    end

    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
  end

  def iban
    @iban[0..3] + "*"*(@iban.size-7) + @iban[-3..-1]

  end
  # TODO: Hide the middle of the IBAN like FR14**************606 and return it

  def to_s
    "Account Owner: #{@name} /n IBAN:#{iban} /n Position: #{@position}"
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
  end

  private

  def add_transaction(amount)
    @transactions << amount
    @position += amount
    # TODO: add the amount in the transactions array
    # TODO: update the current position (which represents the balance of the account)
  end

end
