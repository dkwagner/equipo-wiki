class ArticleHistoriesController < ApplicationController
  before_action :set_article_history, only: [:show, :edit, :update, :destroy]

  # GET /article_histories
  # GET /article_histories.json
  def index
    @article_histories = ArticleHistory.order("created_at DESC")
  end

  # GET /article_histories/1
  # GET /article_histories/1.json
  def show
    @article_history = ArticleHistory.find(params[:id])
  end

  # GET /article_histories/new
  def new
    @article_history = ArticleHistory.new
  end

  # GET /article_histories/1/edit
  def edit
  end

  # POST /article_histories
  # POST /article_histories.json
  def create
    @article_history = ArticleHistory.new(article_history_params)

    respond_to do |format|
      if @article_history.save
        format.html { redirect_to @article_history, notice: 'Article history was successfully created.' }
        format.json { render :show, status: :created, location: @article_history }
      else
        format.html { render :new }
        format.json { render json: @article_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_histories/1
  # PATCH/PUT /article_histories/1.json
  def update
    respond_to do |format|
      if @article_history.update(article_history_params)
        format.html { redirect_to @article_history, notice: 'Article history was successfully updated.' }
        format.json { render :show, status: :ok, location: @article_history }
      else
        format.html { render :edit }
        format.json { render json: @article_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_histories/1
  # DELETE /article_histories/1.json
  def destroy
    @article_history.destroy
    respond_to do |format|
      format.html { redirect_to article_histories_url, notice: 'Article history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_history
      @article_history = ArticleHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_history_params
      params.require(:article_history).permit(:article_id, :title, :body)
    end
end
