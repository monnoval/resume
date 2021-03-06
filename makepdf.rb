module PdfMaker
    class << self
        def registered(app)
            app.after_build do |builder|
                begin
                    require 'pdfkit'

                    kit = PDFKit.new(File.new('build/index.html'),
                                :page_size => "Letter",
                                :margin_top => 10,
                                :margin_bottom => 10,
                                :margin_left => 10,
                                :margin_right => 10,
                                # :disable_smart_shrinking => true,
                                :disable_javascript => true,
                                :print_media_type => true,
                                :dpi => 96)

                    file = kit.to_file('build/resume.pdf')

                    rescue Exception =>e
                        builder.say_status "PDF Maker",  "Error: #{e.message}", Thor::Shell::Color::RED
                        raise
                    end
                    builder.say_status "PDF Maker",  "PDF file available at build/resume.pdf"
                end


            end
            alias :included :registered
        end
    end

::Middleman::Extensions.register(:pdfmaker, PdfMaker)
