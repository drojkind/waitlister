# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sm, :class => 'Sms' do
    content_received "MyString"
    incoming_number "MyString"
  end
end
