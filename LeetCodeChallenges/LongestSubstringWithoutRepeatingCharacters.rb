def length_of_longest_substring(s)
    letters = s.split("")
    subString = []
    sum = 0
    

    if s.empty?
        puts 0
    end
    
        
=begin
    

    

    for i in 1 .. letters.length-1
        
        if subString.include?(letters[i])
            subString = letters[i]
            if sum > maxSum
                maxSum = sum
            end
            sum = 1
        else
            subString = subString + letters[i]
            sum+=1
        end
    end
=end

back = 0
front = 0
while back < letters.size
    if !subString.include?(letters[back])
        subString << letters[back]
        back+=1
        sum = subString.size > sum ? subString.size : sum
    else
        front += subString.index(letters[back]) + 1
        subString = letters[front..back]
        back += 1

    end
    
end


    puts sum
    

end

length_of_longest_substring("au")