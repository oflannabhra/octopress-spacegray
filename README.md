# Octopress Spacegray

This Octopress plugin lets you style your code blocks using any of the [base16]() palettes. It draws heavily from Brandon Mathis' [`octopress/solarized` gem](), as well as the [Spacegray]() SublimeText Plugin.

## Installation

Add this line to your application's Gemfile:

    gem 'octopress-spacegray'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install octopress-spacegray

Next add it to your gems list in Jekyll's `_config.yml`

    gems:
      - octopress-spacegray

If you're using a standard Jekyll theme add `{% css_asset_tag %}` to your site layout.

If you're using an Octopress Ink Theme, stylesheets should be automatically added when you generate your site.

## Configuration

To configure, add

```yaml
palette: <palette-name>
shade: <light/dark>
```
to your `config.yml

Currently available palettes:
* ocean
* monokai
* eighties

Shade is either `light` or `dark`
