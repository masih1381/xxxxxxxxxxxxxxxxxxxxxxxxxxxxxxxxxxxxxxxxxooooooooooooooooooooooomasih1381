function run(msg, matches)
if matches[1] == 'sticker' then
  local muteteam = matches[2]
  local url = "http://api.avirateam.ir/imagemaker/index.php?text="..muteteam
 local ext = ".webp"
  local cb_extra = {file_path=file}
  local receiver = get_receiver(msg)
  local file = download_to_file(url, ".webp")
  send_document(receiver, file, rmtmp_cb, cb_extra)
end
   end
return {
  patterns = {
   "[!#/](sticker) (.*)",
  },
  run = run
}