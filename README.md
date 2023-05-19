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
    name * 3
  end

  triple_name = say_hello "Edison"
  puts triple_name    #EdisonEdisonEdison
  ```
  the last expression would implicitly be the return value
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
  - METHODS
    - .length
    - .split(", ")    # would return an array
    - .reverse(!)
    - .capitalize(!)
    - .sub(!) vs. gsub(!) (g stands for global)  
      `puts "Hi Peoria".sub("Chicago")  # Hi Chicago`
    - .empty?  
      `puts "".empty?   # true`
    - .nil?  
      `puts nil.nil?    # true`
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
  - METHODS
    - .times
      `10.times {print "-"}   # executes the code for 10 times`
    - .odd?
    - .even?
    - .to_i
    - .to_f
    - .to_s
  - get random number  
  `puts rand(100)   # [0, 99]`
- boolean
  - `true || false && !false`
- comparison  
  - [== vs. === vs. eql? vs. equal?](https://medium.com/@khalidh64/difference-between-eql-equal-in-ruby-2ffa7f073532)
  - quick examples
    - `10 == "10"     # false`
    - `10 == "10".to_f    #true`
    - `10 === 10.0      #true`
    - `10.eql?(10.0)    #false(comparing both type and value)`
- Branching
  ```
  day = "workday"
  if day == "workday"
    puts "work!"
  elsif day == "weekend"
    puts "chill!"
  elsif day == "holiday"
    puts "chill!"
  else
    puts "???"
  end 
  ```
- Arrays (and Iterators & Range)
  - zero-indexed
  - print vs. puts vs. p
    - print array [1, 2]    
      `[1, 2]`
    - puts array [1, 2]  
      ```
      1\n
      2\n
      ```
    - p array
      `[1, 2]\n`
  - Range
    ```
    x = (1..3).to_a
    p a  # [1, 2, 3]

    y = ("a".."c").to_a
    p a  # ["a", "b", "c"]
    
    ```

  - Iterators
    ```
      # traditional way
      for ele in arr
        puts ele
      end

      # iterators
      arr.each do |ele|
        puts ele
      end

      # iterators(one line)[PREFERRED]
      arr.each {|ele| puts ele}

      # .select(!)
      arr.select {|ele| ele.odd?}
    ```

  - METHODS
    - .length
    - .last / .first
    - %w(hello world) # would return an array ["hello", "world"]
    - .shuffle(!)     (will mutate the caller itself)
    - .reverse(!)
    - .uniq(!)  # remove ALL the duplicates
    - .include?
    - .join   # return a concatenated string  
      `arr.join(", ")`
    - add element
      - to the first `arr.unshift("first element")`
      - to the last
        - `arr << "last element"`
        - `arr.append("last element")   #######FIFO######`  
        - `arr.push("last element")     #######LIFO######`
    - remove and return element
      - the first element
        - `arr.shift    #######FIFO######`
      - the last element
        - `arr.pop    #######LIFO######`
- Hashes
  - create
  ```
  my_details = {"name" => "edison", "favcolor" => "grey"}
  p my_details["favcolor"]
  ```
  - Symbol [identity -> something that wouldn't change]  
  ```
  symbol_key_hash = {a: 1, b: 2, c: 3}
  # symbol_key_hash = {:a => 1, :b => 2, :c => 3}
  puts symbol_key_hash[:b]
  ```
    - In Ruby 2.3(.0), these are all the same:  
      {:"a" => 1}  
      {"a": 1},  
      {:a => 1}  
      {a: 1}  

      They all translate to the same thing: a is a symbol in all these cases.  

      {"a"=>1} is different: a is a string in this case.

  - Iterators
    ```
    hash = {a: 1, b: "hello", c: 3, "d": 4}

    # block
    hash.each do |key, value|
      puts "The class for key is #{key.class} and the value is #{value.class}"
    end

    # one line style
    hash.each {|k, v| puts "The class for key is #{k.class} and the value is #{v.class}"}

    # .select(!)
    hash.select! {|k, v| v.is_a?(String)}
      #SAME AS
    hash.each {|k, v| hash.delete(k) if !k.is_a?(Symbol)}
    ```


  - add and modify the hash
  ```
  hash = {a: 1, b: 2, c: 3}
  hash[:d] = 4
  hash[:a] = 0
  ```

  - METHODS
    - .keys
    - .values
    - .delete
