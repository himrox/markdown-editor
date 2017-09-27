require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "GET #idnex" do
    before do
      @article = create(:article)
      get :index
    end

    it "renders the index template" do
      expect(response).to render_template :index
    end

    it "assigns @articles" do
      expect(assigns(:articles)).to eq([@article])
    end
  end

  describe "GET #show" do
    before do
      @article = create(:article)
      get :show, params: { id: @article }
    end

    it "renders the show template" do
      expect(response).to render_template :show
    end

    it "assigns @article" do
      expect(assigns(:article)).to eq(@article)
    end
  end

  describe "GET #new" do
    before do
      get :new
    end

    it "renders the new template" do
      expect(response).to render_template :new
    end

    it "assigns new @article" do
      expect(assigns(:article)).to be_a_new Article
    end
  end

  describe "POST #create" do
    it "saves new article" do
      expect {
        post :create, params: { article: attributes_for(:article) }
      }.to change(Article, :count).by(1)
    end

    it "not saves new article with invalid data" do
      expect {
        post :create, params: { article: attributes_for(:invalid_article) }
      }.not_to change(Article, :count)
    end
  end

  describe "GET #edit" do
    # TODO
  end

  describe "PATCH #update" do
    # TODO
  end

  describe "DELETE #destroy" do
    # TODO
  end
end
