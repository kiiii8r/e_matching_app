FactoryBot.define do
  factory :user do
    nickname { Faker::Name.last_name }
    first_name { Gimei.last.kanji }
    last_name { Gimei.first.kanji }
    first_name_kana { Gimei.last.katakana }
    last_name_kana { Gimei.first.katakana }
    email { Faker::Internet.free_email }
    password { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    age  { Faker::Number.within(range: 1..100) }
    gender { 'man' }
    birth_day { Faker::Date.birthday }
  end
end