static:
	lessc -x web/less/style.less > web/css/style.css
	python manage.py collectstatic --noinput --ignore *.less

clean:
	rm -rf public/static*
	rm web/css/style.css

.PHONY : clean
.PHONY : static
