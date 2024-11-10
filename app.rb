# app.rb
require 'sinatra'
require 'prawn'

get '/' do
  erb :form
end

post '/generate' do
  name = params['name']
  email = params['email']
  experience = params['experience']
  education = params['education']
  skills = params['skills']

  pdf = Prawn::Document.new
  pdf.text "Currículum Vitae", size: 30, style: :bold
  pdf.move_down 20

  pdf.text "Nombre: #{name}", size: 20
  pdf.text "Email: #{email}", size: 20
  pdf.move_down 10

  pdf.text "Experiencia", size: 24, style: :bold
  pdf.text experience, size: 16
  pdf.move_down 10

  pdf.text "Educación", size: 24, style: :bold
  pdf.text education, size: 16
  pdf.move_down 10

  pdf.text "Habilidades", size: 24, style: :bold
  pdf.text skills, size: 16

  # Enviar el PDF como respuesta
  content_type 'application/pdf'
  attachment 'curriculum_vitae.pdf'
  pdf.render
end

# Esto es para imprimir el enlace en la consola
set :port, 4567
set :bind, '0.0.0.0'

puts "Servidor corriendo en http://localhost:4567"

__END__

@@form
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Generador de Currículums</title>
</head>
<body>
  <div class="container mt-5">
    <h1 class="text-center">Generador de Currículums</h1>
    <form action="/generate" method="post">
      <div class="form-group">
        <label for="name">Nombre:</label>
        <input type="text" class="form-control" name="name" required>
      </div>

      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" name="email" required>
      </div>

      <div class="form-group">
        <label for="experience">Experiencia:</label>
        <textarea class="form-control" name="experience" rows="3" required></textarea>
      </div>

      <div class="form-group">
        <label for="education">Educación:</label>
        <textarea class="form-control" name="education" rows="3" required></textarea>
      </div>

      <div class="form-group">
        <label for="skills">Habilidades:</label>
        <textarea class="form-control" name="skills" rows="3" required></textarea>
      </div>

      <button type="submit" class="btn btn-primary btn-block">Generar CV</button>
    </form>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>