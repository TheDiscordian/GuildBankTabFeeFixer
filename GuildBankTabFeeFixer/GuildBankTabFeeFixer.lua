hooksecurefunc("MoneyFrame_Update", function(frame, cost, x)
	if x then return end
	if frame == "GuildBankFrameTabCostMoneyFrame" then
		cost = cost/4; --Change this line to change the fee. This is 1/4 of the fee for all tabs.
		if( GetMoney() >= cost or (GetMoney() + GetGuildBankMoney()) >= cost ) then
			SetMoneyFrameColor("GuildBankFrameTabCostMoneyFrame", "white");
			GuildBankFramePurchaseButton:Enable();
		else
			SetMoneyFrameColor("GuildBankFrameTabCostMoneyFrame", "red");
			GuildBankFramePurchaseButton:Disable();
		end
		MoneyFrame_Update(frame, cost, true);
	end
end)