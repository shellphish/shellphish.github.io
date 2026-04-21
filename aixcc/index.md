---
layout: default
title: AI Cyber Challenge (AIxCC)
permalink: /aixcc/
---

# The AI Cyber Challenge

<figure>
    <img src="{{ '/artiphishell.png' | relative_url }}" alt="Shellphish AIxCC Logo" width="100%" />
</figure>

The [AI Cyber Challenge (AIxCC)](https://aicyberchallenge.com/) is a two-year competition sponsored by DARPA and ARPA-H,
designed to address pressing cybersecurity challenges in an increasingly interconnected world.

Complex open-source software is part of the backbone of essential systems from financial networks to public utilities, and therefore there is a need
for autonomous, scalable, efficient, and robust AI-enabled cybersecurity solutions to identify vulnerabilities in software and fix them before they are exploited
by adversaries with disastrous consequences.

AIxCC brings together top minds in AI and cybersecurity to develop innovative AI systems capable of safeguarding the software that
underpins critical sectors, including healthcare, transportation, and public utilities.
The competition offers a total of $29.5 million in prizes, with $7 million specifically allocated to small businesses to encourage entrepreneurial innovation.

AIxCC is a collaboration between leading AI companies, DARPA, and ARPA-H, ensuring that
competitors have access to the latest technology and expertise.
The competition also works closely with the open-source community, emphasizing the importance of
securing open-source software, which is integral to much of the world's critical infrastructure.

The competition takes place at DEF CON, one of the world's premier cybersecurity conferences.
The semifinals were carried out during DEF CON 2024, with the final competition at DEF CON 2025, where the top team will be awarded a $4 million prize.

The Shellphish team participates to this competition with a novel Cyber Reasoning System (CRS), called ARTIPHISHELL, which qualified for the final competition in August 2024,
receiving a 2 million dollar award (see the [press release]({{ '/aixcc/shellphish_aixcc_qualification/' | relative_url }}) for details).

The ARTIPHISHELL AI-based Cyber Reasoning System is the result of many year of research work from the members of the Shellphish hacker collective.
Some of the relevant works published in the last ten years are listed below.

<ul>
{% for p in site.data.aixcc_publications %}
  <li>
    <strong><ptitle>{{ p.title }}</ptitle></strong>
    <br />
    <em><pauthor>{{ p.authors }}</pauthor></em>
    <br />
    <span class="docproc">{{ p.venue }}</span>
    <br />
    <span class="docwhere">{{ p.where }}</span> <span class="docwhen">{{ p.when }}</span>
    <br />
    [ <plink><a href="{{ '/aixcc/publications/' | relative_url }}{{ p.slug }}.pdf">PDF</a>, <a href="{{ '/aixcc/publications/' | relative_url }}{{ p.slug }}.bib">Bib</a></plink> ]
  </li>
{% endfor %}
</ul>
