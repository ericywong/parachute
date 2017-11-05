class AirtableController < ApplicationController
  require 'airtable'
  before_action :tables

  def index
  end

  def tables
    @client = Airtable::Client.new("keynyEzxKavIDf2kq")
    @table = @client.table("appmAoX4LncjSKIFF", "Applicant Tracking")
    @records = @table.records
  end

  def new
    @table = @client.table("appmAoX4LncjSKIFF", "Applicant Tracking")
  end

  def show
  end

  def airtable_index_url
  end
  # def test
  # end
  #
  # def do_test
  #   Name = params[:name]
  #   phone = params[:phone]
  # end

  def create
    @record = Airtable::Record.new({Name: params[:name], Description: params[:description]})
    @table.create(@record)
    render plain: "success"
  end
end
