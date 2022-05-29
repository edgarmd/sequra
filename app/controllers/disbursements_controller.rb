class DisbursementsController < ApplicationController
  def index
    merchant = Merchant.find(disbursement_params[:merchant_id])

    if merchant
      render json: { merch: merchant.disbursements.where(created_at: week_range), date: week_range, ss: merchant }
    else
      render json: { merch: Disbursement.where(created_at: week_range), date: week_range, ss: merchant }
    end
  end

  private

  def week_range
    date = disbursement_params[:date] || Date.today.to_s

    week_init = Date.parse(date).beginning_of_week
    week_end = Date.parse(date).end_of_week

    (Date.parse(date).beginning_of_week..Date.parse(date).end_of_week)
  end

  def disbursement_params
    params.permit(:merchant_id, :date)
  end
end
