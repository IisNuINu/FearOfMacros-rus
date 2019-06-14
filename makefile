#OBJS specifies which files to compile as part of the project 
#answers.html bibliography.html   examples.html exceptions.html     summary.html \
# grammar.html           tspl_1.html
HTML =    curriculum-Z-H-27.html  curriculum-Z-H-44.html \
    curriculum-Z-H-10.html  curriculum-Z-H-28.html  curriculum-Z-H-45.html \
    curriculum-Z-H-11.html  curriculum-Z-H-29.html  curriculum-Z-H-46.html \
    curriculum-Z-H-12.html  curriculum-Z-H-2.html   curriculum-Z-H-47.html \
    curriculum-Z-H-13.html  curriculum-Z-H-30.html  curriculum-Z-H-48.html \
    curriculum-Z-H-14.html  curriculum-Z-H-31.html  curriculum-Z-H-49.html \
    curriculum-Z-H-15.html  curriculum-Z-H-32.html   \
    curriculum-Z-H-16.html  curriculum-Z-H-33.html  curriculum-Z-H-50.html \
    curriculum-Z-H-17.html  curriculum-Z-H-34.html  curriculum-Z-H-51.html \
    curriculum-Z-H-18.html  curriculum-Z-H-35.html  curriculum-Z-H-52.html \
    curriculum-Z-H-19.html  curriculum-Z-H-36.html  curriculum-Z-H-53.html \
    curriculum-Z-H-1.html   curriculum-Z-H-37.html  curriculum-Z-H-54.html \
    curriculum-Z-H-20.html  curriculum-Z-H-38.html  curriculum-Z-H-55.html \
    curriculum-Z-H-21.html  curriculum-Z-H-39.html  curriculum-Z-H-5.html \
    curriculum-Z-H-22.html     curriculum-Z-H-6.html \
    curriculum-Z-H-23.html  curriculum-Z-H-40.html  curriculum-Z-H-7.html \
    curriculum-Z-H-24.html  curriculum-Z-H-41.html  curriculum-Z-H-8.html \
    curriculum-Z-H-25.html  curriculum-Z-H-42.html  curriculum-Z-H-9.html \
    curriculum-Z-H-26.html  curriculum-Z-H-43.html

HTML = fear-of-macros.html

%.html : %.po
	po2txt -i $*.po | sed -f remove_end.sed >$*.html
#	po2txt -i $*.po -o $*.html


all : $(HTML)
	echo ALL!


