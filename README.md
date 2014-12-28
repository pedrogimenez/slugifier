# Slugifier

Heavily-based on [Keyvan Akbary's PHP slugifier](https://github.com/keyvanakbary/slugifier).

We use this at [Chicisimo](https://github.com/chicisimo).

## What's a slug?

> Some systems define a slug as the part of a URL which identifies a page using human-readable keywords.

[http://en.wikipedia.org/wiki/Semantic_URL#Slug](http://en.wikipedia.org/wiki/Semantic_URL#Slug)

## Usage

```ruby
require "slugifier"

Slugifier.slugify("Here's to the crazy ones") # => here-s-to-the-crazy-ones
```
