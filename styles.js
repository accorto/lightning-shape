var path = require('path');
// https://github.com/sass/node-sass
var sass = require('node-sass');

// creates errors at this time, use gulp
sass.render({
  file: 'lightningdart.scss',
  outFile: 'lightningdart.css',
  //outputStyle: 'compressed', // nested, expanded, compact, compressed
  sourceMap: true
}, function (error, result) {
  if (error) {
    console.log(error.status); // used to be "code" in v2x and below
    console.log(error.message);
    consile.log(error.file);
    console.log(error.line);
    console.log(error.column);
  }
  else {
    console.log(result.css.toString());
    // console.log('-- stats --------------------');
    // console.log(result.stats);
    console.log('-- map --------------------');
    console.log(result.map.toString());
    //console.log(JSON.stringify(result.map));
  }
});
