class Performance
  attribute :id
  attribute :capacity
  attribute :sold_quantity

  def available_quantity
    capacity - sold_quantity
  end

  def available?(quantity)
    available_quantity >= quantity
  end

  def increase_availability(quantity)
    self.quantity += quantity
  end
end
