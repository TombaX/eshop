class TaxValidator < ActiveModel::EachValidator

  def validate_each(record,attribute,value)
    if [0,10,20].find {|i| i == value} == nil
      record.errors.add(attribute,"not include 0,10,20")
    end
  end

end