## [Handcar](http://inem.github.com/handcar.html) ##

## Overview ##

Have you ever wanted to type console.log() in your rails app?  

    def index
      @people = People.all.age_less_than_20
      console.log(@people)
    end

Handcar lets you to push data from your rails application to firebug console

- It is useful when you do not want to deal with ruby debugger in simple cases
- No more every-minute switching from firefox/firebug to shell and logs scrolling looking for needed piece of data

[Just grab the plugins!](http://inem.github.com/handcar.html)

## Features ##

- Here is your action:  

        def index
            honk('Handcar is ruby on rails console for your firebug')
            honk(['this is stirng',2,{:hash_in => 'Array'},5,6])
            honk(nil)
            honk(2)
            honk({:simple_hash => {:hash_in => 'Hash'}, :in => ''})
        end

- And here is you firebug console:  
![handcar output in firebug console](http://inem.github.com/images/handcar-full.png)
- And moreover, when you get an error, it will display all your honks before that error:  
![handcar output in firebug console](http://inem.github.com/images/handcar-error.png)  
I think you have got the idea

## Installation ##

Handcar has two incarnations: rails plugin & firefox plugin.  
Both had to be installed:

- [Firefox extention](http://inem.github.com/plugins/handcar.xpi)
- Rails plugin:  
./script/plugin install git://github.com/inem/handcar.git

## Possible issues ##

- Handcar aims only local development process. It will not communicate with non-localhost machine.
- You will not see actual ruby objects in firebug. Of course it is your objects' representations in JSON format

## Source code ##

- [http://github.com/inem/handcar](http://github.com/inem/handcar)
- [http://github.com/inem/handcar-firefox](http://github.com/inem/handcar-firefox)