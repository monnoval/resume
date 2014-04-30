# Mon's Resume

I love updating my resume. I thought LinkedIn was enough but I needed to generate PDF after any update is done. I also needed to store the information in one location separate with any styles and layout. Hosting my resume is one main thing, so that I could just send anyone a link, no need for me to compose an email and attach a pdf.

View my resume here:
[resume.monnoval.com](http://resume.monnoval.com)

## Installation

 1. Fork this project
 2. Modify `data/resume.yml` to be your resume.
 3. Edit source/assets/* to make your resume look prettier.
 4. Install the gems. The easiest way to do this is `gem install bundler && bundle install`
 5. type `middleman` to run locally.
 6. To deploy to [github pages](https://pages.github.com/), run `rake build` then `rake publish`. For more info, you can refer at [middleman-gh-pages](https://github.com/neo/middleman-gh-pages)

## TODOs

- Automatic PDF generation
- Have a simpler one column theme
- Support for [h-resume microformat](http://microformats.org/wiki/h-resume)
- List all projects inspired by this

## License

data/resume.yml is property of Mon Noval. You are welcome to use it as a base structure for your resume, but don't forget, you are not him.

The rest of the code is under [Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/). Remember sharing is caring.
