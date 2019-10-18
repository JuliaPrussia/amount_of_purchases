basket = {}
summ = 0

loop do
  print "Введите наименования товара(стоп/stop для окончания операции): "
  item_name =gets.chomp
  item_name.downcase!
  break if item_name == "stop" || item_name =="стоп"
  print "Введите стоимость товара: "
  item_coast = Float(gets.chomp)
  print "Укажите количество товара: "
  item_quantity = Float(gets.chomp)
  basket[item_name] = { coast: item_coast, quantitu: item_quantity, total_cost: item_coast * item_quantity}
end

basket.each do | item, properties |
  puts "#{item}: Cтоимость единицы товара: #{properties[:coast]}. Общая стоимость товара: #{properties[:total_cost]}"
  summ += properties[:total_cost]
end

puts "Итоговая стоимость покупки: #{summ}"
