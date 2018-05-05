module ApplicationHelper
    def full_title(str = "")
        base_title = "NEXT x LIKELION"
        if str != ""
            base_title + " | " + str
        else
            base_title
        end
    end
end
