# This is the MotherWidget™. It sets up flex positioning and a few general styling rules.
# Code originally created by Jonathan MacQueen (https://github.com/jmacqueen)
# Haphazardly adjusted and mangled by Pe8er (https://github.com/Pe8er)
# https://scotch.io/tutorials/a-visual-guide-to-css3-flexbox-properties was very helpful to understand this beast.

widgetEnable    : true
flexDirection   : 'row'        # default: 'row'
justifyContent  : 'center' # default: 'flex'-start'
alignContent    : 'center'    # default: 'stretch'
flexWrap        : 'wrap'       # default: 'nowrap'
alignItems      : 'center'    # default: 'stretch'. 'flex-start' for left, 'flex-end' for right.
refreshFrequency: false

render: (output) ->

  if @widgetEnable is false
    $(domEl).find('.widget').remove()

  """
  <style>
    #__uebersicht {
      display: flex;
      align-items: #{@alignItems};
      align-content: #{@alignContent};
      flex-direction: #{@flexDirection};
      flex-wrap: #{@flexWrap};
      justify-content: #{@justifyContent};
      color: #fff;
      // font-family: Futura, system, -apple-system;
      font-family: system, -apple-system;
      left: 40px;
      bottom: 40px;
    }
    #__uebersicht>div {
      width: auto;
    }
    .widget {
      position: absolute;
      // background-color: rgba(0,0,0,.2);
      // -webkit-backdrop-filter: blur(30px) brightness(80%) contrast(100%) saturate(140%);
      // margin-top: 1px;
    }

    #__uebersicht {
     // -webkit-backdrop-filter: blur(30px) brightness(80%) contrast(100%) saturate(140%);
    }
  </style>
  """

style: """
  margin-top 0
"""

# update: (output, domEl) ->
#   $(domEl).parent('div').css('position', 'absolute')
