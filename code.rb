COINS = [1, 5, 10, 25, 50, 100]
#lets go greedy
def make_change(total, *change)
  COINS.reverse.each do |coin|
    if total == 0
      return change
    elsif total >= coin
      return make_change(total - coin, change.flatten, coin)
    end
  end
end
puts make_change(72)
