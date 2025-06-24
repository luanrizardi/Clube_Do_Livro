class AuthorshipsController < ApplicationController
  before_action :set_authorship, only: %i[ show edit update destroy ]
  before_action :require_login
  before_action :require_admin, except: [:index, :show]
  # GET /authorships or /authorships.json
  def index
    @authorships = Authorship.all
  end

  # GET /authorships/1 or /authorships/1.json
  def show
  end

  # GET /authorships/new
  def new
    @authorship = Authorship.new
  end

  # GET /authorships/1/edit
  def edit
  end

  # POST /authorships or /authorships.json
  def create
    @authorship = Authorship.new(authorship_params)

    respond_to do |format|
      if @authorship.save
        format.html { redirect_to @authorship, notice: "Authorship was successfully created." }
        format.json { render :show, status: :created, location: @authorship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorships/1 or /authorships/1.json
  def update
    respond_to do |format|
      if @authorship.update(authorship_params)
        format.html { redirect_to @authorship, notice: "Authorship was successfully updated." }
        format.json { render :show, status: :ok, location: @authorship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorships/1 or /authorships/1.json
  def destroy
    @authorship.destroy!

    respond_to do |format|
      format.html { redirect_to authorships_path, status: :see_other, notice: "Authorship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorship
      @authorship = Authorship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorship_params
      params.require(:authorship).permit(:author_id, :book_id)
    end
end
