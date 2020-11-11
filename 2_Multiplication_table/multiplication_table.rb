puts "Enter a number"
number = gets.chomp.to_i

def get_table_multiplication number
    result = []
    for i in 1..10
        result.push(["#{i} * #{number}", i * number])
    end
    return result
end

def show_result array_result
    puts "La table de multiplication du chiffre #{array_result[0][1]} est :"

    array_result.each do |res|
        text = "#{res[0]} = #{res[1]}"
        puts text
    end
end

show_result(get_table_multiplication(number))