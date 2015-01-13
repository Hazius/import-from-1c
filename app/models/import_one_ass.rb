class ImportOneAss < ActiveRecord::Base

  def attach_xml!(xml, name)
    if xml && xml.present? && name && name.present?
      if name == 'import.xml'
        self.import_xml = dirty_xml
        if save
          puts "OK import_xml. Waiting offers."
        end
      elsif name == 'offers.xml'
        self.offers_xml = dirty_xml
        if save
          puts "OK offers_xml. Starting process!"
        end
      end
    end
  end

end
