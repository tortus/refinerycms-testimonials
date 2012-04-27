class CreateTestimonialsTestimonials < ActiveRecord::Migration

  def up
    create_table :refinery_testimonials do |t|
      t.string :title
      t.string :name
      t.date :date
      t.integer :rating
      t.text :content
      t.boolean :hidden, :default => false, :null => false
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-testimonials"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/testimonials/testimonials"})
    end

    drop_table :refinery_testimonials

  end

end
