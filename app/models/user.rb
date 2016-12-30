class User < ActiveRecord::Base

    ROLES = [
        ['admin','Admin'],
        ['reviewer','Reviewer'],
        ['user','User']
    ]

    def complete!
        self.completed = true
        save
    end

    mount_uploader :avatar, AvatarUploader

end

