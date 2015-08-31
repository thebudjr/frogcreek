class TransactionsController < ApplicationController
	def create
		picture = Picture.find_by!(slug: params[:slug])
		token = params[:stripeToken]

		begin
			charge = Stripe::Charge.create(
				amount: picture.price,
				currency: "usd",
				card: token,
				description: current_user.email)
			@sale = picture.sales.create!(
				buyer_email: current_user.email)
			redirect_to pickup_url(guid: @sale.guid)
		rescue Stripe::CardError => e
			@error = e
			redirect_to picture_path(picture), notice: @error
		end
	end

	def pickup
		@sale = Sale.find_by!(guid: params[:guid])
		@picture = @sale.picture
	end
end