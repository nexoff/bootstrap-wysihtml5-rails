class Wysihtml5Input < SimpleForm::Inputs::TextInput
  def input(wrapper_options)

    merged_wysihtml5_options = BootstrapWysihtml5Rails.options.deep_merge(input_options[:wysihtml5_options] || {})
    script = template.content_tag(:script, type: 'text/javascript') do
      "$('textarea[id=#{input_class}]').wysihtml5(#{merged_wysihtml5_options.to_json});".html_safe
    end

    super + script
  end
end
