.. highlight:: shell

===============
Getting started
===============

Run it locally
--------------

This is the ideal way, since you will have everything you need
in you day to day student life installed on you computer.

Install python
^^^^^^^^^^^^^^

Anaconda
""""""""
Anaconda is our the recommended on all operating systems

Pure CPython
""""""""""""

If you don't have `pip`_ installed, this `Python installation guide`_ can guide
you through the process.

.. _pip:  https://pip.pypa.io/en/stable/
.. _Python installation guide: https://docs.python-guide.org/starting/installation/
.. _Anaconda: https://www.anaconda.com/distribution/


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

