# holistic-router-criticalcss

extracting inline critical css from html.
Uses chrome headless, blends seamlessly with holistic-router

### Install

```sh
npm install --save holistic-router-criticalcss
```

### Usage

Have your holistic-router config:
```js
// holistic-router.config.js
module.exports = {
  ...
  routes: {
    "/": {
      ...
    }
    ...
  },
  ...
  criticalcss: {
    stylesheets: "#style", // selector, which inline stylesheets to replace
    save: "./build", // where to save critical and uncritical css
    path: "" // relative path where your build folder is served
    // for mor options see get-critical-css package
  }
}
```
Call the critical css cli:
```sh
get-critical-css holistic-router.config.js
```


## License
Copyright (c) 2017 Paul Pflugradt
Licensed under the MIT license.
