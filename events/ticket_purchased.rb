module Events
  class TicketPurchased
    attr_accessor :ticket_id
    attr_accessor :performance_id
    attr_accessor :customer_id
    attr_accessor :price
    attr_accessor :time
  end
end
