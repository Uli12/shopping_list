@shopping = [ 
  {item: 'Fruit', price: 4.55},
  {item: 'Beer', price: 6.75},
  {item: 'Toilet Paper', price: 9.25},
  {item: 'Dental Floss', price: 1.15}
]

@cart = [ 

]

def menu

  puts "Select items for your shopping list"
  puts

    @shopping.each_with_index { |craig, index|
    puts "#{index + 1}) #{craig[:item]} $#{craig[:price]}"
  }
  puts "5) View shopping cart"
  selection
end

def selection
  name = gets.chomp.to_i
  if name == 1
    puts "Fruit $4.25 has been added to shopping cart"
    itemadded = @shopping[0]
    @cart << itemadded
  elsif name == 2
    puts "Beer $6.75 has been added to shopping cart"
    itemadded = @shopping[1]
    @cart << itemadded
  elsif name == 3
    puts "Toilet Paper $9.25 has been added to shopping cart"
    itemadded = @shopping[2]
    @cart << itemadded
  elsif name == 4
    puts "Dental Floss $1.15 has been added to shopping cart"
    itemadded = @shopping[3]
    @cart << itemadded
  elsif name == 5
    for i in @cart
      puts "#{i[:item]} $#{i[:price]}" 
    end

  end
  menu
end

menu
