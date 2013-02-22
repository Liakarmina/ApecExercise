class FriendListsController < ApplicationController
  # GET /friend_lists
  # GET /friend_lists.json
  def index
    @friend_lists = FriendList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @friend_lists }
    end
  end

  # GET /friend_lists/1
  # GET /friend_lists/1.json
  def show
    @friend_list = FriendList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @friend_list }
    end
  end

  # GET /friend_lists/new
  # GET /friend_lists/new.json
  def new
    @friend_list = FriendList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @friend_list }
    end
  end

  # GET /friend_lists/1/edit
  def edit
    @friend_list = FriendList.find(params[:id])
  end

  # POST /friend_lists
  # POST /friend_lists.json
  def create
    @friend_list = FriendList.new(params[:friend_list])

    respond_to do |format|
      if @friend_list.save
        format.html { redirect_to @friend_list, notice: 'Friend list was successfully created.' }
        format.json { render json: @friend_list, status: :created, location: @friend_list }
      else
        format.html { render action: "new" }
        format.json { render json: @friend_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /friend_lists/1
  # PUT /friend_lists/1.json
  def update
    @friend_list = FriendList.find(params[:id])

    respond_to do |format|
      if @friend_list.update_attributes(params[:friend_list])
        format.html { redirect_to @friend_list, notice: 'Friend list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @friend_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friend_lists/1
  # DELETE /friend_lists/1.json
  def destroy
    @friend_list = FriendList.find(params[:id])
    @friend_list.destroy

    respond_to do |format|
      format.html { redirect_to friend_lists_url }
      format.json { head :no_content }
    end
  end
end
