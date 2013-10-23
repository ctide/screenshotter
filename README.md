# Screenshotter

Really simple utility to take a screenshot of a given web page at 3 different widths, right now it's just 640 / 1024 / 1600 pixels width and it will capture the full height of the page.

Currently requires firefox to be installed, but I'll probably add support for chrome driver and the other selenium drivers at some point.

## Installation

Install it as:

    $ gem install screenshotter

## Usage

```
screenshotter <url>
```

Will produce 3 files in the current directory:

```
<url>-640.png
<url>-1024.png
<url>-1600.png
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
