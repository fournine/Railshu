 require 'rubygems'
    require 'ods'

	fl = File.new("C:\\Temp\\some_document.ods", "w")
	fl.puts
	fl.close
    ods = Ods.new("C:\\Temp\\some_document.ods")

    sheet = ods.sheets[0]
    sheet[3, :A].text #=> get A3 cell value
    sheet[4, :B].text = 'foobar'
    sheet[4, :B].text #=> foobar

    values = []
    sheet.rows.each do |row|
      row.each{|cell|
        values.push cell.text
      }
    end

    new_sheet = ods.create_sheet
    new_sheet[1, :A].annotation = 'hint'
    new_sheet[1, :A].text = 'baz'

    ods.save

