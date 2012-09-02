
  
class ConcessionsController < ApplicationController
  # GET /concessions
  # GET /concessions.json
  def index
    @concessions = Concession.all
    @data = []
    count = 0
    td_class = ['choiceA','choiceB','choiceC','choiceD','choiceE','choiceF on']
    @concessions.each do |concession|
      @record     = {
                      'td_class'=>td_class[count],
                      'concession_id'=>concession.concession_id,
                      'name'=>concession.name,
                      'quantity_planned'=>concession.quantity_planned,
                      'quantity_procured'=>concession.quantity_procured,
                      'weight_loss'=>concession.weight_loss,
                      'input_delivered'=>concession.input_delivered,
                      'input_recovered'=>concession.input_recovered,
                      'input_non_recovery'=>concession.input_non_recovery,
                      'jute_bags_given'=>concession.jute_bags_given,
                      'bags_received'=>concession.bags_received,
                      'bags_received_empty'=>concession.bags_received_empty,
                      'transport_expense'=>concession.transport_expense,
                      'cash_balance'=>concession.cash_balance}
     @data[count]=@record
     count = count + 1
    end
    @record     = {   
                      'td_class'=>td_class[count],
                      'name'=>"Total",
                      'quantity_planned'=>Concession.sum("quantity_planned"),
                      'quantity_procured'=>Concession.sum("quantity_procured"),
                      'weight_loss'=>Concession.sum("weight_loss"),
                      'input_delivered'=>Concession.sum("input_delivered"),
                      'input_recovered'=>Concession.sum("input_recovered"),
                      'input_non_recovery'=>Concession.sum("input_non_recovery"),
                      'jute_bags_given'=>Concession.sum("jute_bags_given"),
                      'bags_received'=>Concession.sum("bags_received"),
                      'bags_received_empty'=>Concession.sum("bags_received_empty"),
                      'transport_expense'=>Concession.sum("transport_expense"),
                      'cash_balance'=>Concession.sum("cash_balance")}
     @data[count]=@record
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @concessions }
    end
  end

  # GET /concessions/1
  # GET /concessions/1.json
  def show
    @concession = Concession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @concession }
    end
  end

  # GET /concessions/new
  # GET /concessions/new.json
  def new
    @concession = Concession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @concession }
    end
  end

  # GET /concessions/1/edit
  def edit
    @concession = Concession.find(params[:id])
  end

  # POST /concessions
  # POST /concessions.json
  def create
    @concession = Concession.new(params[:concession])

    respond_to do |format|
      if @concession.save
        format.html { redirect_to @concession, notice: 'Concession was successfully created.' }
        format.json { render json: @concession, status: :created, location: @concession }
      else
        format.html { render action: "new" }
        format.json { render json: @concession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /concessions/1
  # PUT /concessions/1.json
  def update
    @concession = Concession.find(params[:id])

    respond_to do |format|
      if @concession.update_attributes(params[:concession])
        format.html { redirect_to @concession, notice: 'Concession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @concession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concessions/1
  # DELETE /concessions/1.json
  def destroy
    @concession = Concession.find(params[:id])
    @concession.destroy

    respond_to do |format|
      format.html { redirect_to concessions_url }
      format.json { head :no_content }
    end
  end
end
