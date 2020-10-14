module WelcomeHelper
    def flash_class(key)
        case key
            when 'notice' then 'is-info'
            when 'alert' then 'is-danger'
        end
    end
end
