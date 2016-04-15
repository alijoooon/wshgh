do
function run(msg, matches)
local reply_id = msg['id']

local info = '#Name : '..msg.from.first_name..'\n\n'
..'♦ایدی تو کسکش : '..msg.from.id..'\n'
..'♦یوز تو کسکش : @'..msg.from.username..'\n\n'
..'♦ایدی این گروه کسکش : '..msg.to.id..'\n'
..'♦اسم کیری این گروه : '..msg.to.title

reply_msg(reply_id, info, ok_cb, false)
end

return {
patterns = {
"^[!/#]info"
},
run = run
}

end
