
module.exports =
  #mode:"hash"
  base:
    file: "./index"
    folder: "./dev"
  routes:
    "/": {}
    "/html": {}
  folder: "./dev/app"
  cache: false
  criticalcss:
    stylesheets: "#style"
    save: "./dev/css"
