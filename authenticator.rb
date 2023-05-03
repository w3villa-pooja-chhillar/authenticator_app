users = [
    {username:"pooja",password: "password1"},
    {username: "akansha", password: "password2"},
    {username: "pratiksha",password: "password3"},
    {username: "nishtha",passowrd: "password4"}
]
def auth_user(username,password,list_of_user)
    list_of_user.each do|user_record|
        if user_record[:username] == username && user_record[:password]== password
             p user_record
             return
        end
    end
    p "credentials are not correct"
end
20.times {
    print("-")
}
p "this program will take input from user and compare password"
p "if passsword is correct then you will get to user object"

attempt = 1
while attempt<4
    p "username:"
    username = gets.chomp
    p "password:"
    password= gets.chomp
    auth_user(username,password,users)
    p "press n to quit or any other key to continue"
input = gets.chomp.downcase
break if input == "n"
attempt +=1
end
puts "You have exceed the limit" if attempt == 4
