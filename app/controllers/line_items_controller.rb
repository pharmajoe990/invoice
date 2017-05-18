class LineItemsController < ApplicationController
  def create
    @invoice = Invoice.find(params[:invoice_id])
    @line_item = @invoice.lineItems.create(line_item_params)
    redirect_to invoice_path(@invoice)
  end

  private

   def line_item_params
    params.require(:line_item).permit(:description, :amount, :unitCost, :includesTax)
   end
end
