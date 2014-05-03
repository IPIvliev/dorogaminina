# encoding: utf-8

class UsersController < ApplicationController
before_filter :authenticate_user!
  helper_method :sort_column, :sort_direction
  # GET /users
  # GET /users.json
  def index
    @users = User.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => 50, :page => params[:page])
    @users_xls = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xls
    end

  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

   # RestClient.post("http://sms.ru/sms/send", :api_id => "9d3359eb-9224-2384-5d06-1118975a2cd2", :to => "79051916188", :text => "Ваш ID на велопробег #{@user.id}")

    respond_to do |format|
      if @user.save

        

        format.html { redirect_to edit_user_path(@user), notice: 'Участник успешно создан!' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { redirect_to root_path,
        notice: 'Поздравляем! Вы подали заявку на регистрацию. Для подтверждения регистрации 
        необходимо внести взнос в размере 200 рублей.' }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])

        # newfree = @user.zveno.all - @user.zveno.users.count

        # @user.zveno.update_attribute(:free, newfree)

        format.html { redirect_to @user,
        notice: 'Поздравляем! Вы успешно зарегистрировались на IX Открытый велопробег Дорога Минина!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])

    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end


  private
  
  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
