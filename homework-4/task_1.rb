class CashMachine
  BALANCE_PATH = "balance.txt"

  if File.exist?(BALANCE_PATH)
    File.foreach(BALANCE_PATH) { |line| START_BALANCE = line.to_i }
  else
    START_BALANCE = 100.0
  end

  def self.init
    @balance = START_BALANCE

    loop do
      print "D(d): If You want deposit money\nW(w): If You want withdraw money\nB(b): If You want check balance\nQ(q): If You want quit \n\nPrint letter -> "
      @choice = gets.chomp

      if @choice == "D" || @choice == "d"
        print "Your balance: #{@balance}\nPrint how much money you want deposit -> "
        deposit_sum = gets.chomp.to_i

        if deposit_sum > 0
          @balance = @balance + deposit_sum
          print "Your new balance: #{@balance} \n"
        else
          print "Error! Deposit lower then 0. \n"
        end
      elsif @choice == "W" || @choice == "w"
        print "Your balance: #{@balance} \nPrint how much money you want withdraw -> "
        withdraw_sum = gets.chomp.to_i

        if withdraw_sum > 0 && withdraw_sum <= @balance
          @balance = @balance - withdraw_sum
          print "Your new balance: #{@balance} \n"
        else
          print "Error! Your can't withdraw this sum. Please enter valid sum. \n"
        end
      elsif @choice == "B" || @choice == "b"
        print "Your balance: #{@balance} \n"
      elsif @choice == "Q" || @choice == "q"
        File.write(BALANCE_PATH, @balance) if File.exist?(BALANCE_PATH)
        break
      else
        print "Error! Please enter the valid letter. \n"
      end
    end
  end
end

CashMachine.init
