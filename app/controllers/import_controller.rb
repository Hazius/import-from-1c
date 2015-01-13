class ImportController < ApplicationController
  def one_c
    text = case params[:mode]
      when 'checkauth'
        'success'
      when 'init'
        "no\n5242880"
      when 'file'
        if ['import.xml', 'offers.xml'].include? params[:filename]
          xml = request.body.read
          import = ImportOneAss.first_or_create
          import.attach_xml!(doc.to_xml, params[:filename])
        end
        'success'
    render text: text
  end
end