class BulmaFormBuilder < ActionView::Helpers::FormBuilder

    #Valida errores de la instancia al modelo asociado en la respectiva vista que se use:
    def form_error
        if(self.object.errors.any?)
            #Las siguientes 3 líneas son para la internalización
            model_name = self.object.class.model_name.human
            model_name_plural = self.object.class.model_name.plural
            is_new = self.object.persisted? ? 'edit' : 'new'

            @template.content_tag :div, class: 'notification is-danger' do
                @template.content_tag :p, I18n.t("#{model_name_plural}.#{is_new}.form.error", model: model_name)
            end
        end
    end

    def field_error(attribute)
        if (self.object.errors[attribute].any?)
            @template.content_tag :p, self.object.errors[attribute].first, class: 'help is-danger'
        end
    end
end