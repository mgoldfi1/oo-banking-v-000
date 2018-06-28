class Transfer
attr_reader :transfer
attr_accessor :status

def initialize(transfer)
  @transfer = transfer
  @status = "pending"
end

end
