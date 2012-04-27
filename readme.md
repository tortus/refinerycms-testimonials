# Testimonials extension for Refinery CMS.

Simple testimonials CMS with the following fields:

  * title:string
  * name:string
  * date:date
  * rating:integer
  * content:text
  * hidden:boolean
  * position:integer

## How to build this extension as a gem

    cd vendor/extensions/testimonials
    gem build refinerycms-testimonials.gemspec
    gem install refinerycms-testimonials.gem

    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-testimonials.gem