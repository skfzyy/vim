local status,toggle=pcall(require,"toggleterm")
if not status then
  return
end

toggle.setup{}
