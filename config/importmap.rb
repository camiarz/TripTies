# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "flatpickr" # @4.6.13
pin "@rails/actioncable", to: "@rails--actioncable.js" # @7.1.3
pin "hammerjs", to: "https://ga.jspm.io/npm:hammerjs@2.0.8/hammer.js"
pin "sweetalert2", to: "https://ga.jspm.io/npm:sweetalert2@11.7.2/dist/sweetalert2.all.js"
pin "process" # @2.0.1
