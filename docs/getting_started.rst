.. highlight:: shell

***************
Getting started
***************

Run it locally
==============

This is the ideal way, since you will have everything you need
in your  day to day student life installed on your computer and
all your data will persist.

Install python
^^^^^^^^^^^^^^

Anaconda
--------

Anaconda is our recommendation to install python on all operating systems,
since it comes with most needed packages prebundled (batteries included).
Another bonus is that ``conda`` isn't just a python package manager like
``pip``, but a package manager for multiple resources
(i.e. `node.js`_ or `latex`_) and also an `environment`_ manager.
Yet another bonus of ``conda`` is that it has a build pipeline in place,
which allows to install all packages from binary (no compiling needed from
your side, which at times can be pretty time consuming).
Download the installer from the official website of  `Anaconda`_, follow
the instructions and you will be good to go.

.. note::
    If you are using a Posix system (Linux/OsX) you don't want to mess
    with the system python, since many system tools rely on it,
    and in a worse case scenario you could break your Os.

Using Anaconda only if needed
"""""""""""""""""""""""""""""

Depending on other software you run on your computer, which depends on
the installed system python version (i.e. QtiPlot), you may not want to use
Anaconda as your default python or add it to the `PATH`_ variable,
since this might cause conflicts and/or break that software.

**Posix like Shells:**

Users of a Posix like terminal (i.e. ``bash``), can simply add
the following function to their shell configuration file
(i.e. ``~/.bashrc``/``~/.bash_profile``)

.. code-block:: shell

    ANACONDA_BIN_DIR=<anaconda-install-folder>/bin
    use_conda(){
        export PATH="$ANACONDA_BIN_DIR:$PATH"
    }

**CMD on Windows:**

If you are working on Windows and for some reason want to use CMD as your terminal,
you can create a batch script ``use_conda.bat`` in a folder which is part of the PATH variable i.e.
``C:\Windows`` (this needs Admin rights and allows autocomplete).

.. code-block:: batch

    @echo off
    SET ANACONDA_INSTALL_DIR=<anaconda-install-folder>
    SET CONDA_PATHS=%ANACONDA_INSTALL_DIR%
    SET CONDA_PATHS=%ANACONDA_INSTALL_DIR%\Library\mingw-w64\bin;%CONDA_PATHS%
    SET CONDA_PATHS=%ANACONDA_INSTALL_DIR%\Library\usr\bin;%CONDA_PATHS%
    SET CONDA_PATHS=%ANACONDA_INSTALL_DIR%\Library\bin;%CONDA_PATHS%
    SET CONDA_PATHS=%ANACONDA_INSTALL_DIR%\Scripts;%CONDA_PATHS%
    SET PATH=%CONDA_PATHS%;%PATH%


This will temporarily adds the conda paths to the open terminal and
allows you to simply call ``use_conda``/``use_conda.bat`` (which in both cases
autocompletes), when you want to use conda.
When you open a new terminal, it won't know about conda and work as it normally does.

.. note::
    For this to work you need to replace ``<anaconda-install-folder>``,
    with the actual path you installed Anaconda to.

.. note::
    If you use the other software more sparsely than the conda python,
    you could of course, just turn this approach around and prepend
    the path to the system python to the ``PATH`` variable,
    when you don't want to use conda.

Pure CPython
^^^^^^^^^^^^

If you don't want to install conda, this `Python installation guide`_ can guide
you through the process of getting the pure CPython Interpreter.

.. _Python installation guide: https://docs.python-guide.org/starting/installation/
.. _Anaconda: https://www.anaconda.com/distribution/
.. _node.js: https://nodejs.org/en/
.. _latex: https://www.latex-project.org/
.. _environment: https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html
.. _PATH: https://en.wikipedia.org/wiki/PATH_(variable)


Get the project
---------------

The sources for python-tools-for-students can be downloaded from the
`Github repo`_.

You can either clone the public repository:

.. code-block:: console

    $ git clone git://github.com/students-teach-students/python-tools-for-students

.. note::
    This should be the preferred way since you can easily update the files by running ``$ git pull``
    and won't clutter your download folder with incremental tarballs.

Or download the `tarball`_:

.. code-block:: console

    $ curl -OJL https://github.com/students-teach-students/python-tools-for-students/tarball/master

Once you have a copy of the source,
you need to install the dependencies install it with:

.. code-block:: console

    $ pip install -r requirements.txt


.. _Github repo: https://github.com/students-teach-students/python-tools-for-students
.. _tarball: https://github.com/students-teach-students/python-tools-for-students/tarball/master

Start jupyter lab
-----------------

Once you have everything up and running you just need to open a terminal in the
project folder (or its ``material`` subfolder) and run the following command:

.. code-block:: console

    $ jupyter lab

After that jupyter lab will open a new tab in you default browser and
you can start exploring.

.. note::
    For Windows users we recommend to use `Git bash`_ to start ``jupyter lab``,
    since ``CMD`` and ``Powershell`` might not support all system calls we showcase.

.. _Git bash: https://git-scm.com/downloads

Trouble shooting
----------------

If a new notebook isn't working, it might be that added new requirements,
just try installing them by running this command in your terminal:

.. code-block:: console

    $ pip install -r requirements.txt

Run it in the cloud
===================

If you don't want to install python and just play around a
bit with the notebooks, you can always just run in our online
demo at `mybinder.org`_.

.. warning::
    The binder session expires after 10 minutes inactivity and you will loose all
    your progress if you didn't download the files you edited/created.

.. _mybinder.org: https://mybinder.org/v2/gh/students-teach-students/python-tools-for-students/master?urlpath=lab/tree/material

