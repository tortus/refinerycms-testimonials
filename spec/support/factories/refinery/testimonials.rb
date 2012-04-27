
FactoryGirl.define do
  factory :testimonial, :class => Refinery::Testimonials::Testimonial do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

