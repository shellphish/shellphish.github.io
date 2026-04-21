# shellphish.github.io

Source for <https://shellphish.net>. Built with [Jekyll](https://jekyllrb.com/)
and hosted on GitHub Pages. Most pages are plain Markdown; the members list
and AIxCC publication list live in YAML under `_data/` so new entries are a
one-line edit.

## Layout

```
_config.yml               Jekyll config
_layouts/default.html     shared <head>/navbar; every page uses this
_data/members.yml         member roster
_data/aixcc_publications.yml   AIxCC publication list
index.md                  / — home
members/index.md          /members/
cgc/index.md              /cgc/
aixcc/index.md            /aixcc/
aixcc/shellphish_aixcc_qualification.md   /aixcc/shellphish_aixcc_qualification/
aixcc/publications/       PDFs + BibTeX (unchanged)
shellphish.css            original stylesheet (unchanged)
*.png, *.jpg              original images (unchanged)
```

## Run it locally

### With Docker (no Ruby install needed)

```sh
docker build -t shellphish-site .
docker run --rm -p 4000:4000 -p 35729:35729 -v "$PWD:/site" shellphish-site
```

Site serves at <http://127.0.0.1:4000/>. Edits to `.md` / `.yml` / layouts hot-reload.

### With a local Ruby

Requires Ruby 3.x (macOS ships with 2.x — use `brew install ruby` or `rbenv`).

```sh
bundle install                    # first time only
bundle exec jekyll serve --livereload
```

## Publish

Push to `master`. GitHub Pages builds with the `github-pages` gem pinned in the
`Gemfile`, so the production build matches what you saw locally.

---

The previous website was done with hugo and housed internally,
the URL was: https://git.seclab.cs.ucsb.edu/shellphish/shellphish.net
(don't expect to find it there, the path is just relevant for historical purposes).
Moving the website here solves the problem of expiring certificates.
