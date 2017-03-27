# Sensel Documentation

The [Sensel Documentation](http://guide.sensel.com) is made using the [mkdocs](http://www.mkdocs.org/#installation) framework. It's a great framework for writing documentation in markdown then rendering it into HTML for the web. There are various themes available for customizing the look and feel. We are using a fork of mkdocs-material theme for these documents, which provides a Google material-like layout that is responsive and attractive. 

If you find an error or improvement, feel free to log an issue or clone, correct, and make a pull-request on this repo. 

## Modify and Edit

Make sure you have [mkdocs installed](http://www.mkdocs.org/#installation).

Clone the repo for these docs:
```
git clone https://github.com/sensel/morph-docs.git
```
The `mkdocs.yml` provides values for many of the parameters for building the docs. More info is in the [mkdocs documentation](http://www.mkdocs.org/#getting-started). 

The `material-sensel` folder contains the theme documents for the site's layout and appearance.

The `docs` folder has all the markdown files and images that populate the content of the documentation. This is where all of the editing and changes happen. If you want to see the changes in a browser preview, you can run 

```
mkdocs serve
```

from the root of this repo.

The only files you need to edit are the `mkdocs.yml` file and files in the `docs` folder.

## Theme

To modify the theme, you could just modify the files in the `material-sensel` folder in the morph-docs repo. This will quickly run into difficulty, since many of the parts are minified. The best way to modify the theme is to clone the Sensel fork of the material theme:

```
git clone https://github.com/sensel/mkdocs-material.git
cd mkdocs-material
pip install -r requirements.txt
yarn install
```

Use `yarn start` to preview the documentation in a browser as you modify the files in the `src` folder to satisfaction. There is no need to edit anything outside of the `src` directory.

You can then render the final theme files to the `material` folder using the command:

```
yarn run build
```

Read the [mkdocs-material documenation](http://squidfunk.github.io/mkdocs-material/customization/#environment-setup) for more info.

## Publish

### 1.) Update Theme (if modified)

If the sensel `material` theme has been modified you'll need to update the contents of the morph-docs repo's `material-sensel` directory with the new theme contents. If you have the docs and theme folders in the same directory, like so:

```
├─ sensel-repos/
│  ├─ morph-docs/
│  ├─ mkdocs-material/   
```

You can use rsync to update the morph-docs with the current theme files from the `sensel-repos` folder:

```
rsync -avzur \
mkdocs-material/material/* \
morph-docs/material-sensel
```
### 2.) Publish Docs

__NOTE:__ This is documented for Sensel's sake - it's not something that needs to be done by the generous user who is making a pull-request for a fix or addition to the docs!

Once changes have been made to the documentation, from the root of this repo, run
```
mkdocs build
```

then 

```
mkdocs gh-deploy
```

to publish and update the live documentation. 