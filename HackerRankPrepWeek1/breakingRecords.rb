def breakingRecords(n)
    
    min = n[0]
    max = n[0]
    min_total = 0
    max_total = 0
    for i in 1 .. n.length-1 do
        if n[i] > max
            max = n[i]
            max_total+=1
        end
        if n[i] < min
            min = n[i]
            min_total+=1
        end

    end
    puts max_total
    puts min_total
    answer = [max_total,min_total]
end

breakingRecords([12,24,10,24])