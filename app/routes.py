from flask import render_template, request, abort
from app import app
from app.utilities.personajes import (
   listar_principales,listar_categorias,listar_personajes,obtener_personaje
    
)

@app.route('/')
def index():
    personajes = listar_principales()
    categorias= listar_categorias()
    return render_template('index.html', personajes=personajes, categorias=categorias, titulo="Bienvenidos" )


@app.route('/categorias')
def categoria():
    categorias = listar_categorias()
    return render_template('categorias.html',categorias = categorias , titulo="Categorias")


@app.route('/novedades')
def novedad():
   return render_template('novedades.html', titulo="Novedades")

@app.route('/creditos')
def creditos():
    return render_template('creditos.html')


@app.route('/personajes')
def personajes():
    # request.args lee y captura los valores enviados por GET en el formulario
    busqueda = request.args.get('q','').strip()
    categoria = request.args.get('categoria','').strip()
    categorias = listar_categorias()
    resultados = listar_personajes(busqueda, categoria)
    return render_template('personajes.html', personajes = resultados, categorias=categorias, busqueda = busqueda, categoria = categoria,titulo="Personajes")

@app.route('/personaje/<int:id>')
def detalle(id):
    personaje = obtener_personaje(id)
    if personaje is None:
        abort(404)

    return render_template('detalle.html', personaje=personaje, titulo=personaje.nombre)

    
