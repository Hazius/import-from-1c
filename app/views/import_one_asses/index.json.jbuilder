json.array!(@import_one_asses) do |import_one_ass|
  json.extract! import_one_ass, :id, :import_xml, :offers_xml
  json.url import_one_ass_url(import_one_ass, format: :json)
end
