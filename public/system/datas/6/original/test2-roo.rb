require 'rubygems'
require 'roo'

   oo = Excel.new("roo_ali_test.xls") 
   oo.default_sheet = oo.sheets.first
   4.upto(oo.last_row) do |line|
   ali       = oo.cell(line,'A')
   anthony = oo.cell(line,'B')
   richard   = oo.cell(line,'C')
   paul      = oo.cell(line,'D')
   if date
      puts "#{date}\t#{comment}"
    end
  end

