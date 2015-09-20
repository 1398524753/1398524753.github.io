# 防止webapp内部链接跳转
webapp_a = document.getElementsByTagName('a')
webapp_i = 0
while webapp_i < webapp_a.length

  webapp_a[webapp_i].onclick = ->
    window.location = @getAttribute('href')
    false

  webapp_i++

# －－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－

# lazyload加载
$(".lazy").lazyload()

# －－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－

# 判断是否是微信
isWeiXin = ->
  ua = window.navigator.userAgent.toLowerCase()
  if String(ua.match(/MicroMessenger/i)) == "micromessenger"
    true
  else
    false


# 详情页面scroll
$(document).ready ->
  $(document).scroll ->
    windowST = 0
    if Boolean(document.body.scrollTop) is true
      # console.log "谷歌"
      windowST = document.body.scrollTop
    else if Boolean(document.documentElement.scrollTop) is true
      # console.log "火狐"
      windowST = document.documentElement.scrollTop
    if windowST > 680
      $(".order-top").css
        "display": "block"
    else if windowST < 680
      $(".order-top").css
        "display": "none"
# 预约按钮
$(".pro-order-js").on
  "click touchstart": ->
    $(".dialog").removeClass("dialog--close")
    $(".dialog").addClass("dialog--open")
    $(document.body).css
      "overflow": "hidden"
$(".data-dialog-close").on
  "click touchstart": ->
    $(".dialog").removeClass("dialog--open")
    $(".dialog").addClass("dialog--close")
    $(document.body).css
      "overflow": "auto"











