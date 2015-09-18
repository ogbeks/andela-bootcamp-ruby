class Encryptor
 def self.cipher
   ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
 end
 def self.encrypt (password, position)
  password_array = password.chars
  encrypt_password = []
  password_array.each do |character|
   if(character == "z")
     encrypt_password << cipher[position - 1]
   else
   encrypt_password << self.cipher[self.cipher.index(character) + position]
 end
  end
  encrypt_password.join
 end
  def self.decrypt (password, position)
  password_array = password.chars
  encrypt_password = []
  password_array.each do |character|

   encrypt_password << self.cipher[self.cipher.index(character) - position]

  end
  encrypt_password.join
 end
end
