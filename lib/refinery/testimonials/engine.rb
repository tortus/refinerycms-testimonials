module Refinery
  module Testimonials
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Testimonials

      engine_name :refinery_testimonials

      initializer "register refinerycms_testimonials plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "testimonials"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.testimonials_admin_testimonials_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/testimonials/testimonial'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Testimonials)
      end
    end
  end
end
