class Transfer
attr_reader :amount, :sender, :receiver
attr_accessor :status

def initialize(sender,receiver,amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end

def valid?
sender.valid? && receiver.valid?
end

def execute_transaction
  if self.status = "pending"
  sender.balance -= self.amount
  receiver.balance += self.amount
  self.status = "complete"
else
  sender.balance
  receiver.balance
end
end









end
