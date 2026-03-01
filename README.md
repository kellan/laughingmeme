# laughingmeme
the personal blog

## Setup

```
bundle install
ln -s ../../bin/pre-commit .git/hooks/pre-commit
```

The pre-commit hook validates YAML front matter in `_posts/*.md` files using [yq](https://github.com/mikefarah/yq).

## Development

```
bundle exec jekyll serve
```
