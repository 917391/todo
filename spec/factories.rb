FactoryBot.define do
  factory :task do
    title { "finish this lesson" }
    done  { false }
  end
end