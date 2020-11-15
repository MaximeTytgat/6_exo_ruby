puts "Enter a number"
number = gets.chomp.to_i

# this method returns an array of array which contains the calculation and the result of this calculation
def get_table_multiplication number
    result = []
    for i in 1..10
        result.push(["#{i} * #{number}", i * number])
    end
    return result
end

# display result of def get_table_multiplication
def show_result array_result
    puts "La table de multiplication du chiffre #{array_result[0][1]} est :"

    array_result.each do |res|
        text = "#{res[0]} = #{res[1]}"
        puts text
    end
end

show_result(get_table_multiplication(number))