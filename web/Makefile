build:
	bundle exec jekyll build

publish:
	rsync --archive --verbose --compress /var/www/theatrescience.org/ pair:public_html/theatrescience.org/
	notify-send "Theatre Science is live"
