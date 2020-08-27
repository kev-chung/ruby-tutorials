users = [ 
          { username: "kevin", password: "pw1" }, 
          { username: "jack", password: "pw2" },
          { username: "jill", password: "pw3" },
          { username: "david", password: "pw4" },
          { username: "jess", password: "pw5" },
        ]

def validate_creds(un, pw, users)
  users.each do |user|
    return user if user[:username] == un && user[:password] == pw 
  end

  return "Incorrect credentials"
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input form the user and then compare the entered password"
puts "If the password is correct, you will get back the user object"

for attempts in 1..3
  print "Username: "
  un = gets.chomp
  print "Password: "
  pw = gets.chomp

  puts validate_creds(un, pw, users)

  puts "Press q to quit or any other key to continue"
  cont = gets.chomp.downcase
  break if cont == "q"  
end

puts "You have exceeded the number of attempts"

