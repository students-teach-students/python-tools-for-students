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
we can get to make this the best learning experience possible, so don't be shy and contribute. :)

### Implement Topics

Look through the GitHub issues for features. Anything tagged with "enhancement"
and "help wanted" is open to whoever wants to implement it.

### Write `TL;DR`'s or Examples

We will leave the writing of `TL;DR`'s and examples mostly to the community,
since this is the perfect opportunity, for you to get involved. Not only is it a great start
to work with git on an open source project, it will also help you to amplify the understanding
of the tools we are teaching you.

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
where the structuring of course is discussed.

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
        |-- Examples
            |-- data
            |-- example1.ipynb
            |-- ...
    |-- cheat_sheets.md
    |-- tutorials.md
    |-- code_snippets.md
```

## Get Started!

Ready to contribute? Here's how to set up `python-tools-for-students` for local development.

1. Fork the `python-tools-for-students` repo on GitHub.
2. Clone your fork locally:

   `$ git clone git@github.com:your_name_here/python-tools-for-students.git`

3) Create a branch for local development:

   `$ git checkout -b name-of-your-bugfix-or-feature`

   Now you can make your changes locally.

4) Install all required libraries:

   `$ pip install -r requirements_dev.txt`

5) Start `jupyter lab` in the folder of your local copy and write the changes you want.

6) Make sure all tests pass:

   `$ tox`

7) Commit your changes and push your branch to GitHub:

   `$ git add .`

   `$ git commit -m "Your detailed description of your changes."`

   `$ git push origin name-of-your-bugfix-or-feature`

8) Submit a pull request through the GitHub website.

### Testing

To make sure that all our notebooks are working properly we test them with
[`tox`](https://tox.readthedocs.io/en/latest/),
[`pytest`](https://pytest.org/en/latest/) and
[`nbval`](https://github.com/computationalmodelling/nbval).
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

### Pull Request Guidelines

Before you submit a pull request, check that it meets these guidelines:

- Respect our folder structure, since this guarantees a consistent and easy to navigate experience for everyone.
- Make sure that the notebooks work, when running `Restart Kernel and Run All ...` and the tests pass.
- If your code needs a 3rd party library to work and it is not yet present in the `requirements.txt`,
  please add it with a minimum version (i.e.:&nbsp;`package_name>=1.0.0`)
