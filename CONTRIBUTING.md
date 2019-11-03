# Contributing

Contributions are welcome, and they are greatly appreciated! Every
little bit helps, and credit will always be given.

You can contribute in many ways:

## Types of Contributions

### Report Errors

Report errors at https://github.com/students-teach-students/python-tools-for-students/issues.

If you are reporting an error, please include:

- Any details about your local setup that might be helpful in troubleshooting.
- Detailed steps to reproduce the bug.

### Fix Bugs

Look through the GitHub issues for bugs. Anything tagged with "bug"
and "help wanted" is open to whoever wants to implement it.
You might also encounter typos, spelling and grammar errors, we appreciate all help,
we can get, to make this the best learning experience possible, so don't be shy and contribute. :)

### Implement Topics

Look through the GitHub issues for features. Anything tagged with "enhancement"
and "help wanted" is open to whoever wants to implement it.
Tell us that you are working on this topic, so the same work won't be done by
two people at the same time.
Of course if someone is already working on a topic you can always offer your help.

### Write `TL;DR`'s or Examples

We will leave the writing of `TL;DR`'s and examples mostly to the community,
since this is the perfect opportunity, for you to get involved.
Not only is it a great start to work with git on an open source project,
it will also help you to amplify your understanding of the tools we are teaching you.
If you are writing examples make sure that they are documented (markdown cells)
and explain what/why it is being done.
Also make sure that the example you are using isn't so specific to your field of studying,
that others will have problems understanding

### Submit Feedback

The best way to send feedback is to file an issue at https://github.com/students-teach-students/python-tools-for-students/issues.

If you are proposing a topic:

- Explain in detail what you would want to learn and why it should be included.
- Keep the scope as narrow as possible and add an example, to make it easier to implement.
- Remember that this is a volunteer-driven project, and that contributions
  are welcome :)

## Structure of the project

If you don't know which number the chapter you want to work on should have,
have a look at issue [#3](https://github.com/students-teach-students/python-tools-for-students/issues/3),
where the structuring of the course is discussed.

To make navigating through the material consistent and also give new (and old) contributors a good starting point
on how to organize and name files and folders, the following structure was proposed in
issue [#9](https://github.com/students-teach-students/python-tools-for-students/issues/9):

```
Repository-root
|-- material
    |-- <chapter_nr>_<chapter_name>
        |-- data
        |-- images
        |-- <chapter_nr>_<chapter_name>.ipynb
        |-- TL_DR.md
        |-- additional_materials.md
        |-- code_snippets.md
        |-- Examples
            |-- data
                |-- <data_description>-example1.txt
                |-- ...
            |-- example1.ipynb
            |-- ...
    |-- cheat_sheets.md
    |-- tutorials.md
|-- docs
    |-- material
        |-- <chapter_nr>_<chapter_name>
           |-- <chapter_nr>_<chapter_name>.nblink
    |-- examples
        |-- <chapter_nr>_<chapter_name>
           |-- example1.nblink

```

## Getting Started!

Ready to contribute? Here's how to set up `python-tools-for-students` for local development.

1. Fork the `python-tools-for-students` repo on GitHub.
2. Clone your fork locally:

   `$ git clone git@github.com:your_name_here/python-tools-for-students.git`

3. Create a branch for local development:

   `$ git checkout -b name-of-your-bugfix-or-feature`

   Now you can make your changes locally.

4. Install all required libraries:

   `$ pip install -r requirements_dev.txt`

5. Start `jupyter lab` in the folder of your local copy and write the changes you want.

6. Make sure all tests pass:

   `$ tox`

7. Commit your changes and push your branch to GitHub:

   `$ git add .`

   `$ git commit -m "Your detailed description of your changes."`

   `$ git push origin name-of-your-bugfix-or-feature`

8. Submit a pull request through the GitHub website.

## Testing

To make sure that all our notebooks are working properly and
have a uniform code style, we test them with:

- [`tox`](https://tox.readthedocs.io/en/latest/)
- [`pytest`](https://pytest.org/en/latest/)
- [`nbval`](https://github.com/computationalmodelling/nbval)
- [`flake8-nb`](https://flake8-nb.readthedocs.io)

### nbval

In some cases the output might depend on the operating system/current time or you want to
showcase an `Exception`, in those cases you can use `Tags` (meta information)
to mark a cell for `nbval` to change its testing behavior.
For more information have a look at
`nbval`'s documentation
[Avoid output comparison for specific cells
](https://nbval.readthedocs.io/en/latest/index.html#Avoid-output-comparison-for-specific-cells)
and
[Using tags instead of comments](https://nbval.readthedocs.io/en/latest/index.html#Using-tags-instead-of-comments)
.

### flake8-nb

As for `nbval` we also encourage to use
[cell tags](https://flake8-nb.readthedocs.io/en/latest/usage.html#cell-tags)
to configure the reported code style violations of `flake8-nb`.
Please only use the scarcely and when absolutely needed,
i.e. if you have a cell with different language code or if you want to showcase
bad code.

## Add your changes to the docs

### Adding notebooks

Notebooks are included in the docs using
[`nbsphinx`](https://nbsphinx.readthedocs.io/)
and
[`nbsphinx-link`](https://github.com/vidartf/nbsphinx-link).
In order to add a notebook to the docs, you need to create a `*.nblink`
file in the appropriate folder in the docs and add its path to
`docs/material.rst`/`docs/examples.rst`.
If your notebooks contain extra media like images,
you need to add them as `extra-media` entry in the `*.nblink` file.

### Adding markdown files

Markdown files are included in the docs using
[`recommonmark`](https://recommonmark.readthedocs.io/).
Sadly `recommonmark` does not recognize files outside of the docs
root folder (`docs`). Not to copy files and maintain two versions,
the best solution is to use `symbolic links` inside the `docs` folder
which point to the `materials` folder.
In order for this to work for all operating systems, you should add
a new line to `docs/refresh_symlinks.sh`,
and run it to create a `symbolic links` in the `docs` folder.
After that you should add the symlink to `.gitattributes` as `symlink=file`.
After that you can include it in any `*.rst` file as you would normally.

### Building the docs

To build the documentation, open a terminal, navigate to the `docs` folder and run `make html`. This will create the documentation inside the folder `docs/_build/html`.

**Note:**

If you are on Windows the `git bash` doesn't come with `make`
builtin, but by following
[this guide](https://gist.github.com/evanwill/0207876c3243bbb6863e65ec5dc3f058#make)
you can add it.

## Pull Request Guidelines

Before you submit a pull request, check that it meets these guidelines:

- Respect our folder structure, since this guarantees a consistent and easy to navigate experience for everyone.
- Make sure that the notebooks work, when running `Restart Kernel and Run All ...` and the tests pass.
- If your code needs a 3rd party library to work and it is not yet present in the `requirements.txt`,
  please add it with a minimum version (i.e.:&nbsp;`package_name>=1.0.0`).
- Add your changes to the docs and make sure that they render properly.
- Add yourself as contributor in `docs/authors.rst`.
