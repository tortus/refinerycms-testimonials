module Refinery
  module Testimonials
    class Testimonial < Refinery::Core::BaseModel
      extend FriendlyId
      self.table_name = 'refinery_testimonials'      
    
      friendly_id :title, :use => [:slugged]
      acts_as_indexed :fields => [:title, :name, :content]

      validates :title, :presence => true, :uniqueness => true
      validates :rating, :numericality => {
        :only_integer => true,
        :greater_than_or_equal_to => 0,
        :less_than_or_equal_to => 5
      }

      attr_accessible :title, :name, :date, :rating, :content, :hidden, :position

      scope :active,      lambda { where(:hidden => false) }
      scope :by_position, lambda { order("position ASC") }
      scope :by_date,     lambda { order("date DESC, created_at DESC, updated_at DESC") }

      after_create :move_to_top
      def move_to_top
        self.class.transaction do
          self.position = 1
          self.class.where("id != ? and position >= ?", self.id, self.position).
            update_all("position = position + 1")
          self.save!
        end
      end
      
      def anchor
        friendly_id
      end

    end
  end
end
