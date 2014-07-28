# Optional
class Transaction
  def initialize(amount)
    @amount = amount
    @date = Time.now
    # Initialize amount and date of transaction
  end

  def to_s
    # Nicely print transaction infos using Time#strftime.
  end
end
