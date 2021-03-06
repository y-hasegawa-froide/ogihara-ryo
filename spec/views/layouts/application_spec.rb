require 'rails_helper'

describe 'layouts/application.html.slim' do
  it '各種部分テンプレートがレンダリングされること' do
    view.lookup_context.prefixes = 'application'
    render
    expect(rendered).to render_template('_head')
    expect(rendered).to render_template('_header')
    expect(rendered).to render_template('_footer')
  end
end
