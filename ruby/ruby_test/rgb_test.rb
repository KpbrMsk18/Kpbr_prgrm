=begin
2019.03.06
 Create New by Sakagami
 For the first time
=end

require 'minitest/autorun'
require './lib/rgb'

class RgbTest<Minitest::Test

   def test_to_hex
     assert_equal '#000000', to_hex(0,0,0)
     assert_equal '#ffffff', to_hex(255,255,255)
     assert_equal '#043c78', to_hex(4,60,120)
   end
   def to_hex(r,g,b)
       [r,g,b].inject('#') do |hex,n|
        hex + n.to_s(16).rjust(2,'0')
       end
   end
   def test_to_ints
     assert_equal [0,0,0], to_ints('#000000')
     assert_equal [255,255,255], to_ints('#ffffff')
     assert_equal [4,60,120], to_ints('#043c78')
   end
   def to_ints(hex)
     r = hex[1..2]
     g = hex[3..4]
     b = hex[5..6]
     [r,g,b].map do |s|
       s.hex
     end
   end
end

