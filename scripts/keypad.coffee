(($) ->

) jQuery


class keypad

	_disable = false
	_cont = 0
	_disp = 0

	keypadSize =
		'width': '300'
		'height': '500'
		'display': 'block'

	color =
		'background': 'white'
		'border-bottom': 'solid #E0E0E0 3px'
		'color': '#333'

	colorOver =
		"background":'#BCE8F1'
		'border-bottom': 'solid #3A87AD 3px'
		'color': '#3A87AD'

	text = 
		'font-family': 'arial'
		'font-size': '35pt'
		'line-height': '4'
		'text-align': 'center'

	keySize =
		'margin': '1px'
		'width': '32%' 
		'height': '24%'
		'float': 'left'

	delSize =
		'margin': '1px'
		'width': '65%'
		'height': '24%'
		'float': 'left'


	constructor: (container, display) ->
		_cont = container
		_disp = display
		@create(container, display)

	###
		Methos
	###
	create: (cont, dis) ->
		$("##{cont}")
		.append ->
			("
				<div class='#{_cont}key'>1</div>
				<div class='#{_cont}key'>2</div>
				<div class='#{_cont}key'>3</div>
				<div class='#{_cont}key'>4</div>
				<div class='#{_cont}key'>5</div>
				<div class='#{_cont}key'>6</div>
				<div class='#{_cont}key'>7</div>
				<div class='#{_cont}key'>8</div>
				<div class='#{_cont}key'>9</div>
				<div class='#{_cont}key'>0</div>
				<div class='#{_cont}del'>&#8636;</div>
			")

		$ "##{_cont}"
		.css keypadSize

		$ ".#{_cont}key" 
		.click (e) -> 
			if _disable 
				return false
			$ "##{_disp}"
			.append ->
				e.currentTarget.textContent
		.css color
		.css keySize
		.css text
		.mouseover ->
			$ this
			.css colorOver				
		.mouseout ->
			$ this
			.css color

		$ ".#{_cont}del" 
		.click (e) -> 
			if _disable 
				return false
			$ "##{_disp}"
			.text ''
		.css color
		.css delSize
		.css text
		.mouseover ->
			$ this
			.css colorOver
		.mouseout ->
			$ this
			.css color

			
	changeKeyColor: (rgb) ->
		color.background = rgb
		$ ".#{_cont}key"
		.css
			"background": rgb
		$ ".#{_cont}del"
		.css
			"background": rgb

	changeKeyColorHover: (rgb) ->
		colorOver.background = rgb
		$ ".#{_cont}key"
		.mouseover ->
			$ this
			.css
				"background": rgb
		$ ".#{_cont}del"
		.mouseover ->
			$ this
			.css
				"background": rgb

	changeBorderColor: (border) ->
		color['border-bottom'] = border
		$ ".#{_cont}key"
		.css
			"border-bottom": border
		$ ".#{_cont}del"
		.css
			"border-bottom": border

	changeBorderColorHover: (border) ->
		colorOver['border-bottom'] = border
		$ ".#{_cont}key"
		.mouseover ->
			$ this
			.css
				"border-bottom": border
		$ ".#{_cont}del"
		.mouseover ->
			$ this
			.css
				"border-bottom": border