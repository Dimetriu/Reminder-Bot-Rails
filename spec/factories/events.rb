FactoryBot.define do
  factory :event do
    title { "MyString" }
    description { "MyString" }
    remind_at { "2018-11-01 16:59:38" }
    priority { 1 }
    state { 1 }
    continue_remind_in { 1 }
  end
end
