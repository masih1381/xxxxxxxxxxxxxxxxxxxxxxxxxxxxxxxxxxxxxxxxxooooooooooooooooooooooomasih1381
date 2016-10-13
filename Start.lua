
do

function run(msg, matches)
local reply_id = msg['id']
local text = 'Dear, "..msg.from.first_name.."\nWelcome to Neo Api Bot
You Can Make safe Group With Neo Api bot\n> Your Name: "..msg.from.first_name.."
> Your Last Name: "..msg.from.last_name.."
> Your ID: "..msg.from.id.."
> Your UserName: "..msg.from.username'
if matches [1] == 'start' then
reply_msg(reply_id, text, ok_cb, false)
end
end
return {
patterns = {
'^[#!/](start)$',
},
run = run
}

end
