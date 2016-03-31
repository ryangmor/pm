if not database.blacklist then
	database.blacklist = {}
end

local triggers = {
	'^/a[@'..bot.username..']*',
	'^/u[@'..bot.username..']*',
}

local action = function(msg)
	if database.blacklist[msg.from.id_str] then
		return -- End if the sender is blacklisted.
	end
    if msg.chat.type ~= 'private' then
        return nil
    end
    if string.match(msg.text, '^/a') then
        local receiver = config.admin
        local input = msg.text:input()
	if database.blacklist[msg.from.id_str] then
		return -- End if the sender is blacklisted.
	end

        if not input then
            sendMessage(msg.from.id, 'Nil Value')
            return nil
        end
        local last_name = ''
        --if msg.from.last_name then
            --last_name = '\n*Last*: '..msg.from.last_name
        --end
        --local text = '*First*: '..msg.from.first_name..last_name..'\n*Username*: @'..msg.from.username..' ('..msg.from.id..')\n\n'..input
	    --sendMessage(receiver, text, true, false, true)
	    local target = msg.message_id
				local feed = msg.text:sub(4, 14)
		local text = ''..feed..''
	if database.blacklist[msg.from.id_str] then
		return -- End if the sender is blacklisted.
	end

			    forwardMessage (receiver, msg.from.id, target)
	if database.blacklist[msg.from.id_str] then
		return -- End if the sender is blacklisted.
	end

	    sendMessage(msg.from.id, '*pm sent*\n*CactusTeam Pm Sender For Reported Guys\n*Your Pm??\n\n'..input, true, false, true) -- You Can ReplaceArman Bot Service Msg
	end
	
	if string.match(msg.text, '^/u') then
	    if msg.from.id ~= config.admin then
	        return nil
	    end
	    if not msg.reply_to_message then
            sendReply(msg, 'Reply to  Feedback!', false)
			return nil
		end
			local blacklist = load_data('blacklist.json')
		local input = msg.text:input()
		if not input then
	if database.blacklist[msg.from.id_str] then
		return -- End if the sender is blacklisted.
	end


            sendMessage(msg.from.id, 'Type /u <Pm>"')
            return nil
        end
		msg = msg.reply_to_message
		local name = msg.forward_from.first_name
		local receiver = msg.forward_from.id
		local feed = msg.text:sub(4, 14)
		local text = ''..input
	if database.blacklist[msg.from.id_str] then
		return -- End if the sender is blacklisted.
	end


		sendMessage(receiver, text, true, false, true)
	if database.blacklist[msg.from.id_str] then
		return -- End if the sender is blacklisted.
	end

		sendMessage(config.admin, ' _SuccessFully Sent_:\n\n'..input, true, false, true)
	end
end

return {
	action = action,
	triggers = triggers
}
