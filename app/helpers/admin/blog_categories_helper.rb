module Admin::BlogCategoriesHelper
  def render_blog_categories_hierarchy(parent_blog_categories)
    return nil unless parent_blog_categories.count > 0
    content_tag :ul do
      parent_blog_categories.map do |blog_category|
        render_blog_categories_children(blog_category)
      end.join.html_safe
    end.html_safe
  end

  def link_to_parent_blog_category(blog_category)
    if blog_category.parent.present?
      link_to blog_category.parent.name, admin_blog_category_path(blog_category.parent)
    else
      t('text_none_parent')
    end
  end

  private

  def render_blog_categories_children(blog_category)
    content_tag(:li, link_to(blog_category.name, admin_blog_category_path(blog_category)))
      .concat(render_blog_categories_hierarchy(BlogCategory.where(parent: blog_category)))
  end
end
