class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  #if sender status is equal reciever stats
  def valid? 
    if receiver.valid? && sender.valid?
      true
    else
      false 
   end
  end

    def execute_transaction
      if valid? && != "complete"
      
        if valid? && @sender.balance > @amount
        @sender.balance -= @amount
        @receiver.balance += @amount 
        @status = "complete"
          else
           @status = "rejected"
            "Transaction rejected. Please check your account balance."
       end
    end


end
  
      #if true && true && true && true ..ect 
       #if valid? && @sender.balance &&  

