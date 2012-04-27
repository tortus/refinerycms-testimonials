class AddFriendlyId < ActiveRecord::Migration

  def self.up
    change_table :refinery_testimonials do |t|
      t.string :slug
      t.index :slug, :unique => true
    end
    ::Refinery::Testimonials::Testimonial.all.map(&:save)
  end
  
  def self.down
    change_table :refinery_testimonials do |t|
      t.remove_index :slug
      t.remove :slug
    end
  end

end
