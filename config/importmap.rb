# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin "application", preload: true
# pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@rails/ujs", to: "rails-ujs.js"
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.1.1/app/assets/javascripts/rails-ujs.esm.js"
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.7.1/dist/jquery.js"
pin "jquery-ui-dist", to: "https://ga.jspm.io/npm:jquery-ui-dist@1.13.1/jquery-ui.js"
pin "@fortawesome/fontawesome-free", to: "https://ga.jspm.io/npm:@fortawesome/fontawesome-free@6.4.2/js/all.js"
pin "@rails/activestorage", to: "https://ga.jspm.io/npm:@rails/activestorage@7.1.2/app/assets/javascripts/activestorage.esm.js"
pin "orgchart", to: "https://ga.jspm.io/npm:orgchart@3.8.2/dist/js/jquery.orgchart.min.js", preload: true
pin "select2", to: "https://ga.jspm.io/npm:select2@4.0.13/dist/js/select2.js"
pin "tom-select", to: "https://ga.jspm.io/npm:tom-select@2.3.1/dist/js/tom-select.complete.js"
pin "chartkick", to: "chartkick.js"
pin "Chart.bundle", to: "Chart.bundle.js"
