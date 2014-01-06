module CurrentCart
	extend ActiveSupport::Concern

	private

		def set_cart
			@cart = Cart.find(session[:cart_id])
		rescue Active Record::RecordNotFound
			@cart = Cart.create
			session[:cart_id] = @cart.cart_id
		end

	end