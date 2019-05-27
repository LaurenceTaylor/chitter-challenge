def post_a_peep
  visit '/'
  click_button('Post')
  fill_in('text', with: 'I feel grrrrrreat')
  click_button('Peep')
end

def post_another_peep
  visit '/'
  click_button('Post')
  fill_in('text', with: 'I really do')
  click_button('Peep')
end

def sign_up_user
  visit '/'
  click_button 'Sign up'
  fill_in('email', with: 'test@test.com')
  fill_in('password', with: 'password123')
  fill_in('name', with: 'test user')
  fill_in('username', with: 'test_user1')
  click_button('Submit')
end

def sign_up_same_email
  visit '/'
  click_button 'Sign up'
  fill_in('email', with: 'test@test.com')
  fill_in('password', with: 'password123')
  fill_in('name', with: 'test user')
  fill_in('username', with: 'test_user2')
  click_button('Submit')
end

def sign_up_same_username
  visit '/'
  click_button 'Sign up'
  fill_in('email', with: 'unique@unique.com')
  fill_in('password', with: 'password123')
  fill_in('name', with: 'test user')
  fill_in('username', with: 'test_user1')
  click_button('Submit')
end