path = require("path")
Koa = require("koa")
module.exports = (server, reload) =>
  Router = require("holistic-router")
  router = new Router require("./router")
  koa = new Koa()
  koa.use(require("koa-static")(path.resolve("./dev/css")))
  koa.use(router.middleware("koa"))
  server.on "request", koa.callback()
  server.listen(8080)
  return =>
    router.close()
