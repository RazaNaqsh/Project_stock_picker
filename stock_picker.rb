
stocks = [1,2,3,10,4,7,11,14,16,9]
def stock_picker(stocks)
    
    highest_profit = 0
    index_highest= []
    stocks.each_with_index do |stock1,ind1|
        # p stock1

        stocks.each_with_index do |stock2,ind2|
            # p stock2
            if stock2-stock1 > highest_profit && ind1<ind2
                highest_profit = stock2 - stock1
                index_highest = [ind1,ind2]
            end
        end
     
        # p "end of loop"
    end
    p "Highest profit: buy at #{stocks[index_highest[0]]}  sell at #{stocks[index_highest[1]]}. Profit of #{highest_profit}"
    p "and the days are : #{index_highest}"
    
end
stock_picker([20, 4, 16, 1])
