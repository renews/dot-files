-- import github-copilot plugin safely
local status, copilot = pcall(require, "github-copilot.configs")
if not status then
	return
end

copilot.setup()
