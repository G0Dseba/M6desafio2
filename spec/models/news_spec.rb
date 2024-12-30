require 'rails_helper'

RSpec.describe News, type: :model do
  it "is valid with valid attributes" do
    user = User.create(email: "test@example.com", password: "password")
    news = News.new(title: "Título de Prueba", content: "Contenido de Prueba", user: user)
    expect(news).to be_valid
  end

  it "is not valid without a title" do
    user = User.create(email: "test@example.com", password: "password")
    news = News.new(content: "Contenido de Prueba", user: user)
    expect(news).to_not be_valid
  end

  it "is not valid without content" do
    user = User.create(email: "test@example.com", password: "password")
    news = News.new(title: "Título de Prueba", user: user)
    expect(news).to_not be_valid
  end

  it "is not valid without a user" do
    news = News.new(title: "Título de Prueba", content: "Contenido de Prueba")
    expect(news).to_not be_valid
  end
end
