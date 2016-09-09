FactoryGirl.define do
  factory :maker, class: Make do |f|
    f.name 'bmw-maker'
    f.webmotors_id 1000
  end
end
