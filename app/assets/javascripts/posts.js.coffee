# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	# to set summernote object
	# You should change '#post_content' to your textarea input id
	summer_note = $('#post_desc')

# to call summernote editor
	summer_note.summernote
# to set options
		height:400

# to set code for summernote
		summer_note.code summer_note.val()

# to get code for summernote
		summer_note.closest('form').submit ->
			# alert $('#post_content').code()[0]
			summer_note.val summer_note.code()[0]
			true