class Admin::BlogCategoriesController < Admin::SessionController
  before_action :set_blog_category, only: %i(show edit update destroy)
  before_action :signin_required

  def index
  end

  def show
  end

  def new
    @blog_category = BlogCategory.new
  end

  def create
    @blog_category = BlogCategory.new(blog_category_params)
    if @blog_category.save
      redirect_to admin_blog_category_path(@blog_category)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @blog_category.update(blog_category_params)
      redirect_to admin_blog_category_path(@blog_category)
    else
      render :edit
    end
  end

  def destroy
    @blog_category.destroy
    redirect_to admin_blog_categories_path
  end

  private

  def set_blog_category
    @blog_category = BlogCategory.find(params[:id])
  end

  def blog_category_params
    params.require(:blog_category).permit(
      :sort_order,
      :permalink,
      :name,
      :parent_id
    )
  end
end
