--Created by: @WaderTGTeam
--Powered by: @WaderTGTeam
--âڑ ï¸ڈCopyRight all right reservedâڑ ï¸ڈ

local function saveplug(extra, success, result)
  local msg = extra.msg
  local name = extra.name
  local receiver = get_receiver(msg)
  if success then
    local file = 'plugins/'..name..'.lua'
    print('File saving to:', result)
    os.rename(result, file)
    print('File moved to:', file)
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end
local function run(msg,matches)
    local receiver = get_receiver(msg)
    local group = msg.to.id
    if msg.reply_id then
   local name = matches[2]
      if matches[1] == "ذخیره" and matches[2] and is_sudo(msg) then
load_document(msg.reply_id, saveplug, {msg=msg,name=name})
        return 'پلاگین '..name..' ذخیره شد!'
    end
end
end
return {
  patterns = {
 "^(ذخیره) (.*)$",
  },
  run = run,
}

--Created by: @WaderTGTeam
--Powered by: @WaderTGTeam
--âڑ ï¸ڈCopyRight all right reservedâڑ ï¸ڈ
