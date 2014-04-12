---
layout: post
title: "Rails console not opening in MacOS"
date: 2014-04-12 12:21:12 -0300
comments: true
categories: [Rails, console]
keywords: "Rails, console"
description: "Rails console not opening in MacOS"
---

This week, I had a problem when I reinstalled my Ruby version. 

When I went to terminal and type `rails console c`, it was not working presenting this error message:

{% codeblock %}
.rvm/rubies/ruby-2.0.0-p247/lib/ruby/2.0.0/irb/completion.rb:9:in `require': cannot load such file -- readline (LoadError)
{% endcodeblock %}

After some googling and asking it about in [StackOverflow](http://stackoverflow.com/questions/22995981/rails-console-is-not-working-rails-c), a user give a hint: _"You didn't compile Ruby with readline support."_

Then, I found this [link](https://github.com/guard/guard/wiki/Add-Readline-support-to-Ruby-on-Mac-OS-X) that teachs 3 ways to do and this worked for me:

- Go to terminal
- brew install readline
- Open the file `~/.rvm/user/db` and add the line: `ruby_configure_flags=--with-readline-dir=/usr/local/opt/readline`
- rvm reinstall 2.0.0-p247 

Now, when I go to terminal and type `rails console c`, it's working again :)

Hope it helps someone :)
