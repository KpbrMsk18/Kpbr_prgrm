
#2019.08.24 Created
#面積を求める


dimentions = [
  [10, 20],
  [30, 40],
  [50, 60]
]

areas = []

dimentions.each_with_index do |(heights, width)|
  dimention = heights * width
  puts "heights: #{heights}, width: #{width}, dimention: #{dimention}"
  #puts "heights: #{heights}, width: #{width}, i: #{i}"
  #areas << heights * width
end
