# Mon's Resume

I love updating my resume. I thought LinkedIn was enough but I needed to generate PDF after any update is done. I also needed to store the information in one location separate with any styles and layout. Hosting my resume is one main thing, so that I could just send anyone a link, no need for me to compose an email and attach a pdf.

## Preview

View my resume here:
[resume.monnoval.com](http://resume.monnoval.com)

## Features

- Resume information is in data/resume.yml
- Run using [Middleman](http://middlemanapp.com)
- Deploy to github with using [Middleman GH Pages](https://github.com/neo/middleman-gh-pages)
- Automatic PDF generation using [wkhtmltopdf](http://wkhtmltopdf.org)
- Responsive layout

## Installation

 1. Fork this project
 2. Modify `data/resume.yml` to be your resume.
 3. Edit source/assets/* to make your resume look prettier.
 4. Install the gems. The easiest way to do this is `gem install bundler && bundle install`
 5. Type `middleman` to run locally.
 6. To deploy to [github pages](https://pages.github.com/), run `rake build` then `rake publish`. For more info, you can refer at [middleman-gh-pages](https://github.com/neo/middleman-gh-pages)

## TODOs

- Have a simpler one column theme
- Support for [h-resume microformat](http://microformats.org/wiki/h-resume)
- Support for old browsers (IE7, IE8)
- Social icons for twitter, linkedin, github, emaillayout
- Step by step guide using [bootstro.js](http://clu3.github.io/bootstro.js) or [trip.js](http://eragonj.github.io/Trip.js/) or [intro.js](http://usablica.github.io/intro.js)
- Landing intro before they looking at the resume. Hmmm this needs some thinking

## Credits

This resume was inspired by the following projects:

- [ResumeMan by Fabien Piuzzi](https://github.com/reefab/ResumeMan)
- [Harper's Resume](https://github.com/harperreed/resume)
- [Ming-Ho's Resume](https://github.com/mhyee/resume)
- [Dan Mayer's Resume](https://github.com/danmayer/Resume)

## License

data/resume.yml is property of Mon Noval. You are welcome to use it as a base structure for your resume, but don't forget, you are not him.

The rest of the code is under [Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/). Remember sharing is caring.
