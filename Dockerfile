# Local Jekyll dev environment for shellphish.github.io.
# Matches the Ruby/Bundler setup GitHub Pages uses to build the site.
FROM ruby:3.3-slim

# build-essential + git are needed to compile native gem extensions
# (eventmachine, ffi, nokogiri, http_parser.rb) that github-pages pulls in.
RUN apt-get update \
 && apt-get install -y --no-install-recommends build-essential git \
 && rm -rf /var/lib/apt/lists/*

# Keep bundled gems OUTSIDE /site — at runtime we bind-mount the project onto
# /site, which would otherwise hide anything installed there at build time.
# /usr/local/bundle is the ruby image default and survives the mount.
ENV BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_JOBS=4

# Pre-seed gems into the image so `docker run` starts fast. Gemfile.lock is
# optional — copied if present so we resolve the exact pinned versions.
WORKDIR /tmp/gems
COPY Gemfile Gemfile.loc[k] ./
RUN bundle install

WORKDIR /site
EXPOSE 4000 35729

# On startup, reconcile against whatever Gemfile/.lock is currently mounted
# (no-op if the image already has the right gems), then serve with livereload.
CMD bundle install && bundle exec jekyll serve --host 0.0.0.0 --livereload --force_polling
