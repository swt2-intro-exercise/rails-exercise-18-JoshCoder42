FactoryBot.define do
  factory :paper do
    title {"Awesome Paper"}
    venue {"Mind 42: 442-422"}
    year {1442}
    authors {build_list :author, 1}
  end

  factory :another_paper, class: Paper do
   title "COMPUTING MACHINERY AND INTELLIGENCE"
   venue "Mind 49: 433-460"
   year 1950
   authors {[]}
  end
end