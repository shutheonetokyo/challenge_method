def disp_plans(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan,i|
    puts "#{i},#{plan[:place]}(#{plan[:price]}円)"
  end
end

def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1〜3の番号から選んでください。"
  end
  plans[select_plan_num - 1]
end

def decide_quantity(chosen_plan)
  puts "#{chosen_plan[:place]}ですね。"
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    reserve_number = gets.to_i
    break if reserve_number >= 1
    puts "1以上を入力して下さい。"
  end
  reserve_number
end

def calcurate_charges(chosen_plan, reserve_number)
  total_price = chosen_plan[:price] * reserve_number
  discount_price = (total_price * 0.9).floor
  if reserve_number >= 5
    puts "#{reserve_number}名ですね。"
    puts "5名以上ですので10%割引となります"
    puts  "合計料金は#{discount_price}円になります。"
  else
    puts "合計料金は#{total_price.floor}円になります。"
  end
end
