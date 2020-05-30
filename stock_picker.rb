def stock_picker(prices)
    if prices.length <= 1
        return 0
    end
    buy_day = 0
    sell_day = 0
    i = 0;
    j = 1;
    max_profit = 0
    while j < prices.length
        if prices[j]-prices[i] > max_profit
            max_profit = prices[j]-prices[i]
            buy_day = i
            sell_day = j
        elsif prices[j] < prices[i]
            i = j
        end
        j += 1
        puts(max_profit)
        print(buy_day)
        print(" ")
        puts(sell_day)
    end

    return [buy_day, sell_day]
    
end

print(stock_picker([17,3,6,9,15,8,6,1,10]))
print("\n")