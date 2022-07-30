require 'rails_helper'

RSpec.describe 'Test index action', type: :request do
  before(:example) do
    @user = User.create!(name: 'Cathy', email: 'cathy@gmail.com', password: 'mightyGod',
                         password_confirmation: 'mightyGod')
    @user.save
    get user_recipes_path(@user)
  end
  it 'is a success' do
    expect(response).to have_http_status(:ok)
  end
  it "renders 'index' template" do
    expect(response).to render_template('index')
  end
end

RSpec.describe 'Test show action', type: :request do
  before(:example) do
    @user = User.create!(name: 'Cathy', email: 'cathy@gmail.com', password: 'mightyGod',
                         password_confirmation: 'mightyGod')
    @user.save
    @recipe = @user.recipe.create!(name: 'Banana cake', description: 'Slice the bananas', preparation_time: 1,
                                   cooking_time: 1)
    @recipe.save
    get user_recipe_path(@user, @recipe)
  end
  it 'is a success' do
    expect(response).to have_http_status(:ok)
  end
  it "renders 'show' template" do
    expect(response).to render_template('show')
  end
end
