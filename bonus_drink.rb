class BonusDrink
  puts "最初に購入した飲み物の本数を入力してください"
  amount = gets.to_i
  
  def self.total_count_for(amount)
    total_count = 0

    while amount >= 3 do
        # 飲んだ本数を加算
        total_count = total_count + (amount/3) * 3
        # ボーナスでもらえる数と、余りを合計して次のループに回す
        amount = (amount/3) + (amount%3)
    end

    puts "飲んだドリンクは #{amount + total_count} 本"
  end

  print total_count_for(amount)
end
