module UsersHelper
  def friend_button_helper(friend_id, friend_ids, user)
		if !!friend_id
			if friend_id.id == user.id
	      friend_id, friended = friend_ids.shift, true
	    else
	      friended = false
	    end
		else
			friended = false
		end
    [friend_id, friended]
  end
end