
class Customer
  ONLY_ONE = 1
  def initialize(menu = Menu, order = Order)
    @menu = menu.new
    @order = order.new
  end

  def look
    @menu.show
  end

  def choice(name, amount = ONLY_ONE)
    @order.add(name, amount)
  end

  def checkout(my_idea_of_the_cost)
    raise "You are charging me the incorrect price" if @order.cost != my_idea_of_the_cost
    puts "You will pay £#{@order.cost}"
  end
end
