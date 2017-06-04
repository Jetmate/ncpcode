percentage = document.getElementById('percentage')
loading_bar = document.getElementById('loading_bar')
loading_bar_container = document.getElementById('loading_bar_container')
success = document.getElementById('success')
index = 0
length = loading_bar.innerHTML.length

window.setTimeout ->
  percentage.style.visibility = 'visible'
  loading_bar_container.style.visibility = 'visible'
  interval = window.setInterval ->
    index += 1
    percentage.innerHTML = String(Math.round(index / length * 100)) + '%'
    loading_bar.innerHTML = loading_bar.innerHTML.replace(' ', '=')
    if index == length
      window.clearInterval interval
      success.style.visibility = 'visible'
      window.setTimeout ->
        window.location.href = '/home.html'
      , 400
  , 50
, 400