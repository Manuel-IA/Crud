class CustomFormBuilder < ActionView::Helpers::FormBuilder
    def alert_error
        if self.object.errors.any?
            name_object = self.object.class.model_name.human
            name_plural_object = self.object.class.model_name.plural
            is_new = self.object.persisted? ? 'edit' : 'new'
            #Codigo tomado de internet 
            @template.content_tag :div do 
                @template.content_tag :p, I18n.t("#{name_plural_object}.#{is_new}.form.error", model: name_object)
            end 
        end 
    end 

    def field_error(field)
        if self.object.errors[field].any?
            @template.content_tag :span, self.object.errors[field].first
        end
    end
end 