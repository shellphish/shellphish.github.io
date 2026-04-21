---
layout: default
title: Members
permalink: /members/
---

# Members

<dl>
{% for m in site.data.members -%}
  <dt>{% if m.emphasized %}<strong>{{ m.handle }}</strong>{% else %}{{ m.handle }}{% endif %}</dt>
  {% if m.name %}<dd>{{ m.name }}</dd>{% endif %}
  {% if m.note %}<dd>{{ m.note }}</dd>{% endif %}
  {% if m.joined %}<dd>Joined in {{ m.joined }}</dd>{% endif %}
{% endfor -%}
</dl>
