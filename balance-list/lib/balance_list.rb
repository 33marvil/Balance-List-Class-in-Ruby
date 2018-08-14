#code goes here

class BalanceList
  attr_reader :name # Solo lectura

  def initialize(name, balance) # Method constructor
    @name = name          # Variable de instancia
    @balance = balance
    @sigui = 0
  end

  def number_of_balances
    @balance.length
  end

  def total_balance # sumar los BalanceList  **** refactorizar con method inject*******
    #@balance[0][1] + @balance[1][1] + @balance[2][1]
    sum = 0
    @balance.each do |balance|
      balance[1]
      sum += balance[1]
    end
      sum #return implicito
  end

  def add_balance(balance)
    @balance.push(balance)
  end

  def current_balance_per_month
    x = @balance[@sigui][0]
    y = @balance[@sigui][1]
    "Mes: #{x}, Saldo: #{y}"
  end

  def next_balance # @balance[1][1]
    #@sigui += 1 # iniciar de 0 += 1
    # si @sigui llega al final sigui vulava a iniciar
    if @sigui < @balance.length - 1 # revisar operador logico
      @sigui += 1
    else
      @sigui = 0
    end
    @sigui
    @balance[@sigui][1]
  end

end# **

# def sum(a, b)
#   a + b
# end
#
# #sum = b
# p sum(2,4)
# p sum
# p sum = 6
#
# balance_1 = BalanceList.new("Manuel", [["Julio", 234], ["Enero", 456], ["Agosto", 123]])
# balance_1.total_balance
# balance_1.add_balance(["Marzo", 678])
# p balance_1.current_balance_per_month
# p balance_1.number_of_balances
# p balance_1.next_balance
# p balance_1.current_balance_per_month
# p balance_1.next_balance
# p balance_1.current_balance_per_month
