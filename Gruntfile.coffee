module.exports = (grunt) ->
    grunt.initConfig
        coffee:
            compile:
                options:
                    bare: true
                    join: true
                    runtime: 'window'
                    sourceMap: true
                files:
                    'public/yasb/javascripts/xwing.js': ['coffeescripts/system/*.coffee']
                    'public/yasb/javascripts/xwingcontent.js': ['coffeescripts/content/cards-common.coffee']
                    'public/yasb/javascripts/manifest.js': ['coffeescripts/content/manifest.coffee']
                    'public/yasb/javascripts/translation-en.js': ['coffeescripts/content/cards-en.coffee']
                    'public/yasb/javascripts/xwingquickbuilds.js': ['coffeescripts/content/cards-quickbuilds.coffee']
                    'public/yasb/javascripts/xwingrules.js': ['coffeescripts/content/rules-en.coffee']
                    'public/yasb/javascripts/translations.js': ['coffeescripts/translations/*.coffee']
        sass:
            options:
                implementation: require('sass')
            compile:
                expand: true
                cwd: 'stylesheets/'
                src: ['*.sass']
                dest: 'public/yasb/stylesheets/'
                ext: '.css'
        pug:
            compile:
                expand: true
                cwd: 'jade/'
                src: ['**/*.jade']
                dest: 'public/yasb/'
                ext: '.html'
        bower:
            install:
                options:
                    targetDir: 'public/yasb/bower_components'
                    verbose: false
                    cleanTargetDir: false
                    cleanBowerDir: false
                    layout: 'byComponent'
                    copy: true
        uglify:
            compile:
                options:
                    sourceMap: true
                    sourceMapIn: 'public/yasb/javascripts/xwing.js.map'
                files:
                    'public/yasb/javascripts/xwing.min.js': 'public/yasb/javascripts/xwing.js'
                    'public/yasb/javascripts/manifest.min.js': 'public/yasb/javascripts/manifest.js'
                    'public/yasb/javascripts/xwingcontent.min.js': 'public/yasb/javascripts/xwingcontent.js'
                    'public/yasb/javascripts/translation-en.min.js': 'public/yasb/javascripts/translation-en.js'
                    'public/yasb/javascripts/xwingquickbuilds.min.js': 'public/yasb/javascripts/xwingquickbuilds.js'
                    'public/yasb/javascripts/xwingrules.min.js': 'public/yasb/javascripts/xwingrules.js'
                    'public/yasb/javascripts/translations.min.js': 'public/yasb/javascripts/translations.js'
        copy:
            main:
                expand: true
                src: [
                    'fonts/**'
                    'bootstrap/**'
                    'images/**'
                ]
                dest: 'public/yasb/'
            gh_pages:
                expand: true
                cwd: 'public/yasb'
                src: '**'
                dest: '../xwing_page'

    grunt.loadNpmTasks 'grunt-bower-task'
    grunt.loadNpmTasks 'grunt-contrib-copy'
    grunt.loadNpmTasks 'grunt-contrib-pug'
    grunt.loadNpmTasks 'grunt-sass'
    grunt.loadNpmTasks 'grunt-contrib-uglify'
    grunt.loadNpmTasks 'grunt-contrib-coffee'

    grunt.registerTask 'default', [
        'bower'
        'coffee'
        'sass'
        'pug'
        'uglify'
        'copy:main'
    ]

    grunt.registerTask 'gh_pages', [
        'copy:gh_pages'
    ]
