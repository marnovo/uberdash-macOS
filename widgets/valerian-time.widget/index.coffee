###
Valerian Time
Author: Armin Rosu (hello@armin.ro), Alan Crissey (alancrissey@gmail.com)

A clock widget based on Alan Crissery's codepen (http://codepen.io/TheRealAlan/), comissioned by Valéria Boikova (http://www.valeriaboikova.com/)
###

command: ""

refreshFrequency: 1000

render: (output) -> """
    <svg class="clock" viewBox="0 0 100 100">
		<circle class="clock-face" cx="50" cy="50" r="45"></circle>
		<g class="clock-hands">
			<line class="clock-hand" id="hour" x1="50" x2="50" y1="50" y2="30" style="transform: rotate(325.5deg);"></line>
			<line class="clock-hand" id="min" x1="50" x2="50" y1="50" y2="20" style="transform: rotate(306deg);"></line>
			<line class="clock-hand" id="sec" x1="50" x2="50" y1="50" y2="10" style="transform: rotate(12deg);"></line>
		</g>
	</svg>
"""

style: """
	// right: (40+30)px
	// top: (40+30)px
	left: 550px
	bottom: 50px


	.clock
		width: 70px
		height: 70px
		margin: auto
		display: block
		position: relative

	.clock-face
		// fill: #000
		fill: #1e1e1e

	.clock-hand
		stroke-width: 4px
		transform-origin: 100% 100%
		transition: all 100ms cubic-bezier(0.680, -0.550, 0.265, 1.550)

	#hour
		//stroke: #1de6e4
		stroke: #00edec

	#min
		// stroke: #f99e44
		stroke: #ef173a

	#sec
		stroke-width: 2px
		// stroke: #ff0000
		stroke: #fff
"""

update: (output, domEl) ->
	r = ( el, deg ) ->
		$(domEl).find("##{el}", domEl).css(
			"transform",
			"rotate( #{deg}deg )"
		)

	d = new Date()

	# Get Seconds
	r('sec', 6 * d.getSeconds())

	# Get Minutes
	r('min', 6 * d.getMinutes())

	# Get Hours
	r('hour',30 * (d.getHours() % 12) + d.getMinutes() / 2)
