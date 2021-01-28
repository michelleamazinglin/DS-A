# You are given an array prices where prices[i] is the price of a given stock on the ith day.

# You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

# Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.


def max_profit(prices)
    min = prices[0]
    pro = 0
    prices.each do |p| 
      min = [min, p].min
      pro = [pro, p-min].max
    end
    pro
end

# set the min_price to the first number
# set profit to 0
# iterate through the array
# set the min to the min of  min_price or p 
# set the profit to the max of profit or pro - min

# O(n)