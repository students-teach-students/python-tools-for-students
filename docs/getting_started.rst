.. highlight:: shell

===============
Getting started
===============

Run it locally
--------------

This is the ideal way, since you will have everything you need
in you day to day student life installed on you computer and
all your data will persist.

Install python
^^^^^^^^^^^^^^

Anaconda
""""""""
Anaconda is our recommended to install python on all operating systems,
since it comes with most needed packages prebundled (batteries included).
Another bonus is that ``conda`` isn't just a python package manager like
``pip``, but a package manager for multiple resources
(i.e. `node.js`_ or `latex`_) and also an `environment`_ manager.
Yet another bonus of ``conda`` is that is has a build pipeline in place,
which allows to install all packages from binary (no compiling needed from
your side, which at times can be pretty time consuming).
Download the installer from the official website of  `Anaconda`_, follow
the instructions and you will be good to go.

.. note::
    If you are using a Posix system (Linux/OsX) you don't want to mess
    with the system python, since many system tools rely on it,
    and in a worse case scenario you could break your Os.

Pure CPython
""""""""""""


If you don't want to install conda, this `Python installation guide`_ can guide
you through the process tof getting the pure CPython Interpreter.

.. _Python installation guide: https://docs.python-guide.org/starting/installation/
.. _Anaconda: https://www.anaconda.com/distribution/
.. _node.js: https://nodejs.org/en/
.. _latex: https://www.latex-project.org/
.. _environment: https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html


Get the project
^^^^^^^^^^^^^^^

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
^^^^^^^^^^^^^^^^^

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
^^^^^^^^^^^^^^^^

If a new notebook isn't working, it might be that added new requirements,
just try installing them by running this command in your terminal:

.. code-block:: console

    $ pip install -r requirements.txt

Run it in the cloud
-------------------

If you don't want to install python and just play around a
bit with the notebooks, you can always just run in our online
demo at `mybinder.org`_.

.. warning::
    The binder session expires after 10 minutes inactivity and you will loose all
    your progress if you didn't download the files you edited/created.

.. _mybinder.org: https://mybinder.org/v2/gh/students-teach-students/python-tools-for-students/master?urlpath=lab/tree/material

