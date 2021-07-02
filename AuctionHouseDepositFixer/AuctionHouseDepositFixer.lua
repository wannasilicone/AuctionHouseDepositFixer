hooksecurefunc("UpdateDeposit", function()
	local ChromieCraftDiscount = 1 -- percentage of normal rates
	local defaultDeposit = CalculateAuctionDeposit(AuctionFrameAuctions.duration, AuctionsStackSizeEntry:GetNumber() * AuctionsNumStacksEntry:GetNumber());
	local modifiedDeposit = defaultDeposit * (ChromieCraftDiscount / 100);
	local roundedDeposit = math.floor(modifiedDeposit);
	local finalDeposit = roundedDeposit == 0 and 1 or roundedDeposit;
	MoneyFrame_Update("AuctionsDepositMoneyFrame", finalDeposit);
end);