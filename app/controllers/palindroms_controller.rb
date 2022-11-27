class PalindromsController < ApplicationController

  # GET /palindroms or /palindroms.json
  def index
    @palindroms = Palindrom.order(created_at: :desc)
  end

  def new
    @palindrom = Palindrom.new
  end

  # POST /palindroms or /palindroms.json
  def create
    @palindrom = Palindrom.new(palindrom_params)

    respond_to do |format|
      if @palindrom.save
        format.turbo_stream
        format.html { redirect_to palindrom_url(@palindrom), notice: "Palindrom was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private
    def palindrom_params
      params.require(:palindrom).permit(:value)
    end
end
