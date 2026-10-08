#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

if [[ -d /opt/homebrew/opt/ruby@3.3/bin ]]; then
  export PATH="/opt/homebrew/opt/ruby@3.3/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"
fi

bundle exec jekyll serve --host 127.0.0.1 --livereload "$@"
