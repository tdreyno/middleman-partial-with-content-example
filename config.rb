helpers do
  def partial_with_content(partial_name, &block)
    concat_safe_content partial(partial_name, :locals => {
      :contents => capture_html(&block)
    })
  end
end