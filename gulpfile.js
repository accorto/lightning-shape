'use strict';

var gulp = require('gulp');
// https://www.npmjs.com/package/gulp-sass/
var sass = require('gulp-sass');
// https://www.npmjs.com/package/gulp-sourcemaps
var sourcemaps = require('gulp-sourcemaps');
// https://www.npmjs.com/package/gulp-autoprefixer/
var autoprefixer = require('gulp-autoprefixer');
// https://www.npmjs.com/package/gulp-strip-css-comments/
var stripCssComments = require('gulp-strip-css-comments');
var removeEmptyLines = require('gulp-remove-empty-lines');
// https://www.npmjs.com/package/gulp-replace
var replace = require('gulp-replace');

// https://www.npmjs.com/package/gulp-scss-lint/
var scsslint = require('gulp-scss-lint');

/// Create css+map semi-minimized (no comments, empty lines, ..)
gulp.task('sass', function () {
    // https://github.com/sass/node-sass
    return gulp.src('www/scss/lightningdart.scss')
        .pipe(sourcemaps.init())
        .pipe(sass({sourcemap: true,
            outputStyle: 'nested'}) // nested, expanded, compact, compressed
            .on('error', sass.logError))
        .pipe(stripCssComments())
        .pipe(removeEmptyLines())
        .pipe(autoprefixer())
        //.pipe(replace('/assets/fonts/', '../fonts/'))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest('www/assets/styles'));
});

/// Check Style
gulp.task('default', function() {
    gulp.src('styles.scss')
        .pipe(scsslint());
});
