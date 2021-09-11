class WidgetsController < ApplicationController
  before_action :set_widget, only: %i[ edit update destroy ]

  # GET /widgets or /widgets.json
  def index
    @widgets = [
      OpenStruct.new(id: 1, name: "Stembolt"),
      OpenStruct.new(id: 2, name: "Flux Capacitor")
    ]
  end

  # GET /widgets/1 or /widgets/1.json
  def show
    @widget = OpenStruct.new(id: params[:id], manufacturer_id: rand(100), name: "Widget #{params[:id]}")
  end

  # GET /widgets/new
  def new
    @widget = Widget.new
  end

  # GET /widgets/1/edit
  def edit
  end

  # POST /widgets or /widgets.json
  def create
    @widget = Widget.new(widget_params)

    respond_to do |format|
      if @widget.save
        format.html { redirect_to @widget, notice: "Widget was successfully created." }
        format.json { render :show, status: :created, location: @widget }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /widgets/1 or /widgets/1.json
  def update
    respond_to do |format|
      if @widget.update(widget_params)
        format.html { redirect_to @widget, notice: "Widget was successfully updated." }
        format.json { render :ok, status: :ok, location: @widget }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /widgets/1 or /widgets/1.json
  def destroy
    @widget.destroy
    respond_to do |format|
      format.html { redirect_to widgets_url, notice: "Widget was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_widget
      @widget = Widget.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def widget_params
      params.fetch(:widget, {})
    end
end
