# Testimonials extension for Refinery CMS.

Simple testimonials CMS with the following fields:

  * title:string
  * name:string
  * date:date
  * rating:integer
  * content:text
  * hidden:boolean
  * position:integer

## Installation:

```ruby
# Add to Gemfile:
gem 'refinerycms-testimonials', :git => 'https://github.com/tortustechnologies/refinerycms-testimonials.git'
```

## Customization

You will probably want to customize the templates to work with your site. They are:

  * refinery/testimonials/testimonials/index.html.erb
  * refinery/testimonials/testimonials/show.html.erb
  * refinery/testimonials/testimonials/_testimonial.html.erb
