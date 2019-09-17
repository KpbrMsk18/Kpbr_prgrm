#2019.09.17 ハッシュ記法変換プログラム

require 'minitest/autorun'
require './lib/convert_hash_syntax'

#class ConvertHashSyntaxTest < Minitest::Test
#  def test_convert_hash_syntax
#    assert_equal '{}', convert_hash_syntax('{}')
#  end
#end
class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
    {
      :name => 'Alice',
      :age => 20,
      :gender => :female
    }
    TEXT
    expected = <<~TEXT
     {
       name: 'Alice',
       age: 20,
       gender: :female
     }
     TEXT
     actual = convert_hash_syntax(old_syntax)
     puts actual
     assert_equal expected, convert_hash_syntax(old_syntax)
  end
end
