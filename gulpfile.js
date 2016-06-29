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
var cleanCSS = require('gulp-clean-css');
var rename = require("gulp-rename");
var removeEmptyLines = require('gulp-remove-empty-lines');

// https://www.npmjs.com/package/gulp-scss-lint/
var scsslint = require('gulp-scss-lint');

/// Create css+map semi-minimized (no comments, empty lines, ..)
gulp.task('sass', function () {
    // https://github.com/sass/node-sass
    return gulp.src('www/scss/lightningdart.scss')
        .pipe(sourcemaps.init({identityMap: true, debug: true}))
            .pipe(sass({
                outputStyle: 'nested'}) // nested, expanded, compact, compressed
                .on('error', sass.logError))
            .pipe(stripCssComments())
            .pipe(removeEmptyLines())
            .pipe(autoprefixer())
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest('www/assets/styles'));
});

gulp.task('min', function() {
    return gulp.src(['www/assets/styles/lightningdart.css', 'www/assets/styles/charted_theme.css'])
        .pipe(cleanCSS({debug: true}, function(details) {
            console.log(details.name + ': ' + details.stats.originalSize);
            console.log(details.name + ': ' + details.stats.minifiedSize);
        }))
        .pipe(rename({ suffix: '.min' }))
        .pipe(gulp.dest('www/assets/styles'));
});

/// Check Style
gulp.task('default', function() {
    gulp.src('styles.scss')
        .pipe(scsslint());
});
