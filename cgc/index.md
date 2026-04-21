---
layout: default
title: The Cyber Grand Challenge
permalink: /cgc/
---

# The Cyber Grand Challenge

<figure>
    <img src="{{ '/cgc_shellphish.png' | relative_url }}" alt="Shellphish CGC Logo" width="100%" />
</figure>

In 2014, with no battle plan and little idea of what it would do to our lives, Shellphish signed up for the DARPA Cyber Cyber Grand Challenge.
The CGC was a competition to create autonomous hacking systems that went head-to-head against each other in a no-humans-allowed computer hacking match.
This had never been done before.
There was no blueprint, and no one, *especially* not us, knew quite what to expect.

The competition was challenging beyond anything we had experienced before.
To qualify for the final event, we had to defeat many established security companies and researcher labs, with a system that we had to build in what little time we had left over from research and classes.
In the leadup to the final event, our team was pushed to the limit as we faced ever-increasing pressure to finish our system in time.

In the end, we made it.
This page is a central archive to hold the story of our participation in the CGC, track various things written about it around the internet, and provide a central index for our proud open-sourcing of the Mechanical Phish.

## The Event

Our autonomous cyber-creature, the Mechanical Phish faced off against six other cleverly-named competitors and fought well, winning third place and a $750,000 prize (in addition to the $750,000 qualification award).

It was the top system not developed by a corporation, beating systems made by companies such as Raytheon, the best-ranking system on offense, and the second-best on defense.
It also marked the beginning of the obsolescence of humanity from yet another field&hellip;

<figure>
    <img src="{{ '/cgc_finalscoreboard.jpg' | relative_url }}" alt="The CGC Scoreboard" width="100%" />
</figure>

## The Team

<figure>
    <img src="{{ '/cgc_team_landscape.jpg' | relative_url }}" alt="The Shellphish Team" width="100%" />
</figure>

From Left to Right:

<dl>
<dt>Antonio Bianchi (anton00b)</dt>
<dd>&ldquo;FIXME&rdquo;</dd>
<dt>Kevin Borgolte (cao)</dt>
<dd>Scheduling, Infrastructure</dd>
<dt>Jacopo Corbetta (hacopo)</dt>
<dd>Resident Know-it-all</dd>
<dt>Francesco Disperati (nebirhos)</dt>
<dd>Chief Surfing Officer, Infrastructure</dd>
<dt>Audrey Dutcher (rhelmot)</dt>
<dd>Second Youngest Program Analysis Expert</dd>
<dt>Giovanni Vigna (zanardi)</dt>
<dd>The Professor - Hackademic Representative</dd>
<dt>Aravind Machiry (donfos)</dt>
<dd>Hack -&gt; Crossfit -&gt; Repeat</dd>
<dt>Chris Salls (salls)</dt>
<dd>Automated Exploitation Engine</dd>
<dt>Yan Shoshitaishvili (zardus)</dt>
<dd>Fearless(?) Captain</dd>
<dt>Nick Stephens (mike_pizza)</dt>
<dd>Chief Intern and Third Youngest Automated Exploitation Expert</dd>
<dt>Ruoyu Wang (fish)</dt>
<dd>Fish, Human CRS</dd>
</dl>

Not in the Picture:

<dl>
<dt>John Grosen (nezorg)</dt>
<dd>Youngest Program Analysis Expert</dd>
<dt>Paul Grosen (paul)</dt>
<dd>Youngest Program Analysis Intern, knows x86 better than you</dd>
</dl>

## Our Tools

As hackademics, we want to push forward the scope of what is possible.\
To that end, we are open-sourcing every last line of code of the Mechanical Phish for the community to use, learn from, and build on!

