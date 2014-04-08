---
layout: post
title: "Using VCR with Timecop"
date: 2014-04-07 21:53:34 -0300
comments: true
categories: [Unit Testing, VCR, Timecop, Ruby]
keywords: "VCR, Timecop, Unit Testing, Ruby"
description: "Using VCR with Timecop"
---

If you already used <a href="https://github.com/vcr/vcr" target="_blank">`VCR`</a> to record requests to unit tests your application, maybe all your tests passed in the day you developed. Then you go to sleep, thinking in another task.

You wake up another day, run all the tests again and boom! All related to VCR are failing and you don't know why.

I run into this problem when I was using `VCR`  and <a href="https://github.com/travisjeffery/timecop" target="_blank">`Timecop`</a> gems.

I was using `Timecop` to freeze my requests and the other day, all my related tests was failing.

To fix this, I've looked and at this [issue](https://github.com/vcr/vcr/issues/266) and saw it was solved by exposing the `VCR::Cassette#originally_recorded_at`.

So, to make my tests passing again: 

{% include_code timecop_snippet.rb %}

In my case, I had trouble because my requests had time dependencies, so, I needed to use the time when the original cassete was recorded. Then I started using `Timecop` and the tests started to fail the other day.

But quick fixed!

Feel free to give feedback for better solutions :)

Happy coding!
