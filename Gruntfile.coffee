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
                    'yasb-build/javascripts/xwing.js': ['coffeescripts/system/*.coffee']
                    'yasb-build/javascripts/xwingcontent.js': ['coffeescripts/content/cards-common.coffee']
                    'yasb-build/javascripts/manifest.js': ['coffeescripts/content/manifest.coffee']
                    'yasb-build/javascripts/translation-en.js': ['coffeescripts/content/cards-en.coffee']
                    'yasb-build/javascripts/xwingquickbuilds.js': ['coffeescripts/content/cards-quickbuilds.coffee']
                    'yasb-build/javascripts/xwingrules.js': ['coffeescripts/content/rules-en.coffee']
                    'yasb-build/javascripts/translations.js': ['coffeescripts/translations/*.coffee']
        sass:
            options:
                implementation: require('sass')
            compile:
                expand: true
                cwd: 'stylesheets/'
                src: ['*.sass']
                dest: 'yasb-build/stylesheets/'
                ext: '.css'
        pug:
            compile:
                expand: true
                cwd: 'jade/'
                src: ['**/*.jade']
                dest: 'yasb-build/'
                ext: '.html'
        bower:
            install:
                options:
                    targetDir: 'yasb-build/bower_components'
                    verbose: false
                    cleanTargetDir: false
                    cleanBowerDir: false
                    layout: 'byComponent'
                    copy: true
        uglify:
            compile:
                options:
                    sourceMap: true
                    sourceMapIn: 'yasb-build/javascripts/xwing.js.map'
                files:
                    'yasb-build/javascripts/xwing.min.js': 'yasb-build/javascripts/xwing.js'
                    'yasb-build/javascripts/manifest.min.js': 'yasb-build/javascripts/manifest.js'
                    'yasb-build/javascripts/xwingcontent.min.js': 'yasb-build/javascripts/xwingcontent.js'
                    'yasb-build/javascripts/translation-en.min.js': 'yasb-build/javascripts/translation-en.js'
                    'yasb-build/javascripts/xwingquickbuilds.min.js': 'yasb-build/javascripts/xwingquickbuilds.js'
                    'yasb-build/javascripts/xwingrules.min.js': 'yasb-build/javascripts/xwingrules.js'
                    'yasb-build/javascripts/translations.min.js': 'yasb-build/javascripts/translations.js'
        copy:
            main:
                expand: true
                src: [
                    'fonts/**'
                    'bootstrap/**'
                    'images/**'
                ]
                dest: 'yasb-build/'
            gh_pages:
                expand: true
                cwd: 'yasb-build'
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