The Cyber Grand Challenge was the first time anything like this was attempted in the security world.
As such, Mechanical Phish is an extremely complicated piece of software, with an absurd amount of components.\
No blueprint for doing this existed before the CGC, so we had to figure things out as we went along.\
Unfortunately, rather than being a software development shop, we are a "mysterious hacker collective".\
This means that Mechanical Phish has some rough components, missing documentation, and ghosts in the machine.
Our hope is that, going forward, we can polish and extend Mechanical Phish, as a community, to continue to push the limits of automated hacking.\
For now, keep in mind that this was never designed to be turn-key, might not install without extreme effort, and might not work without a lot of tweaking.
Otherwise, have at it!

We have split the components of the Mechanical Phish up to form three categories:

- The underlying binary analysis framework, [angr](https://github.com/angr/angr) ![angr](https://img.shields.io/github/stars/angr/angr.svg?style=social&label=angr)

- Components that can be used as standalone tools in security research and CTF competitions, such as [*Driller*](https://github.com/shellphish/driller) ![driller](https://img.shields.io/github/stars/shellphish/driller.svg?style=social&label=Driller) (our crash discovery technique), [*Rex*](https://github.com/shellphish/rex) ![rex](https://img.shields.io/github/stars/shellphish/rex.svg?style=social&label=Rex) (our automated exploitation tool), [*Patcherex*](https://github.com/shellphish/patcherex) ![patcherex](https://img.shields.io/github/stars/shellphish/patcherex.svg?style=social&label=Patcherex) (for automated patching), and [*angrop*](https://github.com/salls/angrop) ![angrop](https://img.shields.io/github/stars/salls/angrop.svg?style=social&label=angrop)  (our automatic ropchain builder).

- The [glue components](https://github.com/mechaphish/mecha-docs) ![docs](https://img.shields.io/github/stars/mechaphish/mecha-docs.svg?style=social&label=Docs) of the Mechanical Phish, containing everything specific to the CGC itself.

## Want to Know More?

The Cyber Grand Challenge drew intense media attention.
We've compiled the set of media articles here that show us in the best possible light. Enjoy!

### Videos

- [DARPA's Cyber Grand Challenge: The Highlights from the Final Event](https://www.youtube.com/watch?v=v5ghK6yUJv4)
- [DARPA's Cyber Grand Challenge: Final Event Program](https://www.youtube.com/watch?v=n0kn4mDXY6I)
- [Team Shellphish: DARPA's Cyber Grand Challenge](https://www.youtube.com/watch?v=9y5Myzt7Zaw)
- [New York Times Interview (Facebook Live)](https://www.facebook.com/nytimes/videos/10150864919889999/)

### Articles

- [Mechanical Phish auto-exploit auto-patch kit lands on GitHub, The Register](http://www.theregister.co.uk/2016/08/22/mechanical_phish_autoexploit_autopatch_kit_lands_on_github/)
- [Will Humans or Bots Rule Cybersecurity? The Answer Is Yes, Wired](http://www.wired.com/2016/08/will-humans-bots-rule-cybersecurity-answer-yes/?mbid=social_twitter)
- [Cyber-Gladiators, The UCSB Current](http://www.news.ucsb.edu/2016/017082/cyber-gladiators)
- [These grad students want to make history by crushing the world's hackers, Yahoo Finance](http://finance.yahoo.com/news/cyber-grand-challenge-darpa-team-000000358.html)

### Papers

- [Cyber Grand Shellphish](http://www.phrack.org/papers/cyber_grand_shellphish.html), Phrack Magazine, 2017.
- [Mechanical Phish: Resilient Autonomous Hacking](https://ieeexplore.ieee.org/document/8328966), Yan Shoshitaishvili, Antonio Bianchi, Kevin Borgolte, Amat Cama, Jacopo Corbetta, Francesco Disperati, Audrey Dutcher, John Grosen, Paul Grosen, Aravind Machiry, Chris Salls, Nick Stephens, Ruoyu Wang, Giovanni Vigna, IEEE Security and Privacy Magazine, vol. 16, no. 2, March 2018.

You can contact the Shellphish CGC team at [cgc@shellphish.net](mailto:cgc@shellphish.net).
