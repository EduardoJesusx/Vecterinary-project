// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.querySelectorAll('form').forEach(function (el) {
  el.dataset.turbo = false
})
