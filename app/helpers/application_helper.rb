module ApplicationHelper
  def radio_to_add_templates(radio_option, value, component_type, f)
    association = :article_components
    component_type_id = ComponentType.find_by_name(component_type).id
    new_object = f.object.send(association).klass.new(component_type_id: component_type_id, template: value)
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render("articles/components/" + association.to_s.singularize + "_fields", f: builder)
    end
    radio_button(component_type, radio_option, value, data: {id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_add_components(name, f, component_type, template)
    association = :article_components
    component_type_id = ComponentType.find_by_name(component_type).id
    new_object = f.object.send(association).klass.new(component_type_id: component_type_id, template: template)
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render("articles/components/" + association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_components", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_add_fields(name, f, association, template=nil)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      if template.nil? then
        if association.to_s != "component_types" and association.to_s != "fields" then
          render("articles/components/" + association.to_s.singularize +  "_fields", f: builder)
        else
          render(association.to_s.singularize +  "_fields", f: builder)
        end
      else
        render("articles/components/" + association.to_s.singularize + template.to_s + "_fields", f: builder)
      end
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def video_url(original_url)
    if original_url.include? "youtu.be" or original_url.include? "youtube" then
      link = "http://www.youtube.com/embed/" + original_url.split('/').last 
    end
  end
end
