FactoryBot.define do
  factory :paper do
   title "COMPUTING MACHINERY AND INTELLIGENCE"
   venue "Mind 49: 433-460"
   year 1950
   author {build_list :author, 1}
  end
end