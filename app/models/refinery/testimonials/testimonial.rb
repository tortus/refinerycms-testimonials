module Refinery
  module Testimonials
    class Testimonial < Refinery::Core::BaseModel
      self.table_name = 'refinery_testimonials'      
    
      acts_as_indexed :fields => [:title, :name, :content]

      validates :title, :presence => true, :uniqueness => true
              
    end
  end
end
