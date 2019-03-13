# WickedPdf.config = {
#   :exe_path => Rails.root.join('bin', 'wkhtmltopdf-i386').to_s
# }

path = `which wkhtmltopdf`.gsub(/\n/, "")

WickedPdf.config = { exe_path: path }
