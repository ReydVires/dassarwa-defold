M = {}

function M.input_control(self, action_id, action)
	if action_id == hash("right") then
		if self.volume_master < 1 then
			self.volume_master = self.volume_master + 0.05
			if self.volume_master > 1 then
				self.volume_master = 1
			end
			sound.set_group_gain("master", self.volume_master)
		end
	elseif action_id == hash("left") then
		if self.volume_master >= 0.1 then
			self.volume_master = self.volume_master - 0.05
			if self.volume_master < 0.1 then
				self.volume_master = 0
			end
			sound.set_group_gain("master", self.volume_master)
		end
	end
	if action_id == hash("right") or action_id == hash("left") then
		print("Volume: ",self.volume_master)
	end
end

return M