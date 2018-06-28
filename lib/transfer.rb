class Transfer
attr_reader  :sender, :receiver
attr_accessor :status, :amount

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
  if sender.valid?
  sender.balance -= self.amount
  receiver.balance += self.amount
  self.status = "complete"
else
  self.amount = 0

end
end









end
