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
  
