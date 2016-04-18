Given(/^I am a guest users$/) do
end

Given(/^there is a public achievement$/) do
  @achievement = FactoryGirl.create(:public_achievement, title: 'I did it')
end

When(/^I go to the achievement's page$/) do
visit(achievement_path(@achievement.id))
end

Then(/^I must see achievement's content$/) do
  expect(page). to have_content('I did it')
end
