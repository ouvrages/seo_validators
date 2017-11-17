# SEO Validators

SEO Validators helps developers to add SEO validations to administration dashboard forms to ensure
users embrase SEO best practices.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'seo_validators'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install seo_validators

## Usage

### RedundantImageAltValidator

Ensure than administrable field for image alt attribute is correctly set with
no redundant keywords, like `image`, `picture` or `photo`.

You can set validation in similar ways than default validations from Rails.

```
  class Model < ApplicationRecord
    validates :field, redundant_image_alt: true
  end
```

```
  class Model < ApplicationRecord
    validates_redundant_image_alt_of :field
  end
```


## Locales

You can set localized error message by define `message` option when you define your validation.

```
  validates :field, redundant_image_alt: { message: "custom error message" }
```

If you don't want to customize error message, but internalization is really an issue to you, you
can define all errors messages in a locale file.

```
fr:
  validators:
    redundant_image_alt:
      message: "Le texte alternatif défini est redondant. Les lecteurs d'écran annonce déjà la balise html `img` comme une image. Vous n'avez pas besoin d'utiliser le mot `image`, `photo` ou `picture` dans la description."
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/seo_validators. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SeoValidators project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/seo_validators/blob/master/CODE_OF_CONDUCT.md).
