class Chat < ActiveRecord::Base
  


  Pusher.app_id ='37864'
  Pusher.key ='e299e24202f901e7f8b8'
  Pusher.secret ='35a058bac34cbfdc3198'

  after_create :send_to_pusher
  def send_to_pusher
    logger.info "Hi?"
    Pusher['APEC'].trigger("chat:create", self.to_json)
  end

end
