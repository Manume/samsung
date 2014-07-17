class Contact < ActiveRecord::Base
	validates :name,:email,:message,presence: true
	protected
    def ensure_message_has_a_value
      if message.nil?
        self.message = email unless email.blank?
      end
    end
end
