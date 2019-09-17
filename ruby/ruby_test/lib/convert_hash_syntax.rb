#convert_hash_syntax
def convert_hash_syntax(old_syntax)
  #ハッシュ記法の変換
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end
