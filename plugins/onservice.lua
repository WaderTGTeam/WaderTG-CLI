do
-- Will leave the group if be added
local function run(msg, matches)
local bot_id = 126728440 
local receiver = get_receiver(msg)
    if matches[1] == 'لفت' and is_admin1(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
	   leave_channel(receiver, ok_cb, false)
    elseif msg.service and msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_admin1(msg) then
       send_large_msg(receiver, 'این گروه جزو گروه های ربات نمیباشد لطفا جهت خرید ربات به ادمین های ربات مراجعه فرمایید\nکانال ربات:@WaderTGTeam', ok_cb, false)
       chat_del_user(receiver, 'user#id'..bot_id, ok_cb, false)
	   leave_channel(receiver, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^(لفت)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end