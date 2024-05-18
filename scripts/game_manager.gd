extends Node

var score = 0
@onready var score_label = $ScoreLabel
@onready var canvas_label_score = %CanvasLabel_Score

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins!"
	canvas_label_score.text = str(score) + " coins"
