# jarch
With the help of jruby and warble gem we can transform our ruby piece into a java piece. You can create executables JARS from Jruby.

I have taken some idea from this [blog](https://notepad.onghu.com/2021/jruby-win-day2-creating-jar-files/)

During the creation of jar file, I did not face any issue. I tried to run the jar file by running the command
`java -jar jarch.jar` and it returns the expected output.

But after deleting all the ruby files, when I run again the jar I got the error :anger:

```sh
  LoadError: no such file to load -- ./lib/factorial

```
I move my jar file to a different location and get the same above error. :cry:

### Next step: debugging

This is my bin/jarch.rb file

```shell

~/dev/jarch$ cat bin/jarch.rb 
require "./lib/factorial.rb"

puts "Enter the number: "
num = gets.chomp.to_i


```

I create two ruby files, blah.rb and test.rb

```shell

~/dev/jarch$ cat blah.rb 

puts __FILE__
require './test'

~/dev/jarch$ cat test.rb 
puts "hello"

~/dev/jarch$ jruby blah.rb 
blah.rb
hello

~/dev/jarch$ cd ..
:~/dev$ jruby jarch/blah.rb 
jarch/blah.rb
LoadError: no such file to load -- ./test

```

I change the require with require_relative, and tested again

```shell

:~/dev$ jruby jarch/blah.rb 
jarch/blah.rb
hello

~/dev/jarch$ cd ..

:~/dev$ jruby jarch/blah.rb 
jarch/blah.rb
hello

:~/dev$ cd jarch/

:~/dev/jarch$ jrubyc blah.rb test.rb 
```
It should create tow class files, blah.class and test.class.

```shell
:~/dev/jarch$ jruby -Xaot.loadClasses=true blah.class 

blah.class
hello

:~/dev/jarch$ cd ..
:~/dev$ jruby -Xaot.loadClasses=true jarch/blah.class 
jarch/blah.class
hello

```

Same changes I made in my executables. And then createed the jar file by running 

```shell
jruby -S warble compiled executable jar

```

Move the created jar file in a separate location, run the command `java -jar jarch.jar`. 

```shell
:~/Desktop$ java -jar jarch.jar 
Enter the number: 
50
time taken: 0.001027 seconds
Factorial of 50 is 30414093201713378043612608166064768844377641568960512000000000000


```
This time success! :sleeping: