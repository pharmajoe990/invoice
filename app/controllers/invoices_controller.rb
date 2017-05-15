class InvoicesController < ApplicationController
	def index
		@invoices = Invoice.all
	end

	def show
		@invoice = Invoice.find(params[:id])
	end

	def new
	end

	def edit
		@invoice = Invoice.find(params[:id])
	end

	def create
		@invoice = Invoice.new(invoice_params)

		@invoice.save
		redirect_to @invoice
	end

	def update
	  @invoice = Invoice.find(params[:id])
	 
	  if @invoice.update(invoice_params)
	    redirect_to @invoice
	  else
	    render 'edit'
	  end
	end

	private
		def invoice_params
			params.require(:invoice).permit(:date, :number)
		end
end
