class PagesController < ApplicationController
    def aboutother
        @content = "Here is the content"
        render 'about'
    end
end
