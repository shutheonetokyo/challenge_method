require "./methods.rb"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

disp_plans(plans)
chosen_plan = choose_plan(plans)
reserve_number = decide_quantity(chosen_plan)
calcurate_charges(chosen_plan, reserve_number)
