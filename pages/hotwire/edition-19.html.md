---
title: ⚡️ Hotwire dev newsletter - November 2022
date: 2022-11-24
description: |
  The Rails Foundation, an exciting new API was added to Stimulus, vanilla Rails
  is “plenty”, a new Turbo Native article, and more.
layout: hotwire

---

Welcome back to the November edition of the ⚡️ Hotwire dev newsletter!

This month the Rails Foundation was announced, an exciting new API was added to Stimulus, we learn that vanilla Rails is “plenty”, and more. There’s even a Turbo Native article that wasn’t written by me!

Speaking of Turbo Native, I’m putting the finishing touches on the curriculum and content for my first ever Turbo Native workshop. I’m hosting 15 people next month for a 3-hour deep dive into the framework and how to apply it to their Rails apps. If all goes well I will be running this more regularly in the future. [Drop your email here](https://masilotti.com/turbo-native-workshop/) to get notified when the second session goes on sale.

In more meta news, this month’s edition includes fewer articles but more editorial notes from me. Do you prefer more of my thoughts or more links? Hit the Reply button and let me know – replies go directly to my personal inbox.

## 📰 News

### [The Rails Foundation kicks off with one million dollars](https://rubyonrails.org/2022/11/14/the-rails-foundation)

Earlier this month The Rails Foundation was announced. Its mission is to “improve the documentation, education, marketing, and events in our ecosystem to the benefit of all new and existing Rails developers.” The eight founding core members together endowed a whopping $1,000,000 in seed funding to kick it off.

I’m excited to see resources being officially (and publicly!) allocated to where Rails can use the most help: education and marketing. And I’m doubly excited that “new Rails developers” are explicitly called out. But I also worry if we are putting even _more_ responsibility and ownership in a few hands. It’s no secret that the big names in the Rails ecosystem have significant sway in which features make it into the framework.

### [Turbo Streams meets Action Cable](https://binarysolo.chapter24.blog/turbo-streams-meets-action-cable)

by Ayush Newatia [@ayushn21](https://twitter.com/ayushn21)

I’ve been thinking about adding real-time messaging to [RailsDevs](https://railsdevs.com) for a while now. But it always feels like too much work. Confession time… I’ve never used Action Cable. 🫢

So Ayush’s article couldn’t have come at a more perfect time! After only reading the overview section I already feel like I’m prepared to start integrating live updates to my app. “It packs in immense power with relatively little code.” – I couldn’t agree more.

### [Stimulus gets an Outlets API](https://github.com/hotwired/stimulus/pull/576)

by Marco Roth [@marcoroth_](https://twitter.com/marcoroth_)

> The Outlets API lets you reference Stimulus Controller instances and their *controller element* from within another Stimulus Controller by using CSS selectors. The use of Outlets helps with cross-controller communication and coordination as an alternative to dispatching custom events on controller elements.

When I saw [Marco tweet this](https://twitter.com/marcoroth_/status/1593281738574266369) I let out an audible YES! I’ve used `getControllerForElementAndIdentifier()` too many times and it has always felt so hacky. Good riddance! I can’t wait for a new release to get cut so I can start integrating this into my projects."

## [Stimulus gets an Outlet API](https://github.com/hotwired/stimulus/pull/576)

by Marco Roth [@marcoroth_](https://twitter.com/marcoroth_)

> The Outlets API lets you reference Stimulus Controller instances and their *controller element* from within another Stimulus Controller by using CSS selectors. The use of Outlets helps with cross-controller communication and coordination as an alternative to dispatching custom events on controller elements.

When I saw [Marco tweet this](https://twitter.com/marcoroth_/status/1593281738574266369) I let out an audible YES! I’ve used `getControllerForElementAndIdentifier()` too many times and it has always felt so hacky. Good riddance! I can’t wait for a new release to get cut so I can start integrating this into my projects."

## 🛍️ Black Friday deals

Black Friday deal season is starting! Here are some links to Ruby/Rails deals I’ve started to see pop up. Note that some of these are affiliate links.

* 36% off [GoRails](https://gorails.com/pricing) with the yearly plan.
* $50 off [Jumpstart Pro Rails, iOS, and Android](https://jumpstartrails.com/pricing).
* 40% off [The Pragmatic Programmers](https://pragprog.com) books with code `turkeysale2022`.
* Discounts on [Advanced CableReady](https://julianrubisch.gumroad.com/l/acr/bf-2022) and [StimulusReflex Patterns](https://julianrubisch.gumroad.com/l/srp-acr/bf-2022).
* 40% off the [Learn Hotwire course](https://mixandgo.com/lp/learn-hotwire?affiliate=masilotti) from Cezar Halmagean of Mix & Go.
* All [Pragmatic Studio courses](https://pragmaticstudio.com/courses/hotwire-rails?ref=masilotti) are 40% off with code `2022SALE`.

## 👀 One more thing…

I’m kicking off a new initiative: an **official RailsDevs referral program**. Send me an [email](mailto:joe@masilotti.com) or [DM](https://twitter.com/joemasilotti) if you want to be one of the first involved! You’ll get a revenue share for each paying business you refer - including a cut of any hiring fees.
