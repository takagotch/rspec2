require 'rails_helper'

feature 'login,logout' do
  background do
    User.create!(email: 'ex@ex.com', password: '11111')
  end
  scenario 'login' do
    visit root_path
    fill_in 'Email', with: 'ex@ex.com'
    fill_in 'Password', with: '1111'
    click_on 'login'
    expect(page).to have_content 'login'
  end
end

#visit
#visit root_path
#visit new_user_path
#visit current_path
#
#click_button 'Save'
#=> <input type="submit" name="commit" value="Save">
#
#click_link 'New User'
#=> <a href='/users/new'>New User</a>
#
#click_on 'New User'
#click_on 'Save'
#=> <a href="/users/new">New User</a>
#=> <input type="submit" name="commit" value="Save">
#
#click_on 'Alice' | click_link 'Alice'
#=> <a href="/users/1">
#     <img alt="Alice" src="./profile.jpg">
#   </a>
#
#
#


