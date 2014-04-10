---
layout: post
title: "Representable gem to parse nested results"
date: 2014-04-10 18:29:11 -0300
comments: true
categories: [Representable, Ruby, Savon, Soap]
keywords: "Representable, Ruby, Savon, Soap"
description: Using representable gem to parse nested results 
---

Recently, I had to integrate with a SOAP Webservice from Ruby.

Thanks to [Savon gem](http://savonrb.com/version2/) this was pretty easy.

To invoke the webservice, I made a simple method:

{% include_code savon_request.rb %}

Savon already gives us a hash response, making easier to deal it.

Usually soap responses are pretty nested, so I use representable with goal of only map it.

I added the [representable gem](https://github.com/apotonick/representable) and create a (in my scenario) a client response:

{% include_code client_representer.rb %}

To map for a real class that my application understands, i've created a Virtus Model and extend the representable.

Virtus model:

{% include_code client_virtus.rb %}

And to map it:

{% include_code service_representable_sample.rb %}

That's is:

- I made a request for a SOAP webservice using Savon.
- Create a representable to parse the results.
- Use a Virtus model that my application can handle.

Of course it be made better, so feel free to comment it :)


