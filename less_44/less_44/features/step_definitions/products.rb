When(/^залогинен пользователь с email "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
 visit('/users/sign_in')
 within('#new_user') do
   fill_in('Email', with: email)
   fill_in('Password', with: password)
   click_button('Log in')
 end
end

When(/^он создает продукт с данными:$/) do |table|
 # table is a Cucumber::MultilineArgument::DataTable
 # table.hashes[0][:category]
 visit('/admin/products/new')
 within('#new_product') do
   select(table.hashes[0][:category], from: 'Category')
   fill_in('Title', with: table.hashes[0][:title])
   fill_in('Description', with: table.hashes[0][:description])
   fill_in('Price', with: table.hashes[0][:price])
   click_button('Create Product')
 end
end

When(/^продукт "([^"]*)" видно в списке продуктов$/) do |title|
 page.has_xpath?("//table[@id='index_table_products']//a[contains(text(), '#{title}')]")
end
