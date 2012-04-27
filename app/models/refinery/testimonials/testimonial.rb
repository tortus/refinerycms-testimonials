module Refinery
  module Testimonials
    class Testimonial < Refinery::Core::BaseModel
      self.table_name = 'refinery_testimonials'      
    
      acts_as_indexed :fields => [:title, :name, :content]

      validates :title, :presence => true, :uniqueness => true
      validates :rating, :numericality => {
        :only_integer => true,
        :greater_than_or_equal_to => 0,
        :less_than_or_equal_to => 5
      }

      attr_accessible :title, :name, :date, :rating, :content, :hidden, :position

    end
  end
end
