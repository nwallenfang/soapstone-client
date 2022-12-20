extends Node3D


func _process(delta):
	if Input.is_action_just_pressed("place_soapstone"):
		# spawn soapstone
		# post coordinates
		# later: post message as well
		$HTTPRequest.request("http://www.mocky.io/v2/5185415ba171ea3a00704eed")


func _on_http_request_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	print(json)
