# Sensel Documentation

The [Sensel Documentation](http://guide.sensel.com) is made using the [mkdocs](http://www.mkdocs.org/#installation) framework. It's a great framework for writing documentation in markdown then rendering it into HTML for the web. There are various themes available for customizing the look and feel. We are using a fork of mkdocs-material theme for these documents, which provides a Google material-like layout that is responsive and attractive.

If you find an error or improvement, feel free to [log an issue](https://github.com/sensel/morph-docs/issues). Even better, you can clone, correct, and [make a pull-request](https://github.com/sensel/morph-docs/pulls) on this repo.

If you are not familiar with formatting text in "markdown", [here is a good cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).

## What's In This Repo

* __docs__ - markdown files and images that make the documentation
* __overrides__ - override css and partial html files, generated from `mkdocs-material` theme
* __mkdocs.yml__ - configuration file for generating the documentation site

## Modify and Edit

Make sure you have [mkdocs installed](http://www.mkdocs.org/#installation). This uses version 1.0 or greater.

Clone the repo for these docs:
```
git clone https://github.com/sensel/morph-docs.git
```
The `mkdocs.yml` provides values for many of the parameters for building the docs. More info is in the [mkdocs documentation](http://www.mkdocs.org/#getting-started).

The `docs` folder has all the markdown files and images that populate the content of the documentation. This is where all of the editing and changes happen. If you want to see the changes in a browser preview, you can run

```
mkdocs serve
```

from the root of this repo.

The only files you need to edit are the `mkdocs.yml` file and files in the `docs` folder.

## Theme

To modify the theme, you can just modify the files in the `overrides` folder in the morph-docs repo. Simple changes to css and layout can be quickly accomplished.

Read the [mkdocs-material documenation](https://squidfunk.github.io/mkdocs-material/getting-started/) for more info.

## Publish Documentation

__NOTE:__ This is documented for Sensel - it's not something that needs to be done by the generous user who is making a pull-request for a fix or addition to the docs!

### 1.) Update Docs (if modified)

Make changes to the markdown (.md) files in docs/ and add any images you need. Preview your changes locally with

```
mkdocs serve
```

and visit [the local page](http://localhost:8000) in your browser.

### 2.) Publish Docs

Once changes have been made to the documentation, from the root of this repo, run
```
mkdocs build
```

then

```
mkdocs gh-deploy
```

to publish and update the live documentation.

## Addendum: API Documentation.

This is more for Sensel's internal use. There are no secrets here, but it's not something germane to the github public. However, this is a good place to document things, so here goes.

Documentation for the raw API calls is generated using headerdoc. This pulls documentation from the source code, and converts it to html. The html files can be minimally processed with a shell script, resulting in files that can be included in the published guide.

First, generate html from the `sensel.h` and `sensel_decompress.h` files into the directory `sensel-html`:

```
headerdoc2html -o sensel-html sensel.h sensel_decompress.h
cd sensel-html
gatherheaderdoc .
```

Now, copy the `clean_headerdoc.sh` from this repo into the `sensel-html` directory. You can now run

```
./clean_headerdoc.sh sensel_h/index.html ./sensel_h.html
./clean_headerdoc.sh sensel_decompress_h/index.html ./sensel_decompress_h.html
```

to remove everything that's not in `<body></body>` and clean up the html a bit.

You are now ready to move the `sensel_decompress_h.html` and `sensel_h.html` files
