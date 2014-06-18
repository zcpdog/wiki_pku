module WikiPku
  module UserHelper
    def user_avatar(user,size=:thumb,options={})
      if user.picture.present?
        image_tag user.picture.image.url(size), options
      else
        image_tag "wiki_pku/user.jpg", options
      end
    end
  end
end
