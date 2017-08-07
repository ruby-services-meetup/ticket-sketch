class Handler

  # declare store ...

  handle PurchaseTicket do |puchase_ticket|
    performance_id = puchase_ticket.performance_id

    performance = store.fetch(performance_id)

    quantity = puchase_ticket.quantity

    if performance.available?(quantity)
      # write a SoldOut event
      return
    end

    stream_name = stream(performance_id)

    ticketPurchased = TicketPurchased.follow(purchase_ticket)

    write.(ticketPurchased, stream_name, expected_version: 2)
  end
end
