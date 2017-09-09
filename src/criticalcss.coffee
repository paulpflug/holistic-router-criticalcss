{resolve} = require "path"
Router = require "holistic-router"
getCriticalCss = require "get-critical-css"
try
  require "coffeescript/register"

module.exports = (routerOpts) =>
  try
    routerOpts = require resolve(routerOpts)
  opts = routerOpts.criticalcss
  delete routerOpts.criticalcss
  router = new Router(routerOpts)
  routes = opts.routes or [""]
  h = opts.html = []
  for route in routes
    h.push await router.processUrl url: route
  return getCriticalCss opts

if process.argv[0] == "coffee"
  module.exports(process.argv[2])
  .then console.log
  .catch console.log
