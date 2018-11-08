FactoryBot.define do
  factory :author do
    first_name { "Alan" }
    last_name { "Turing" }
    homepage { "http://wikipedia.de/Alan_Turing" }
  end

  factory :another_author, class: Author do
    first_name { "Evil" }
    last_name { "Jared" }
    homepage { "http://evil.jared" }
  end
end
