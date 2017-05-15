class InvoicesController < ApplicationController
	def index
		@invoices = Invoice.all
	end

	def show
		@invoice = Invoice.find(params[:id])
	end

	def new
	end

	def create
		@invoice = Invoice.new(invoice_params)

		@invoice.save
		redirect_to @invoice
	end

	private
		def invoice_params
			params.require(:invoice).permit(:date, :number)
		end
end
