# ruby-on-rails
my working and learning notes for the summer23 internship @Caterpillar

## ruby language notes
- puts vs. print
  - difference: `puts "hello wolrd"` == print "hello world\n"
  - common: would return nil
- puts vs. p
  - difference: p would return the parameter string
  - common: the output to the console would be the same, i.e., with new line character
- define a method
  ```
  def say_hello(name)
    puts name
  end

  say_hello "Edison"
  ```
- string
  - concatenation  
    `puts "Edison" + ' ' + 'Zhang'`  
    `puts "-" * 10   # "----------"`
  - interpolation  
    ```
    first_name = 'Edison'
    last_name = "Zhang"
    puts "#{first_name} #{last_name}" # has to use double quote there
    ```
  - common methods
    - .length
    - .reverse
    - .capitalize
    - .empty?  
      `puts "".empty?   # true`
    - .nil?  
      `puts nil.nil?    # true`
    - .sub vs. gsub (g stands for global)  
      `puts "Hi Peoria".sub("Chicago")  # Hi Chicago`
  - variable assignment(pass by ref)
    ```
    first_name = "Jiahao"
    new_first_name = first_name
    new_first_name = "Edison"
    puts first_name    # "Jiahao"
    ```
  - get string from user
    ```
    puts "Enter a number to multiply by 2"
    input = gets.chomp
    puts input.to_i * 2
    ```
- numbers
  - Integer and Float
  ```
  puts 10 / 4  # 2
  puts 10 / 4.0 # 2.5
  puts 10 / 4.to_f  #2.5
  puts "10".to_i    #10
  puts "hello".to_i   #0
  ```
  - methods
    - .times
      `10.times {print "-"}   # executes the code for 10 times`
    - .odd?
    - .even?
    - .to_i
    - .to_f
    - .to_s
  - get random number  
  `puts rand(100)   # [0, 99]`
- comparison  ![== vs. === vs. eql? vs. equal?](https://medium.com/@khalidh64/difference-between-eql-equal-in-ruby-2ffa7f073532)
  - `10 == "10"     # false`
  - `10 == "10".to_f    #true`
  - `10 === 10.0      #true`
  - `10.eql?(10.0)    #false(comparing both type and value)`
