local ServerSideDiscount, defaultDeposit, modifiedDeposit, roundedDeposit, finalDeposit

hooksecurefunc("UpdateDeposit", function()
	ServerSideDiscount = 10 -- percentage of normal rates
	defaultDeposit = CalculateAuctionDeposit(AuctionFrameAuctions.duration, AuctionsStackSizeEntry:GetNumber() * AuctionsNumStacksEntry:GetNumber())
	modifiedDeposit = defaultDeposit * (ServerSideDiscount / 100)
	if modifiedDeposit == 0 then
		finalDeposit = 0
	elseif modifiedDeposit < 1 then
		finalDeposit = 1
	else finalDeposit = math.floor(modifiedDeposit)
		MoneyFrame_Update("AuctionsDepositMoneyFrame", finalDeposit)
	end
end)