class MyFormBuilder < ActionPack::Helpers::FormBuilder

  def section(title, id = "section-#{SecureRandom.uuid}")
    @template.content_tag(:label, title, {class: 'form-label', id: id}) +
      @template.content_tag(:div) do
        yield if block_given?
      end +
      @template.content_tag('hr', '', {class: 'row-divider' })
  end
end