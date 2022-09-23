#Codigo realizado por Ximena Romero Chavez 329898
#Materia: Game Platforms
#Profesor: Alberto Pacheco Gonzales 
#Fecha: 22 de Septiembre de 2022
extends Node2D

#Este es el archivo raiz en donde comienza todo, basicamente seria el mundo

#Para seguridad de las variables de referencia se asignan a una variable constante
onready var torreta = $gun
onready var torretaout = $gunout
onready var fuego = $gunout/fuego
onready var fuego2 = $gunout/fuego2
onready var misil = $misil
onready var misil2 = $misil2
onready var enemigo = $enemigo
onready var explosion = $explosion



func _ready():
	position = Vector2(400,200)

func _process(_delta):
	var band = true #Esta variable es utilizada para que se pueda disparar varias veces 
	#Al presionar el space va a disparar, al hacer esto se oculta la torreta con misiles para poner la que no los tiene y sale los fuegos
	if Input.is_action_pressed("ui_select"):
		#En estas lineas se cubre lo que se requiere para que la torreta elimine al enemigo, como son misiles localizador se va directamente con el enemigo, no importa a donde a punto
		fuego.show()
		fuego2.show()
		torretaout.show()
		misil.show()
		misil2.show()
		enemigo.hide()
		explosion.show()
		torreta.hide()
		#Esto ayuda a que dispare varias veces la torreta y que mate al enemigo, , como son misiles localizador se va directamente con el enemigo, no importa a donde a punto
		yield(get_tree().create_timer(0.09), "timeout")	
		#En estas lineas se cubre lo que se requiere para que la torreta cargue de nuevo
		fuego.hide()
		fuego2.hide()
		torretaout.hide()
		misil.hide()
		misil2.hide()
		enemigo.show()
		explosion.hide()
		torreta.show()
